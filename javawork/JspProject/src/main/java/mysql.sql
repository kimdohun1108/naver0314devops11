
create table myshop (
   shopidx smallint auto_increment primary key,
   sname varchar(30),
   sprice int,
   scount int,
   scolor varchar(20),
   sphoto varchar(100),
   writeday datetime);
   
create table mysawon(
   num smallint auto_increment primary key,
   name varchar(20),
   buseo varchar(20),
   age smallint,
   addr varchar(100),
   photo varchar(100),
   gender varchar(10),
   birthday varchar(20));
   
 create table mystudent (
  num smallint auto_increment primary key,
  name varchar(20),
  blood varchar(3),
  license char(1),
  java smallint,
  spring smallint,
  html smallint,
  writeday datetime);
  
  
 create table mymemo (
  num smallint auto_increment primary key,
  uploadphoto varchar(30),
  title varchar(100),
  content varchar(1000),
  writeday datetime);
  
  
  
