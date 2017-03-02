import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Lizzi on 06.02.2017.
 */
public class Reverse  extends HttpServlet {



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String pass=request.getParameter("pas1");
        String log=request.getParameter("login1");
        if (log==""){
            response.sendError(400, "Login is empty");
        }
 else if (pass.equals("pony")){
        String rev="Good " +log+",  password is correct.";

        out.println("<h1> "+ rev +"</h1>");}
        else response.sendError(400, "Invalid password ="+ pass);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}