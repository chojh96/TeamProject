package dto;

public class StoreBean {
	private int id;
	private String name;
	private String category;
	private String address;
	private String phone;
	
	public StoreBean() {
		this(-1, null, null, null, null);
	}
	

	public StoreBean(int id, String name, String category, String address, String phone) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.address = address;
		this.phone = phone;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Override
	public String toString() {
		return "StoreBean [id=" + id + ", name=" + name + ", category=" + category + ", address=" + address + ", phone="
				+ phone + "]";
	}
	
}
	