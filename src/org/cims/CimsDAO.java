package org.cims;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
public class CimsDAO {
	
	private Connection con;
	
	private String jdbcurl="jdbc:oracle:thin:@localhost:1521:xe";
	private String dbuser="hr";
	private String dbpass="hr123";
	private String driver="oracle.jdbc.OracleDriver";
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//SQL FOR RESIDENTS
	private String sqlresidentregister="insert into residents values(residents_seq.nextval,?,?,?,?,?,?,?,?,?)";
	private String sqlresidentvalidate="select rid,name,email,gender,age,address,idcard,idnum,join from residents where email=? and password=?";
	private String sqlcomplaintregister="insert into complaint values(complaint_seq.nextval,?,?,?,?,?,?,?,?,?)";
	private String sqlallcomplaints="select lcid,ctype,cdate,ctime,sloc,landmark,vname,sname,status from complaint where rid=?";
	
	//SQL FOR POLICE STATION
	private String sqlstationvalidate="select sid,name,email,gender,age,sloc,join from station where email=? and password=?";
	private String sqluserlodgecomplaint="select lcid,residents.rid,name,ctype,cdate,ctime,landmark,sloc,vname,sname,status from residents,complaint where residents.rid=complaint.rid and complaint.sloc=?";
	private String sqlcountstatus="select count(status) from complaint where status=? and sloc=?";
	private String sqlupdatestatus="update complaint set status=? where lcid=? and sloc=?";
	
	//SQL for CRIMINALS
	private String sqlcriminalregister="insert into criminal values(criminal_seq.nextval,?,?,?,?,?)";
	private String sqlallcriminals="select cid,cname,cage,cgender,caddress,fmark from criminal";
	
	//SQL for CRIME
	private String sqlassigncrime="insert into crime values(?,?,?,?,?,?)";
	private String sqlgetcrimeinfo="select sid,cid,carea,ctype,cdate,ctime from crime where sid=?";
	private String sqlresidentgetcrimeinfo="select station.sid,sloc,cname,cage,cgender,ctype,carea from station,criminal,crime where station.sid=crime.sid and crime.cid=criminal.cid and station.sid=?";
			
	///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//PREPARE STATEMENT FOR RESIDENTS
	private PreparedStatement pstmtresidentregister;
	private PreparedStatement pstmtresidentvalidate;
	private PreparedStatement pstmtcomplaintregister;
	private PreparedStatement pstmtallcomplaints;
	
	
	//PREPARE STATEMENT FOR police station
	private PreparedStatement pstmtstationvalidate;
	private PreparedStatement pstmtuserlodgecomplaint;
	private PreparedStatement pstmtcountstatus;
	private PreparedStatement pstmtupdatestatus;
	
	//PREPARE STATEMENT FOR CRIMINALS
	private PreparedStatement pstmtcriminalregister;
	private PreparedStatement pstmtallcriminals;
	
