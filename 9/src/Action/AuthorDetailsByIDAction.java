package Action;

import Database.FetchData;
import Model.AuthorItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.HashMap;
import java.util.Map;

public class AuthorDetailsByIDAction extends ActionSupport{
    public int AuthorID;
    public AuthorItem Author;
    public AuthorItem getAuthor() {
        return Author;
    }
    public void setAuthor(AuthorItem author) {
        this.Author = author;
    }

    public int getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(int authorID) {
        AuthorID = authorID;
    }

    @Override
    public String execute(){
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map<String, String> context = new HashMap<>();
        try {
            FetchData down = new FetchData();
            setAuthor(down.SearchAuthorByID(AuthorID));
            if (Author.AuthorID == 0)
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
