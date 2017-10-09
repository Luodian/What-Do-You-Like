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

public class AddBookAuthor extends ActionSupport
{
    public BookItem book;
    public AuthorItem author;

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
            author.Name = book.Author;
            UploadData upInstance = new UploadData();
            author.AuthorID = upInstance.UploadNewAuthor(author);
            upInstance.UploadNewBook(author.AuthorID,book);
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
