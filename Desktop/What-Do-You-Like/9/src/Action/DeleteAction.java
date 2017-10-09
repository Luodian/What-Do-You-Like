package Action;

import java.util.HashMap;
import java.util.Map;

import Database.FetchData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class DeleteAction extends ActionSupport{
    public String ISBN;

    @Override
    public String execute(){
        ValueStack stack = ActionContext.getContext().getValueStack();
        Map context = new HashMap();
        try
        {
            FetchData down = new FetchData();
            if(down.deleteBook(getISBN()))
            {
                return SUCCESS;
            }
        }
        catch (Exception e)
        {
            context.put("err_info", new String(e.getMessage()));
            stack.push(context);
        }
        return ERROR;
    }
    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }

}
