package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Product;

public class ProductDao {
	
	public static boolean store(Product product) {
		try {
			String SQL = "INSERT INTO products values (null,?,?,?,?,?,?)";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);

			st.setString(1, product.getName());
			st.setString(2, product.getDescription());
			st.setFloat(3, product.getPrice());
			st.setBoolean(4, product.getAvailable());
			st.setString(5, product.getPicture());
			st.setInt(6, product.getCategory());
			
			if(st.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static ArrayList<Product> getAll(){
		try {
			String SQL = "SELECT * FROM products ORDER BY category ASC";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			ResultSet result = st.executeQuery();
			ArrayList<Product> list = new ArrayList<>();
			Product product;
			while (result.next()) {
				product = new Product();	
				product.setId(result.getInt("id"));
				product.setName(result.getString("name"));
				product.setDescription(result.getString("description"));
				product.setPrice(result.getFloat("price"));
				product.setAvailable(result.getBoolean("available"));
				product.setPicture(result.getString("picture"));
				product.setCategory(result.getInt("category"));
				list.add(product);
			}
			return list;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static boolean update(Product product) {
		try {

			String SQL = "UPDATE products SET"
					+ "name=?,"
					+ "description=?,"
					+ "price=?,"
					+ "available=?,"
					+ "picture=?,"
					+ "category=?"
					+ "WHERE id=?";
			
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setString(1, product.getName());
			st.setString(2, product.getDescription());
			st.setFloat(3, product.getPrice());
			st.setBoolean(4, product.getAvailable());
			st.setString(5, product.getPicture());
			st.setInt(6, product.getCategory());
			st.setInt(7, product.getId());
				
			if(st.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean destroy(int id) {
		try {
			String SQL = "DELETE FROM products WHERE id=?;";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setInt(1, id);
			
			if(st.executeUpdate()>0) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static Product find(int id) {
		try {
			String SQL = "SELECT * FROM products WHERE id=?";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setInt(1, id);
			ResultSet result = st.executeQuery();
			if(result.next()) {
				Product product = new Product(); 
				product.setId(result.getInt("id"));
				product.setName(result.getString("name"));
				product.setDescription(result.getString("description"));
				product.setPrice(result.getFloat("price"));
				product.setAvailable(result.getBoolean("available"));
				product.setPicture(result.getString("picture"));
				product.setCategory(result.getInt("category"));
				
				return product;
			}else {
				return null;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
