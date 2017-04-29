package org.cims;

//insert into criminal values(1,'abc',21,'Female','xyz','spot');
public class Criminals {
	
	private int cid;
	private String name;
	private int age;
	private String gender,address,facemark;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFacemark() {
		return facemark;
	}
	public void setFacemark(String facemark) {
		this.facemark = facemark;
	}
	public Criminals(int cid, String name, int age, String gender, String address, String facemark) {
		super();
		this.cid = cid;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.facemark = facemark;
	}
	
	
}
