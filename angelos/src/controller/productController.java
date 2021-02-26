package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import model.Product;

/**
 * Servlet implementation class productController
 */
@WebServlet("/productController")

public class productController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public productController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		String action = request.getParameter("action");
		
		try {
			switch (action) {
			case "create":
				create(request,response);
				break;
			case "store":
				store(request,response);
				break;
			case "edit":
				edit(request,response);
				break;
			case "update":
				update(request,response);
				break;
			case "destroy":
				destroy(request,response);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	//METHODS
	
	private void create(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		try {
			request.getRequestDispatcher("newproduct.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void store(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{

		try {
			String name = request.getParameter("name");
			int category = Integer.parseInt(request.getParameter("category"));
			float price = Float.parseFloat(request.getParameter("price"));
			String description = request.getParameter("description");
			String picture = "nopicture";

			Boolean state = null;
			if(request.getParameter("state")!=null) {
				state = true;
			}else {
				state = false;
			}
			
			Product product = new Product();
			
			product.setName(name);
			product.setCategory(category);
			product.setPrice(price);
			product.setPicture(picture);
			product.setDescription(description);
			product.setAvailable(state);
			
			if(ProductDao.store(product)) {
				request.setAttribute("success_message", "Producto creado con éxito.");
			}else {
				request.setAttribute("error_message", "Hubo un error y no se pudo crear el producto.");
			}
			
			request.getRequestDispatcher("products.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo crear el producto. Error: "+e);
			request.getRequestDispatcher("products.jsp").forward(request, response);
			e.printStackTrace();
		}
	
	}
	
	private void edit(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		try {
			request.getRequestDispatcher("editproduct.jsp?id="+request.getParameter("id")).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int category = Integer.parseInt(request.getParameter("category"));
			float price = Float.parseFloat(request.getParameter("price"));
			String description = request.getParameter("description");
			String picture = "nopicture";

			Boolean state = null;
			if(request.getParameter("state")!=null) {
				state = true;
			}else {
				state = false;
			}
			
			Product product = new Product();
			
			product.setId(id);
			product.setName(name);
			product.setCategory(category);
			product.setPrice(price);
			product.setPicture(picture);
			product.setDescription(description);
			product.setAvailable(state);

			System.out.println("CONTROLLER");
			System.out.println(product.getId());
			System.out.println(product.getName());
			System.out.println(product.getCategory());
			System.out.println(product.getPrice());
			System.out.println(product.getDescription());
			System.out.println(product.getAvailable());
			System.out.println(product.getPicture());
			
			if(ProductDao.update(product)) {
				request.setAttribute("success_message", "Producto editado con éxito.");
			}else {
				request.setAttribute("error_message", "Hubo un error y no se pudo editar el producto.");
			}
			
			request.getRequestDispatcher("products.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo editar el producto. Error: "+e);
			request.getRequestDispatcher("products.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

	private void destroy(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			
			if(ProductDao.destroy(id)) {
				request.setAttribute("success_message", "Producto eliminado con éxito.");
			}else {
				request.setAttribute("error_message", "Hubo un error y no se pudo eliminar el producto.");
			}
			
			request.getRequestDispatcher("products.jsp").forward(request, response);
			
		} catch (Exception e) {
			request.setAttribute("error_message", "Hubo un error y no se pudo eliminar el producto.");
			request.getRequestDispatcher("products.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
