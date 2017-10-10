package Action;

import Database.FetchData;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import javafx.application.Application;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SearchBooksByAuthor extends ActionSupport
{
    private String name;
    private ArrayList<BookItem> bookList;

    public void setBookList(ArrayList<BookItem> thisBook)
    {
        bookList = thisBook;
    }

    public ArrayList<BookItem> getBookList()
    {
        return bookList;
    }

    public String execute() throws Exception
    {
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map<String, String> context = new HashMap<>();
        try
        {
            FetchData down = new FetchData();
            ArrayList<BookItem> book_list_sql = down.SearchBooksByAuthorName(name);
            if (book_list_sql.size() != 0)
            {
                this.setBookList(book_list_sql);
                return SUCCESS;
            }
            else
            {
                book_list_sql = down.SearchBooksByAuthorNameUseLike(name);
                this.setBookList(book_list_sql);
                return "UseLikeSql";
            }
        }
        catch (Exception e)
        {
            context.put("err_info", e.getMessage());
            stack.push(context);
            return ERROR;
        }
    }
    public String getName() {
        return name;
    }

    public void setName(String search) {
        this.name = search;
    }
}
