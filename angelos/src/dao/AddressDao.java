package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Address;
import model.Product;

public class AddressDao {
	public static boolean store(Address address) {
		try {
			String SQL = "INSERT INTO addresses values (?,?,?,?,?,?,?)";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setString(1, address.getStreet());
			st.setString(2, address.getNumber());
			st.setString(3, address.getFloor());
			st.setString(4, address.getDepartment());
			st.setString(5, address.getBuildingName());
			st.setString(6, address.getCity());
			st.setInt(7, address.getUser());
			
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
	
	public static ArrayList<Address> getAll(){
		try {
			String SQL = "SELECT * FROM addresses";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			ResultSet result = st.executeQuery();
			ArrayList<Address> list = new ArrayList<>();
			Address address;
			while (result.next()) {
				address = new Address();
				address.setStreet(result.getString("street"));
				address.setNumber(result.getString("number"));
				address.setFloor(result.getString("floor"));
				address.setDepartment(result.getString("department"));
				address.setBuildingName(result.getString("building_name"));
				address.setCity(result.getString("city"));
				address.setUser(result.getInt("user"));
				list.add(address);
			}
			return list;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static boolean update(Address address) {
		try {
			String SQL = "UPDATE addresses SET ("
					+ "street=?,"
					+ "number=?,"
					+ "floor=?,"
					+ "department=?,"
					+ "building_name=?,"
					+ "city=?,"
					+ "user=?,"
					+ "WHERE id=?)";
			
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setString(1, address.getStreet());
			st.setString(2, address.getNumber());
			st.setString(3, address.getFloor());
			st.setString(4, address.getDepartment());
			st.setString(5, address.getBuildingName());
			st.setString(6, address.getCity());
			st.setInt(7, address.getUser());
			st.setInt(8, address.getId());
			
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
	
	public static boolean destroy(Address address) {
		try {
			String SQL = "DELETE FROM addresses WHERE id=?;";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setInt(1, address.getId());
			
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
	
	public static Address find(int id) {
		try {
			String SQL = "SELECT * FROM addreses WHERE id=?";
			Connection con = DBConnection.connect();
			PreparedStatement st = con.prepareStatement(SQL);
			st.setInt(1, id);
			ResultSet result = st.executeQuery();
			if(result.next()) {
				Address address = new Address(); 
				address.setId(result.getInt("id"));
				address.setStreet(result.getString("street"));
				address.setNumber(result.getString("number"));
				address.setFloor(result.getString("floor"));
				address.setDepartment(result.getString("department"));
				address.setBuildingName(result.getString("building_name"));
				address.setCity(result.getString("city"));
				address.setUser(result.getInt("user"));
				
				return address;
			}else {
				return null;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
