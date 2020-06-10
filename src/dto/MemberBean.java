package dto;

public class MemberBean {
	private String id;
	private String password;
	private String address;
	private String name;
	private String phonenumber;
	
	public MemberBean(String id, String password, String address, String name, String phonenumber) {
		super();
		this.id = id;
		this.password = password;
		this.address = address;
		this.name = name;
		this.phonenumber = phonenumber;
	}
	@Override
	public String toString() {
		return "member [id=" + id + ", password=" + password + ", address=" + address + ", name=" + name + ", phonenumber="
				+ phonenumber + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAdress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
}
