package Action;

import Database.FetchData;
import Database.UploadData;
import Model.AuthorItem;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class AddBook extends ActionSupport
{
    public BookItem book;
    public AuthorItem author;
    public ArrayList<AuthorItem> authorList;
    public AuthorItem item;

    public void setItem(AuthorItem item)
    {
        this.item = item;
    }

    public AuthorItem getItem()
    {
        return item;
    }

    public void setAuthorList(ArrayList<AuthorItem> au)
    {
        this.authorList = au;
    }

    public ArrayList<AuthorItem> getAuthorList()
    {
        return authorList;
    }

    public void setAuthor(AuthorItem author)
    {
        this.author = author;
    }

    public AuthorItem getAuthor() {
        return author;
    }

    public void setBook(BookItem book)
    {
        this.book = book;
    }

    public BookItem getBook()
    {
        return book;
    }

    public String execute() throws Exception
    {
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map<String, String> context = new HashMap<>();
        try
        {
            FetchData fetchInstance = new FetchData();
            UploadData upInstance = new UploadData();
            ArrayList<Integer> ids = fetchInstance.findIDByName(book.Author);
            if (ids.size() == 0)
            {
                return "NOAUTHOR";
            }
            //已经存在，需要让用户确认。
            else if (ids.size() == 1)
            {
                ArrayList<AuthorItem> au = new ArrayList<>();
                for (int i = 0; i < ids.size(); ++i)
                {
                    int id = ids.get(i);
                    AuthorItem newItem = fetchInstance.SearchAuthorByID(id);
                    au.add(newItem);
                }
                setItem(au.get(0));
                setAuthorList(au);
                return "VERIFYAUTHOR";
            }
            else
            {
                ArrayList<AuthorItem> au = new ArrayList<>();
                for (int i = 0; i < ids.size(); ++i)
                {
                    int id = ids.get(i);
                    AuthorItem item = fetchInstance.SearchAuthorByID(id);
                    au.add(item);
                }
                setAuthorList(au);
                return "CHOOSEAUTHOR";
            }
        }
        catch (Exception e)
        {
            context.put("err_info", e.getMessage());
            stack.push(context);
            return ERROR;
        }
    }
}
