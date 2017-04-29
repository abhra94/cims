package org.cims;

public class ResidentCrimeInfo {
	private String sid,sloc,cname;
	private int cage;
	private String cgender,ctype,carea;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSloc() {
		return sloc;
	}
	public void setSloc(String sloc) {
		this.sloc = sloc;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCage() {
		return cage;
	}
	public void setCage(int cage) {
		this.cage = cage;
	}
	public String getCgender() {
		return cgender;
	}
	public void setCgender(String cgender) {
		this.cgender = cgender;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCarea() {
		return carea;
	}
	public void setCarea(String carea) {
		this.carea = carea;
	}
	public ResidentCrimeInfo(String sid, String sloc, String cname, int cage, String cgender, String ctype,
			String carea) {
		super();
		this.sid = sid;
		this.sloc = sloc;
		this.cname = cname;
		this.cage = cage;
		this.cgender = cgender;
		this.ctype = ctype;
		this.carea = carea;
	}
	
	
}
