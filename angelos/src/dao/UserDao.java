package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;

public class UserDao {

	public static boolean register(User user){
		try {
			String SQL = "INSERT INTO users VALUES (null,?,?,?,?,?,?,?)";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);

			st.setString(1, user.getFirstName());
			st.setString(2, user.getLastName());
			st.setString(3, user.getEmail());
			st.setString(4, user.getPassword());
			st.setString(5, user.getPicture());
			st.setString(6, user.getStatus());
			st.setString(7, user.getType());
			
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
	
	public static User login(String email, String password) {
		try {
			String SQL = "SELECT * FROM users WHERE email=? AND password=?";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			
			st.setString(1, email);
			st.setString(2, password);
			
			ResultSet result = st.executeQuery();
			
			User user = null;
			 
	        if (result.next()) {
	            user = new User();
	            user.setFirstName(result.getString("first_name"));
	            user.setLastName(result.getString("last_name"));
	            user.setEmail(result.getString("email"));
	            user.setPassword(result.getString("password"));
	            user.setPicture(result.getString("picture"));
	            user.setType(result.getString("type"));
	        }
	        
	        return user;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
