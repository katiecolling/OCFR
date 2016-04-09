package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbHelpers.UserHelper;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String url;
	private int attempts;
	private String message;
	private HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//create userhelper object
		UserHelper uh = new UserHelper("fillThisIn", "root", "1981");
		//initialize session
		session = request.getSession();
		if(session.getAttribute("attempts")==null){
			attempts = 0;
		}
		//check login attempts
		if(attempts > 2){
			message = "Error: Number of Login Attempts Exceeded";
			request.setAttribute("message", message);
			url = "index.jsp";
		}
		else{
		//initialize form username and password
		  String username = request.getParameter("username");
		  String password = request.getParameter("password");
		  
		//validate username and password
		  if(uh.symbolChecker(username)==false || uh.symbolChecker(password)==false){
			  url = "index.jsp";
			  message = "Error: Use of unaccepted symbols";
		  }
		  
		 //Use the user helper class to see if username and password match any records in the DB
		 //If match, user becomes the authenticated username and password
		 //If no match, user is null
		User user = uh.authenticateUser(username, password);
		if(user != null){
			session.invalidate();
			session = request.getSession(true);
			session.setAttribute("user", user);
			url = "home.jsp";
		}
		else{
			//send it back to login with message if false, move it to home if true
			message = "Error: There is no record of that username and password. /nPlease Try Again!";
			request.setAttribute("message", message);
			url = "index.jsp";
			
			attempts++;
			session.setAttribute("attempts", attempts);
		}
		
		//Move all of the information to the destined url
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

		}
	}

}
