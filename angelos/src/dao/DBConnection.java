package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/angelos", "root", "root");
		} catch (Exception e) {
			System.out.println("No se pudo conectar a la base de datos");
			e.printStackTrace();
			return null;
		}
	}
	
}
