create table if not exists menu_tbl (
  menuid varchar(5) unique primary key not null,
  menu varchar(50) not null,
  price int not null);

create table if not exists customers_tbl (
  cusid varchar(5) unique primary key not null,
  lastname varchar(20),
  firstname varchar(20) not null,
  tell varchar(15) unique not null,
  email varchar(50);

create table if not exists orders_tbl (
  orderid varchar(8) not null,
  orderdate date not null,
  cusid varchar(5),
  menuid varchar(5) not null,
  amount int not null,
  foreign key (menuid) references menu_tbl(menuid));

create table if not exists orders_2nd (
  orderid varchar(8) not null,
  orderdate date not null,
  cusid varchar(5),
  menuid varchar(5) not null,
  amount int not null,
  foreign key (menuid) references menu_tbl(menuid));