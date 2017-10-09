package Action;

import Database.FetchData;
import Model.AuthorItem;
import Model.BookItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ShowAllAuthorAction extends ActionSupport {
    public ArrayList<AuthorItem> authorList;

    public void setAuthorList(ArrayList<AuthorItem> authorList)
    {
        this.authorList = authorList;
    }

    public ArrayList<AuthorItem> getBookList()
    {
        return authorList;
    }

    public String execute() throws Exception
    {
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map<String, String> context = new HashMap<>();
        try
        {
            FetchData down = new FetchData();
            ArrayList<AuthorItem> auList = down.SearchAllAuthor();
            this.setAuthorList(auList);
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