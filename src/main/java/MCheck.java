import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

public class MCheck extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String emailto = req.getParameter("emailto");
        String login = req.getParameter("login1");
        String password = req.getParameter("password1");
        String subject = req.getParameter("subject");
        String text = req.getParameter("text");
            SendEmail(text, emailto, subject, login, password);

        resp.setContentType("text/html");
        resp.getWriter().println("Message has been sent " + emailto +
                 "<br>"+"You can send another message <a href = \"Mail.jsp\">New message</a>" + "\n");
    }

    private void SendEmail(String text, String emailto, String subject, String login, String password) {
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", login);

       }


    }
