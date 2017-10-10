package ResultType;

import org.apache.struts2.result.ServletActionRedirectResult;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyResultType extends ServletActionRedirectResult
{
    private String msg;

    @Override
    protected void sendRedirect(HttpServletResponse response,
                                String finalLocation) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script>alert('"+msg+"');location.href='" + getLocation() + "'</script>");
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
}
