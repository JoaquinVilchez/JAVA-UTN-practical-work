package model;

import java.io.Serializable;

public class Address implements Serializable{
	
	private int id, user;
	private String street, number, floor, department, building_name, city;
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(int id, int user, String street, String number, String floor, String department,
			String building_name, String city) {
		super();
		this.id = id;
		this.user = user;
		this.street = street;
		this.number = number;
		this.floor = floor;
		this.department = department;
		this.building_name = building_name;
		this.city = city;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getBuildingName() {
		return building_name;
	}

	public void setBuildingName(String building_name) {
		this.building_name = building_name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	

}
