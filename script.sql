create sequence residents_seq;
create sequence complaint_seq;
create sequence criminal_seq start with 420;

drop sequence residents_seq;
drop sequence complaint_seq;
drop sequence criminal_seq;

create table residents(rid number(4) primary key,name varchar2(50),email varchar2(50) unique,password varchar2(50),gender varchar2(10),age number(3),address varchar2(70),idcard varchar2(50),idnum varchar2(20),join date);
create table complaint(lcid number(4) primary key,rid number(4),ctype varchar2(20),cdate varchar2(20),ctime varchar2(20),sloc varchar2(50),landmark varchar2(50),vname varchar2(50),sname varchar2(50),status varchar2(20));
create table station(sid varchar2(5) primary key,name varchar2(50),email varchar2(50) unique,password varchar2(50),gender varchar2(10),age number(3),sloc varchar2(50),join date);
create table criminal(cid number(4) primary key,cname varchar2(50),cage number(3),cgender varchar2(10),caddress varchar2(70),fmark varchar2(50));
create table crime(sid varchar2(5),cid number(4),carea varchar2(30),ctype varchar2(20),cdate varchar2(20),ctime varchar2(20));


alter table complaint add constraint resi_com foreign key (rid) references residents(rid);
alter table complaint add constraint station_com foreign key (sloc) references station(sloc);
alter table crime add constraint crime_station foreign key (sid) references station(sid);
alter table crime add constraint crime_criminal foreign key (cid) references criminal(cid);


insert into STATION values('s01','Ratan','ratan@r.com','ratan','Male',45,'Patuli','31-july-2013');
insert into STATION values('s02','Suman','suman@s.com','suman','Male',35,'Baguiati','31-july-2016');
insert into criminal values(1,'abc',21,'Female','xyz','spot');
insert into crime values('s01',1,'baguiati','Homicide','ds','fdfd');


update COMPLAINT set status='Unsolved' where lcid=3 and sloc='Patuli';
update COMPLAINT set status='Unsolved';

commit

drop table residents;
drop table complaint;
drop table station;
drop table criminal;
drop table crime;

delete from complaint;
delete from residents;
delete from criminal;
delete from crime;

select * from complaint;
select * from residents;
select * from station;
select * from criminal;
select * from crime;
select cid,cname,cage,cgender,caddress,fmark from criminal;
select sid,cid,carea,ctype,cdate,ctime from crime where sid='s01';

select lcid,residents.rid,name,ctype,cdate,ctime,landmark,sloc,vname,sname,status from residents,complaint where residents.rid=complaint.rid and complaint.sloc='Patuli';
select count(status) from complaint where status='Unsolved' and sloc='Patuli';
select count(status) from complaint where status='Solved' and sloc='Baguiati';

select lcid,ctype,cdate,ctime,sloc,landmark,vname,sname,status from complaint where rid=1;
select station.sid,sloc,cname,cage,cgender,ctype,carea from station,criminal,crime where station.sid=crime.sid and crime.cid=criminal.cid and station.sid='s01';