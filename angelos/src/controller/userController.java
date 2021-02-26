package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class userController
 */
@WebServlet("/userController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		
		try {
			switch (action) {
			case "registrar":
				register(request,response);
				break;
			case "ingresar":
				login(request,response);
				break;
			case "salir":
				logout(request,response);
				break;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	//METHODS
	private void register(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{

		try {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String passwordConfirm = request.getParameter("passwordConfirm");
			String picture = "nopicture";
			String status = "active";
			String type = "customer";
			
			if(password.equals(passwordConfirm)) {
				User user = new User();
				
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setEmail(email);
				user.setPassword(password);
				user.setPicture(picture);
				user.setStatus(status);
				user.setType(type);
				
				if(UserDao.register(user)) {
					request.setAttribute("success_message", "Usuario creado con éxito. ¡Bienvenido!");
				}else {
					request.setAttribute("error_message", "Hubo un error y el usuario no pudo ser creado.");
				}

				request.getRequestDispatcher("login.jsp").forward(request, response);		
			}else {
				request.setAttribute("error_message", "Las contraseñas no coinciden");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error_message", "Hubo un error y el usuario no pudo ser creado. Error: "+e);
			request.getRequestDispatcher("login.jsp").forward(request, response);			
		}

	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			User user = UserDao.login(email, password);
			
			if(user!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("user_firstName", user.getFirstName());
				session.setAttribute("user_lastname", user.getLastName());
				session.setAttribute("user_email", user.getEmail());
				request.getRequestDispatcher("index.jsp").forward(request, response);						
			}else {
				request.setAttribute("error_message", "No se pudo iniciar sesión. Usuario o contraseña incorrecto");
				request.getRequestDispatcher("login.jsp").forward(request, response);	
			}
			
		} catch (Exception e) {
			request.setAttribute("error_message", "No se pudo iniciar sesión. Usuario o contraseña incorrecto");
			request.getRequestDispatcher("login.jsp").forward(request, response);	
		}
		
	}
	
	private void logout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		
		HttpSession session = request.getSession(false);
		
	    if (session != null) {
	        session.removeAttribute("user");
	        session.removeAttribute("user_firstName");
			session.removeAttribute("user_lastname");
			session.removeAttribute("user_email");
	        request.getRequestDispatcher("login.jsp").forward(request, response);
	    }
		
	}

}
