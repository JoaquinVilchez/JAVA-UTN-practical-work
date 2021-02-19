package controller;

import java.io.IOException;
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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productController() {
        super();
        // TODO Auto-generated constructor stub
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
	}

}
