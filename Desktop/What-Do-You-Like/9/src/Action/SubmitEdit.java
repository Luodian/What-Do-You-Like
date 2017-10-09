package Action;

import Database.FetchData;
import Database.UploadData;
import Model.AuthorItem;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SubmitEdit extends ActionSupport
{
    public BookItem book;
    public AuthorItem author;
    public String ISBN;

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
            else if (ids.size() == 1)
            {
                int id = ids.get(0);
                upInstance.EditBookInfo(book,book.ISBN);
                return SUCCESS;
            }
            return ERROR;
        }
        catch (Exception e)
        {
            context.put("err_info", e.getMessage());
            stack.push(context);
            return ERROR;
        }
    }
}
