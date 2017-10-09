package Action;

import Database.FetchData;
import Database.UploadData;
import Model.AuthorItem;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.HashMap;
import java.util.Map;

public class EditBookInfo extends ActionSupport {
    public AuthorItem author;
    public BookItem book;
    public String ISBN;

    public AuthorItem getAuthor() {
        return author;
    }
    public void setAuthor(AuthorItem author) {
        this.author = author;
    }
    public BookItem getBooks() {
        return book;
    }
    public void setBooks(BookItem books) {
        this.book = books;
    }

    @Override
    public String execute(){
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map context = new HashMap();
        try {
            FetchData down = new FetchData();
            //System.out.println(books.getTitle());
            setBooks(down.SearchBooksByISBN(ISBN));
            setAuthor(down.SearchAuthorByID(book.AuthorID));
            return SUCCESS;
        } catch (Exception e) {
            context.put("err_info", new String(e.getMessage()));
            stack.push(context);
            return ERROR;
        }
    }
}
