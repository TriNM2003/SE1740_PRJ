create  database hairshop

create table [Account](
	[id] int not null identity(1,1) primary key,
	[username] varchar(32) ,
	[password] varchar(32) ,
	[gmail] varchar(150),
	[role_name] varchar(20) 
	
);
create table [User](
	[user_id] int not null  primary key,	
	[fullname] nvarchar(50) ,
	[address] nvarchar(200),
	[phone_number] varchar(20),
	[create_time] DATETIME,
	[update_time] DATETIME,
	[deleted] int, 
	FOREIGN KEY (user_id) REFERENCES [Account](id)
);
create table [Brand](
	[brand_id] int not null identity(1,1) primary key,
	[brand_name] nvarchar(100),
	[brand_address] nvarchar(200)
);

create table [Order](
	[order_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[fullname] nvarchar(50) ,
	[address] nvarchar(200),
	[gmail] varchar(150),
	[phone_number] varchar(20),
	[note] nvarchar(1000) ,
	[oder_date] DATETIME ,
	[status] int ,
	[total_money] float ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id)
	 
);
create table [Category](
	[category_id] int not null identity(1,1) primary key,
	
	[category_name] nvarchar(50) 
);

create table [subCategory](
	[subcategory_id] int not null identity(1,1) primary key,
	[category_id] int ,
	[subcategory_name] nvarchar(50) 
	FOREIGN KEY (category_id) REFERENCES [Category](category_id) 
);

create table [Product](
	[product_id] int not null identity(1,1) primary key,
	[product_name] varchar(50) ,
	[subcategory_id] int ,
	[brand_id] int,
	[price] float ,
	[discount] float ,
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	[deleted] int ,
	FOREIGN KEY (subcategory_id) REFERENCES [subCategory](subcategory_id) ,
	FOREIGN KEY (brand_id) REFERENCES [Brand](brand_id) 
	 
);


create table [OrderDetails](
	[od_id] int not null identity(1,1) primary key,
	[order_id]  int  ,
	[product_id] int ,
	[price] float ,
	[quantity] int ,
	[total_money] float ,
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id) 
);

create table [Info](
	[info_id] int not null  primary key,
	[capacity] float ,
	[components] nvarchar(500) ,
	[fragrance] nvarchar(200) ,
	[title] nvarchar(100) ,
	[des1] nvarchar(1000) ,
	[des2] nvarchar(1000) 
	FOREIGN KEY (info_id) REFERENCES [Product](product_id) 
);

create table [Gallery](
	[gallery_id] int not null identity(1,1) primary key,
	[product_id] int ,
	[thumbnail] varchar(500) 
	FOREIGN KEY (product_id) REFERENCES [Product](product_id) 
);



create table [Feedback](
	[fb_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[product_id] int ,
	[fullname] nvarchar(50)  ,
	[note] nvarchar(200),
	[status] int ,
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id)
);



--Category
insert into[Category](category_name)values(N'Sản phẩm tạo kiểu')
insert into[Category](category_name)values(N'Sản phẩm gội rửa')
insert into[Category](category_name)values(N'Nước hoa')
insert into[Category](category_name)values(N'Sản phẩm dưỡng tóc')
insert into[Category](category_name)values(N'Sản phẩm khác')
--select * from Category

--subCategory
--1 sp tao kieu
insert into[subCategory](subcategory_name,category_id)values(N'Wax','1')
insert into[subCategory](subcategory_name,category_id)values(N'Pomade','1')
insert into[subCategory](subcategory_name,category_id)values(N'Bột tạo phồng','1')
insert into[subCategory](subcategory_name,category_id)values(N'Pre-styling','1')
insert into[subCategory](subcategory_name,category_id)values(N'Gôm','1')
insert into[subCategory](subcategory_name,category_id)values(N'Lược tạo kiểu','1')
--2 sp goi rua
insert into[subCategory](subcategory_name,category_id)values(N'Dầu gội','2')
insert into[subCategory](subcategory_name,category_id)values(N'Dầu xả','2')
insert into[subCategory](subcategory_name,category_id)values(N'Dầu gội khô','2')
insert into[subCategory](subcategory_name,category_id)values(N'Kem ủ tóc','2')
insert into[subCategory](subcategory_name,category_id)values(N'Lược gội đầu','2')

--3 nuoc hoa
insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa','3')
insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa khô','3')
insert into[subCategory](subcategory_name,category_id)values(N'Body mist','3')
--4 sp duong toc
insert into[subCategory](subcategory_name,category_id)values(N'Dầu dưỡng tóc','4')
insert into[subCategory](subcategory_name,category_id)values(N'Mặt nạ dưỡng tóc','4')
--5 sp khac
insert into[subCategory](subcategory_name,category_id)values(N'Kem/Gel cạo râu','5')
insert into[subCategory](subcategory_name,category_id)values(N'Dao cạo râu','5')
insert into[subCategory](subcategory_name,category_id)values(N'Sữa rửa mặt','5')
insert into[subCategory](subcategory_name,category_id)values(N'Tẩy da chết','5')
insert into[subCategory](subcategory_name,category_id)values(N'Kẹo kích thích mọc tóc','5')

select * from [subCategory] sc,[Category] c where sc.category_id=c.category_id

-- brand
--wax
insert into [Brand](brand_name,brand_address)values('Hanz de Fuko',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('KEVIN MURPHY',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('Patricks',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('O’douds',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('Morris Motley',N'Úc')
insert into [Brand](brand_name,brand_address)values('Blumaan',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('STEPHEN NOLAN 603',N'Việt Nam')
insert into [Brand](brand_name,brand_address)values('Dauntless Matte',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('18.21 Man Made',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('FORTE SERIES',N'Mỹ')
--nuoc hoa
insert into [Brand](brand_name,brand_address)values('CALVIN KLEIN',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('BVLGARI',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('TOM FORD',N'Pháp')
insert into [Brand](brand_name,brand_address)values('Dior',N'Pháp')
insert into [Brand](brand_name,brand_address)values('CREED',N'Pháp')
insert into [Brand](brand_name,brand_address)values('LE LABO',N'Pháp')
--skin care
insert into [Brand](brand_name,brand_address)values('BULLDOG SKINCARE',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('APRICUS SKINCARE',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('THE GROOMED MAN CO.',N'Úc')
insert into [Brand](brand_name,brand_address)values('LAB SERIES',N'Bỉ')
--Rau
insert into [Brand](brand_name,brand_address)values('PARKER SAFETY RAZOR',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('SUKIN NATURALS',N'Úc')
insert into [Brand](brand_name,brand_address)values('SUAVECITO',N'Mỹ')
--Thuc pham chuc nang
insert into [Brand](brand_name,brand_address)values('SUGARBEARHAIR',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('NATURE’S BOUNTY',N'Úc')
insert into [Brand](brand_name,brand_address)values('HAIRBURST',N'Anh')





--product
--1 Wax
insert into Product(product_name,subcategory_id,brand_id,price,discount,create_time,update_time,deleted)
values('Hanz de Fuko Quicksand','1','1','550,000','5','GETDATE()','GETDATE()','0')

