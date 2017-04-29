package org.cims;

import java.util.Date;

public class Station {
	
	private String sid,name,email,password,gender;
	private int age;
	private String plocation;
	private java.util.Date join;
	private String time;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
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
	public String getPlocation() {
		return plocation;
	}
	public void setPlocation(String plocation) {
		this.plocation = plocation;
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
	public Station() {
		super();
	}
	public Station(String sid, String name, String email, String password, String gender, int age, String plocation,
			Date join, String time) {
		super();
		this.sid = sid;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.age = age;
		this.plocation = plocation;
		this.join = join;
		this.time=time;
	}
	
	
	
}
