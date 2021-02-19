package model;

import java.io.Serializable;

public class Category implements Serializable{

	private int id;
	private String name;
	private Boolean state;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(int id, String name, Boolean state) {
		super();
		this.id = id;
		this.name = name;
		this.state = state;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getState() {
		return state;
	}

	public void setState(Boolean state) {
		this.state = state;
	}
	
	
	
}
