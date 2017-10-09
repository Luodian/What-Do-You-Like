package Action;

import Database.FetchData;
import Model.AuthorItem;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.HashMap;
import java.util.Map;

public class AuthorDetailsAction extends ActionSupport{
    public String ISBN;
    public AuthorItem author;
    public BookItem book;
    public String getISBN() {
        return ISBN;
    }
    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }
    public AuthorItem getAuthor() {
        return author;
    }
    public void setAuthor(AuthorItem author) {
        this.author = author;
    }
    public BookItem getBooks() {
        return book;
    }
    public void setBooks(BookItem book) {
        this.book = book;
    }

    @Override
    public String execute(){
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map<String, String> context = new HashMap<>();
        try {
            FetchData down = new FetchData();
            setBooks(down.SearchBooksByISBN(ISBN));
            setAuthor(down.SearchAuthorByID(book.AuthorID));
            if (book.ISBN == null)
            {
                return "nobook";
            }
            return SUCCESS;
        } catch (Exception e)
        {
            context.put("err_info", e.getMessage());
            stack.push(context);
            return ERROR;
        }
    }
}
