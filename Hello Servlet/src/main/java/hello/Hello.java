package hello;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */
@WebServlet("/Hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Importação CTRL+SHIFT+O
		PrintWriter out = response.getWriter();
		out.println("<!Doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Hello Servlet </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Hello Servlet </h1>");
		out.println("<p> Bruno Henrique </p>");
		out.println("</body>");
		out.println("</html>");
	}

}
