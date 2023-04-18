create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
	cId int auto_increment primary key,
    cName varchar(255) not null,
    cAge int not null
);

create table Orders(
	oId int auto_increment,
    cId int not null,
    oDate date not null,
    oTotalPrice float,
    primary key(oId, cId),
    foreign key (cId) references Customer(cId)
);

create table Product(
	pId int auto_increment primary key,
    pName varchar(255) not null,
    pPrice float not null
);

create table OrderDetail(
	oId int,
    pId int,
    primary key(oId, pId),
    oQTy int not null,
    foreign key (oId) references Orders(oId),
    foreign key (pId) references Product(pId)
);