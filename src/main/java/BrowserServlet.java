/**
 * Created by Lizzi on 27.02.2017.
 */


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class BrowserServlet extends HttpServlet {
/*public String browserfinder(String script){
    String browser="";
    return browser;

}*/


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        BufferedReader reader = request.getReader();
        String rev=reader.readLine();
//rev=browserfinder(rev);
        out.println("<h1 class=blue> " +"Today is: "+new Date(System.currentTimeMillis()));
              out.println(  "\n Your browser is :"+ rev +"</h1>");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}