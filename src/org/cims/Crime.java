package org.cims;

public class Crime {
	//create table crime(sid varchar2(5),cid number(4),carea varchar2(30),ctype varchar2(20),cdate varchar2(20),ctime varchar2(20));
	private String sid;
	private int cid;
	private String carea,ctype,cdate,ctime;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCarea() {
		return carea;
	}
	public void setCarea(String carea) {
		this.carea = carea;
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
	public Crime() {
		super();
	}
	public Crime(String sid, int cid, String carea, String ctype, String cdate, String ctime) {
		super();
		this.sid = sid;
		this.cid = cid;
		this.carea = carea;
		this.ctype = ctype;
		this.cdate = cdate;
		this.ctime = ctime;
	}
	
	

}
