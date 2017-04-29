package org.cims;

import java.util.Date;

public class Residents {
	private int rid;
	private String name,email,password,gender;
	private int age;
	private String address,idcard,idnum;
	private java.util.Date join;
	private String time;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getIdnum() {
		return idnum;
	}
	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}
	public java.util.Date getJoin() {
		return join;
	}
	public void setJoin(java.util.Date join) {
		this.join = join;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	//End Getter and Setter
	public Residents() {
		super();
	}
	public Residents(int rid, String name, String email, String password, String gender, int age, String address,
			String idcard, String idnum, Date join,String time) {
		super();
		this.rid = rid;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.age = age;
		this.address = address;
		this.idcard = idcard;
		this.idnum = idnum;
		this.join = join;
		this.time=time;
	}
	
	
	
	

}
