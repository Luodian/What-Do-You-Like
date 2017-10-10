package Action;

import Database.FetchData;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ShowAllBookAction extends ActionSupport {
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
            ArrayList<BookItem> book_list_sql = down.SearchAllBooks();
            this.setBookList(book_list_sql);
            return SUCCESS;
        }
        catch (Exception e)
        {
            context.put("err_info", e.getMessage());
            stack.push(context);
            return ERROR;
        }
    }
}
