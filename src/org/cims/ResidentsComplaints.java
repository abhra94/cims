package org.cims;

public class ResidentsComplaints {
	
	private int rid;
	private String name,email,password,gender;
	private int age;
	private String address,idcard,idnum;
	private java.util.Date join;
	private int lcid;
	private String ctype,cdate,ctime,plocation,landmark,victims,suspects,status;
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
	public int getLcid() {
		return lcid;
	}
	public void setLcid(int lcid) {
		this.lcid = lcid;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getPlocation() {
		return plocation;
	}
	public void setPlocation(String plocation) {
		this.plocation = plocation;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getVictims() {
		return victims;
	}
	public void setVictims(String victims) {
		this.victims = victims;
	}
	public String getSuspects() {
		return suspects;
	}
	public void setSuspects(String suspects) {
		this.suspects = suspects;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ResidentsComplaints() {
		super();
	}
	public ResidentsComplaints(int lcid,int rid, String name,String ctype, String cdate, String ctime,String landmark, String plocation, String victims, String suspects, String status) {
		super();
		this.rid = rid;
		this.name = name;
		this.lcid = lcid;
		this.ctype = ctype;
		this.cdate = cdate;
		this.ctime = ctime;
		this.landmark=landmark;
		this.plocation = plocation;
		this.victims = victims;
		this.suspects = suspects;
		this.status = status;
	}
	
	
	
	
}