	//PREPARE STATEMENT FOR CRIME
	private PreparedStatement pstmtassigncrime;
	private PreparedStatement pstmtgetcrimeinfo;
	private PreparedStatement pstmtresidentgetcrimeinfo;
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public CimsDAO() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con=DriverManager.getConnection(jdbcurl,dbuser,dbpass);
		pstmtresidentregister=con.prepareStatement(sqlresidentregister);
		pstmtresidentvalidate=con.prepareStatement(sqlresidentvalidate);
		pstmtcomplaintregister=con.prepareStatement(sqlcomplaintregister);
		pstmtallcomplaints=con.prepareStatement(sqlallcomplaints);
		pstmtstationvalidate=con.prepareStatement(sqlstationvalidate);
		pstmtuserlodgecomplaint=con.prepareStatement(sqluserlodgecomplaint);
		pstmtcountstatus=con.prepareStatement(sqlcountstatus);
		pstmtupdatestatus=con.prepareStatement(sqlupdatestatus);
		pstmtcriminalregister=con.prepareStatement(sqlcriminalregister);
		pstmtallcriminals=con.prepareStatement(sqlallcriminals);
		pstmtassigncrime=con.prepareStatement(sqlassigncrime);
		pstmtgetcrimeinfo=con.prepareStatement(sqlgetcrimeinfo);
		pstmtresidentgetcrimeinfo=con.prepareStatement(sqlresidentgetcrimeinfo);
			
		
		
	}
	//insert into residents values(residents_seq.nextval,?,?,?,?,?,?,?,?,?);
	//create table residents(rid number(4) primary key,name varchar2(50),email varchar2(50) unique,password varchar2(50),gender varchar2(10),age number(3),address varchar2(70),idcard varchar2(50),idnum varchar2(20),join date);
	public void residentRegister(String name,String email,String password,String gender,int age,String address,String idcard,String idnum) throws SQLException{
		// RESIDENT REGISTER 
		java.util.Date dt=new java.util.Date();
		long time=dt.getTime();
		java.sql.Date sqldt=new java.sql.Date(time);
		pstmtresidentregister.setString(1, name);
		pstmtresidentregister.setString(2, email);
		pstmtresidentregister.setString(3, password);
		pstmtresidentregister.setString(4, gender);
		pstmtresidentregister.setInt(5, age);
		pstmtresidentregister.setString(6, address);
		pstmtresidentregister.setString(7, idcard);
		pstmtresidentregister.setString(8, idnum);
		pstmtresidentregister.setDate(9, sqldt);
		pstmtresidentregister.executeUpdate();
	}
	//select rid,name,email,gender,age,address,idcard,idnum,join from residents where email=? and password=?
	//int rid, String name, String email, String password, String gender, int age, String address,	String idcard, String idnum, Date join
	public Residents residentValidate(String email,String pass,String time) throws SQLException{
		//RESIDENT LOGIN
		pstmtresidentvalidate.setString(1, email);
		pstmtresidentvalidate.setString(2, pass);
		ResultSet rs=pstmtresidentvalidate.executeQuery();
		if(rs.next()){
			Residents r=new Residents(rs.getInt(1),rs.getString(2),rs.getString(3),null,rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getDate(9),time);
			return r;
		}
		else
			return null;		
		
	}
	//"insert into complaint values(complaint_seq.nextval,?,?,?,?,?,?,?,?,?);";
	//Complaints(int lcid, int rid, String ctype, String cdate, String ctime, String plocation, String landmark,String victims, String suspects, String status)
	public void complaintRegister(int rid,String ctype,String cdate,String ctime,String plocation,String landmark,String victims, String suspects, String status) throws SQLException{
		
		//COMPLAINT REGISTER BY RESIDENT
		pstmtcomplaintregister.setInt(1, rid);
		pstmtcomplaintregister.setString(2, ctype);
		pstmtcomplaintregister.setString(3, cdate);
		pstmtcomplaintregister.setString(4, ctime);
		pstmtcomplaintregister.setString(5, plocation);
		pstmtcomplaintregister.setString(6, landmark);
		pstmtcomplaintregister.setString(7, victims);
		pstmtcomplaintregister.setString(8, suspects);
		pstmtcomplaintregister.setString(9, status);
		pstmtcomplaintregister.executeUpdate();
	}
	//select lcid,ctype,cdate,ctime,sloc,landmark,vname,sname,status
	//int lcid, String ctype, String cdate, String ctime, String plocation, String landmark,String victims, String suspects, String status
	public ArrayList<Complaints> getAllComplaints(int rid) throws SQLException{
		//RESIDENT COMPLAINT LIST
		pstmtallcomplaints.setInt(1, rid);
		ResultSet rs=pstmtallcomplaints.executeQuery();
		ArrayList<Complaints> complist=null;
		while(rs.next())
		{
			Complaints c=new Complaints(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			if(complist==null)
				complist=new ArrayList<>();
			complist.add(c);
		}
		return complist;
		
	}
	//"select sid,name,email,gender,age,sloc,join from station where email=? and password=?";
	public Station stationValidate(String email,String pass, String time) throws SQLException{
		//Police LOGIN
		pstmtstationvalidate.setString(1, email);
		pstmtstationvalidate.setString(2, pass);
		ResultSet rs=pstmtstationvalidate.executeQuery();
		if(rs.next()){
			Station s=new Station(rs.getString(1), rs.getString(2), rs.getString(3), null, rs.getString(4), rs.getInt(5), rs.getString(6), rs.getDate(7),time);
			return s;
		}
		else
			return null;		
		
	}
	//"select lcid,residents.rid,name,ctype,cdate,ctime,landmark,sloc,vname,sname,status from residents,complaint where residents.rid=complaint.rid and complaint.sloc=?";
	//int lcid,int rid, String name,String ctype, String cdate, String ctime,String landmark, String plocation, String victims, String suspects, String status
	public ArrayList<ResidentsComplaints> getalluserlodgecomplaint(String plocation) throws SQLException{
		
		//Station purpose for viewing all user complaints for that station
		pstmtuserlodgecomplaint.setString(1, plocation);
		ResultSet rs=pstmtuserlodgecomplaint.executeQuery();
		ArrayList<ResidentsComplaints> rclist=null;
		while(rs.next()){
			ResidentsComplaints rc=new ResidentsComplaints(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
			if(rclist==null)
				rclist=new ArrayList<>();
			rclist.add(rc);
		}
		return rclist;		
		
	}
	//select count(status) from complaint where status=? and sloc=?
	public int countStatus(String status,String plocation) throws SQLException{
		
		//Count Solved or Unsolved
		pstmtcountstatus.setString(1, status);
		pstmtcountstatus.setString(2, plocation);
		ResultSet rs=pstmtcountstatus.executeQuery();
		int count = 0;
		if(rs.next()){
			count=rs.getInt(1);
		}
		return count;
		
		
	}
	
	//"update complaint set status=? where lcid=? and sloc=?";
	//public Complaints(String status,int lcid, String plocation )
	public void updateStatus(String status,int lcid,String plocation) throws SQLException{
		
		//UPDATE TO SOLVED by POLICE
		pstmtupdatestatus.setString(1, status);
		pstmtupdatestatus.setInt(2, lcid);
		pstmtupdatestatus.setString(3, plocation);
		pstmtupdatestatus.executeUpdate();
	}
	//insert into criminal values(1,'abc',21,'Female','xyz','spot');
	public void criminalRegister(String name,int age,String gender,String address,String fmark) throws SQLException{
		//CRIMINAL REGISTER
		pstmtcriminalregister.setString(1, name);
		pstmtcriminalregister.setInt(2, age);
		pstmtcriminalregister.setString(3, gender);
		pstmtcriminalregister.setString(4, address);
		pstmtcriminalregister.setString(5, fmark);
		pstmtcriminalregister.executeUpdate();
	}
	//select cid,cname,cage,cgender,caddress,fmark from criminal
	public ArrayList<Criminals> allCriminals() throws SQLException{
		// GET ALL CRIMINALS
		ResultSet rs=pstmtallcriminals.executeQuery();
		ArrayList<Criminals> crilist=null;
		while(rs.next()){
			Criminals cri=new Criminals(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6));
			if(crilist==null)
				crilist=new ArrayList<>();
			crilist.add(cri);
			
		}
		return crilist;
		
	}
	//insert into crime values('s01',1,'baguiati','Homicide','ds','fdfd');
	public void assignCrime(String sid,int cid, String carea,String ctype,String cdate,String ctime) throws SQLException{
		//ASSIGN CRIME FOR PARTICULAR STATION WITH SID
		pstmtassigncrime.setString(1, sid);
		pstmtassigncrime.setInt(2, cid);
		pstmtassigncrime.setString(3, carea);
		pstmtassigncrime.setString(4, ctype);
		pstmtassigncrime.setString(5, cdate);
		pstmtassigncrime.setString(6, ctime);
		pstmtassigncrime.executeUpdate();
		
	}
	//select sid,cid,carea,ctype,cdate,ctime from crime where sid=?
	public ArrayList<Crime> getCrimeInfo(String sid) throws SQLException{
		pstmtgetcrimeinfo.setString(1, sid);
		ResultSet rs=pstmtgetcrimeinfo.executeQuery();
		ArrayList<Crime> crimelist=null;
		while(rs.next()){
			Crime crime=new Crime(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			if(crimelist==null){
				crimelist=new ArrayList<>();
			}
			crimelist.add(crime);
		}
		return crimelist;
	}
	
	//select station.sid,sloc,cname,cage,cgender,ctype,carea from station,criminal,crime where station.sid=crime.sid and crime.cid=criminal.cid and station.sid='s02';
	//(String sid, String sloc, String cname, int cage, String cgender, String ctype,String carea
	public ArrayList<ResidentCrimeInfo> residentGetCrimeInfo(String sid) throws SQLException{
		pstmtresidentgetcrimeinfo.setString(1, sid);
		
		ResultSet rs=pstmtresidentgetcrimeinfo.executeQuery();
		ArrayList<ResidentCrimeInfo> rcrimeinfo=null;
		while(rs.next()){
			ResidentCrimeInfo rci=new ResidentCrimeInfo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
			if(rcrimeinfo==null)
				rcrimeinfo=new ArrayList<>();
			rcrimeinfo.add(rci);
			
		}
		return rcrimeinfo;
	}
	
	
}















