package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import dao.ProductDao;
import model.Category;
import model.Product;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");

		try {
			switch (action) {
			case "create":
				create(request, response);
				break;
			case "store":
				store(request, response);
				break;
			case "edit":
				edit(request, response);
				break;
			case "update":
				update(request, response);
				break;
			case "destroy":
				destroy(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void create(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		try {
			request.getRequestDispatcher("newcategory.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void store(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		try {
			String name = request.getParameter("name");
			Boolean available = null;
			if (request.getParameter("available") != null) {
				available = true;
			} else {
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

		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo crear la categoría. Error: " + e);
			request.getRequestDispatcher("categories.jsp").forward(request, response);
			e.printStackTrace();
		}

	}

	private void edit(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		try {
			request.getRequestDispatcher("editcategory.jsp?id=" + request.getParameter("id")).forward(request,
					response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			Boolean state = null;
			if (request.getParameter("state") != null) {
				state = true;
			} else {
				state = false;
			}

			Category category = new Category();

			category.setId(id);
			category.setName(name);
			category.setState(state);

			if (CategoryDao.update(category)) {
				request.setAttribute("success_message", "Categoría editada con éxito.");
			} else {
				request.setAttribute("error_message", "Hubo un error y no se pudo editar la categoría.");
			}

			request.getRequestDispatcher("categories.jsp").forward(request, response);

		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo editar la categoría. Error: " + e);
			request.getRequestDispatcher("categories.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

	private void destroy(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));

			if (CategoryDao.haveProducts(id)) {
				request.setAttribute("error_message", "La categoría no se puede borrar porque tiene productos relacionados.");
			} else {
				if(CategoryDao.destroy(id)) {
					request.setAttribute("success_message", "Categoría eliminado con éxito."); 
				}else {
					request.setAttribute("error_message", "Hubo un error y no se pudo eliminar la categoría."); 
				}
			}

			request.getRequestDispatcher("categories.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo eliminar la categoría.");
			request.getRequestDispatcher("categories.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

}
