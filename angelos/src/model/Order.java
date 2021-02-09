package model;

public class Order {

	private int id, user, address;
	private String code, ordered, accepted, closed, shipped, shipping_method, aditional_notes;
	private float delivery, subtotal;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(int id, int user, int address, String code, String ordered, String accepted, String closed, String shipped, String shipping_method, String aditional_notes, float delivery, float subtotal) {
		super();
		this.id = id;
		this.user = user;
		this.address = address;
		this.code = code;
		this.ordered = ordered;
		this.accepted = accepted;
		this.closed = closed;
		this.shipped = shipped;
		this.shipping_method = shipping_method;
		this.aditional_notes = aditional_notes;
		this.delivery = delivery;
		this.subtotal = subtotal;
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

	public int getAddress() {
		return address;
	}

	public void setAddress(int address) {
		this.address = address;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getOrdered() {
		return ordered;
	}

	public void setOrdered(String ordered) {
		this.ordered = ordered;
	}

	public String getAccepted() {
		return accepted;
	}

	public void setAccepted(String accepted) {
		this.accepted = accepted;
	}

	public String getClosed() {
		return closed;
	}

	public void setClosed(String closed) {
		this.closed = closed;
	}

	public String getShipped() {
		return shipped;
	}

	public void setShipped(String shipped) {
		this.shipped = shipped;
	}

	public String getShipping_method() {
		return shipping_method;
	}

	public void setShipping_method(String shipping_method) {
		this.shipping_method = shipping_method;
	}

	public String getAditional_notes() {
		return aditional_notes;
	}

	public void setAditional_notes(String aditional_notes) {
		this.aditional_notes = aditional_notes;
	}

	public float getDelivery() {
		return delivery;
	}

	public void setDelivery(float delivery) {
		this.delivery = delivery;
	}

	public float getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}
	
}
