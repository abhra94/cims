package org.cims;

public class Complaints {
	private int lcid,rid;
	private String ctype,cdate,ctime,plocation,landmark,victims,suspects,status;
	public int getLcid() {
		return lcid;
	}
	public void setLcid(int lcid) {
		this.lcid = lcid;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
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
	public Complaints() {
		super();
	}
	public Complaints(int lcid, int rid, String ctype, String cdate, String ctime, String plocation, String landmark,
			String victims, String suspects, String status) {
		super();
		this.lcid = lcid;
		this.rid = rid;
		this.ctype = ctype;
		this.cdate = cdate;
		this.ctime = ctime;
		this.plocation = plocation;
		this.landmark = landmark;
		this.victims = victims;
		this.suspects = suspects;
		this.status = status;
	}
	public Complaints(int lcid, String ctype, String cdate, String ctime, String plocation, String landmark,
			String victims, String suspects, String status) {
		super();
		this.lcid = lcid;
		this.ctype = ctype;
		this.cdate = cdate;
		this.ctime = ctime;
		this.plocation = plocation;
		this.landmark = landmark;
		this.victims = victims;
		this.suspects = suspects;
		this.status = status;
	}
	public Complaints(String status,int lcid, String plocation ) {
		super();
		this.lcid = lcid;
		this.plocation = plocation;
		this.status = status;
	}
	
	
	

}
