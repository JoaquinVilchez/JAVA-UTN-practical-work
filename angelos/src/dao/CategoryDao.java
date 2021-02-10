package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Category;

public class CategoryDao {
	
	public static boolean store(Category category) {
		
		try {
			
			String SQL = "INSERT INTO categories VALUES(?,?,?)";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			
			st.setInt(1, category.getId());
			st.setString(2, category.getName());
			st.setBoolean(3, category.getState());
			
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
	
	public static ArrayList<Category> getAll(){
		
		try {
			
			String SQL = "SELECT * FROM categories";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			ResultSet result = st.executeQuery();
			ArrayList<Category> list = new ArrayList();
			Category category;
			while(result.next()) {
				category = new Category();
				category.setId(result.getInt("id"));
				category.setName(result.getString("name"));
				category.setState(result.getBoolean("state"));
				list.add(category);
			}
			return list;		
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
}
