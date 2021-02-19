package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import model.Category;

/**
 * Servlet implementation class categoryController
 */
@WebServlet("/categoryController")
public class categoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryController() {
        super();
        // TODO Auto-generated consWtructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		Boolean available = null;
		if(request.getParameter("available")!=null) {
			available = true; 			
		}else {
			available = false;
		}
		
		Category category = new Category();
		category.setName(name);
		category.setState(available);
		if (CategoryDao.store(category)) {
			request.setAttribute("success_message", "La categoría fue creada con éxito");
		} else {
			request.setAttribute("error_message", "Hubo un error y no se pudo crear la categoría");
		}
		
		request.getRequestDispatcher("categories.jsp").forward(request, response);
	
	}

}
