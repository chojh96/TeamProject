package dto;

public class MenuBean {
	private int id;
	private String name;
	private int value;
	private int storeid;
	
	public MenuBean() {
		this(-1,null,-1,-1);
	}
	
	public MenuBean(int id, String name, int value, int storeid) {
		this.id = id;
		this.name = name;
		this.value = value;
		this.storeid = storeid;
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

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	@Override
	public String toString() {
		return "MenuBean [id=" + id + ", name=" + name + ", value=" + value +  ", storeid="	+ storeid + "]";
	}
}
