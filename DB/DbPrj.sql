--create  database hairshop

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
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	
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

select*from Account

--Category
insert into[Category](category_name)values(N'Sản phẩm tạo kiểu')
insert into[Category](category_name)values(N'Sản phẩm gội rửa')
insert into[Category](category_name)values(N'Nước hoa')
insert into[Category](category_name)values(N'Sản phẩm dưỡng tóc')

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
insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa truyền thống','3')
insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa khô','3')
insert into[subCategory](subcategory_name,category_id)values(N'Body mist','3')
--4 sp duong toc
insert into[subCategory](subcategory_name,category_id)values(N'Dầu dưỡng tóc','4')
insert into[subCategory](subcategory_name,category_id)values(N'Mặt nạ dưỡng tóc','4')
insert into[subCategory](subcategory_name,category_id)values(N'Kẹo kích thích mọc tóc','4')


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

--Thuc pham chuc nang
insert into [Brand](brand_name,brand_address)values('SUGARBEARHAIR',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('NATURE’S BOUNTY',N'Úc')
insert into [Brand](brand_name,brand_address)values('HAIRBURST',N'Anh')


select * from brand


--product
--1 quicksand
insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Quicksand',1,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/quicksand.jpg')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-de-fuko-quicksand.png')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/qs.jpg')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-qs.png')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/maxresdefault.jpg')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(1,56,'Hanz de Fuko Quicksand','không mùi','Khi hậu châu Á thường rất nóng và đặc biệt tại Việt Nam. Mùa hè rất oi bức và tóc của chúng ta thường dễ bị tiết ra dầu rất nhiều, vì vậy Hanz de Fuko Quicksand đã ra đời để cải thiện chuyện đó. Hanz de Fuko Quicksand lại mang 1 đặc tính rất là đặc biệt, đó là chất Dry Shampoo được chứa trong sản phẩm của thương hiệu này (sẽ có bài viết chi tiết về chất này). Chất này có khả năng hút dầu, mồ hôi của tóc.','Cực kì nhẹ tóc, thích hợp với những bạn tóc mỏng, trung bình. Hút dầu rất tốt, sản phẩm giúp tóc bạn giảm lượng dầu tiết ra, trông tóc sạch sẽ và tự nhiên.')


insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Claymation',1,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/HDF_SHOP_Products_CM_02.jpg')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-de-fuko-claymation.png')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/inclaymation.jpg')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-clay-1-1.png')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/maxresdefault-1.jpg')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(2,56,'Hanz de Fuko Claymation','không mùi','Khi hậu châu Á thường rất nóng và đặc biệt tại Việt Nam. Mùa hè rất oi bức và tóc của chúng ta thường dễ bị tiết ra dầu rất nhiều, vì vậy Hanz de Fuko Quicksand đã ra đời để cải thiện chuyện đó. Hanz de Fuko Quicksand lại mang 1 đặc tính rất là đặc biệt, đó là chất Dry Shampoo được chứa trong sản phẩm của thương hiệu này (sẽ có bài viết chi tiết về chất này). Chất này có khả năng hút dầu, mồ hôi của tóc.','Cực kì nhẹ tóc, thích hợp với những bạn tóc mỏng, trung bình. Hút dầu rất tốt, sản phẩm giúp tóc bạn giảm lượng dầu tiết ra, trông tóc sạch sẽ và tự nhiên.')
select * from info
insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Natural Shampoo',7,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(3,'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-shampoo.jpg')
insert into Gallery(product_id,thumbnail) 
values(3,'https://clmensstore.com/wp-content/uploads/2017/05/71BlQ0UvwSL._SL1500-768x768.jpg')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(3,237,'Hanz de Fuko Natural Shampoo',' Thảo mộc kết hợp với bạc hà','','')


insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Natural Conditioner ',8,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(4,'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-conditioner-1.jpg')
insert into Gallery(product_id,thumbnail) 
values(4,'https://clmensstore.com/wp-content/uploads/2017/05/eaf287df-f67a-4e7a-9237-a9ea4303.jpg')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(4,237,'Hanz de Fuko Natural Conditioner','','')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Dry Shampoo ',9,1,580.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(5,'https://clmensstore.com/wp-content/uploads/2018/04/dry1.jpg')
insert into Gallery(product_id,thumbnail) 
values(5,'https://www.google.com/imgres?imgurl=https%3A%2F%2Fhanzdefuko.vn%2Fwp-content%2Fuploads%2F2022%2F04%2Fhanz-de-fuko-dry-shampoo-bia-min.jpg&tbnid=9bFJA2kZbiC6iM&vet=12ahUKEwjt7sbnj_n_AhVlgVYBHdkEB2IQMygCegUIARCvAQ..i&imgrefurl=https%3A%2F%2Fhanzdefuko.vn%2Fhanz-de-fuko-dry-shampoo%2F&docid=vYEHQShuXk_N4M&w=1000&h=1000&q=hanz%20de%20fuko%20dry%20shampoo&ved=2ahUKEwjt7sbnj_n_AhVlgVYBHdkEB2IQMygCegUIARCvAQ')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(5,240,'Hanz de Fuko Dry Shampoo',' Thảo mộc kết hợp với bạc hà','','')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Modify Pomade',2,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(6,'https://clmensstore.com/wp-content/uploads/2017/11/Modify_Pomade1.jpg')
insert into Gallery(product_id,thumbnail) 
values(6,'https://clmensstore.com/wp-content/uploads/2017/11/hanz-de-fuko-modify-pomade.png')
insert into Gallery(product_id,thumbnail) 
values(6,'https://clmensstore.com/wp-content/uploads/2017/11/fy-scaled.jpg')
insert into Info(info_id,capacity,title,fragrance,des1,des2)
values(6,56,'Hanz de Fuko Modify Pomade','hương nhiệt đới nhẹ nhàng','Khi hậu châu Á thường rất nóng và đặc biệt tại Việt Nam. Mùa hè rất oi bức và tóc của chúng ta thường dễ bị tiết ra dầu rất nhiều, vì vậy Hanz de Fuko Quicksand đã ra đời để cải thiện chuyện đó. Hanz de Fuko Quicksand lại mang 1 đặc tính rất là đặc biệt, đó là chất Dry Shampoo được chứa trong sản phẩm của thương hiệu này (sẽ có bài viết chi tiết về chất này). Chất này có khả năng hút dầu, mồ hôi của tóc.','Cực kì nhẹ tóc, thích hợp với những bạn tóc mỏng, trung bình. Hút dầu rất tốt, sản phẩm giúp tóc bạn giảm lượng dầu tiết ra, trông tóc sạch sẽ và tự nhiên.')


insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz de Fuko Style Lock Hair Spray',5,1,600.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(7,'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg')
insert into Gallery(product_id,thumbnail) 
values(7,'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg')
insert into Gallery(product_id,thumbnail) 
values(7,'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Dầu dưỡng tóc Hanz De Fuko Hair Oil ',15,1,550.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(8,'https://clmensstore.com/wp-content/uploads/2022/12/hanz-de-fuko-oil.jpg')
insert into Gallery(product_id,thumbnail) 
values(8,'https://clmensstore.com/wp-content/uploads/2022/12/75322220_273874553510149_4981115678233618642_n-1024x1024.jpg')


insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Hanz De Fuko Two Ton Pomade',2,1,580.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(9,'https://clmensstore.com/wp-content/uploads/2022/12/two-ton-pomade.jpg')
insert into Gallery(product_id,thumbnail) 
values(9,'https://clmensstore.com/wp-content/uploads/2022/12/71rLyywbKmL-1024x733.jpg')







--2 Kevin murphy
insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Rough Rider ',1,2,599.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/123123123123-e1626508675603.jpg')
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/kPcNQSm-e1528720878603.jpg')
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/s8IbYlI-1024x1024.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Night Rider ',1,2,599.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/312312312-e1626508721413.jpg')
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/yfmQbsl-e1510992747104.jpg')
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/maxresdefault-2.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Session Spray ',5,2,650.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(12,'https://clmensstore.com/wp-content/uploads/2017/05/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg')
insert into Gallery(product_id,thumbnail) 
values(12,'https://clmensstore.com/wp-content/uploads/2017/05/gom-xit-toc-kevin-murphy-sesion.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Touchable ',5,2,650.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(13,'https://clmensstore.com/wp-content/uploads/2022/10/Thiet-ke-chua-co-ten-1-1.png')
insert into Gallery(product_id,thumbnail) 
values(13,'https://clmensstore.com/wp-content/uploads/2022/10/1633512959.374403574742.jpeg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Bedroom Hair – Flexible Texturising ',5,2,690.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(14,'https://clmensstore.com/wp-content/uploads/2021/06/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg')
insert into Gallery(product_id,thumbnail) 
values(14,'https://clmensstore.com/wp-content/uploads/2021/06/BedroomHair_1-2.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Bedroom Hair – Flexible Texturising ',7,2,750.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(15,'https://clmensstore.com/wp-content/uploads/2022/01/Kevin-Smooth-Again-Wash.png')
insert into Gallery(product_id,thumbnail) 
values(15,'https://clmensstore.com/wp-content/uploads/2022/01/pack-kevin-murphy-smooth-it-all-over-1-768x768.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Balancing.Wash',7,2,750.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(16,'https://clmensstore.com/wp-content/uploads/2020/08/kevin-murphy-balancing-wash-250ml.jpg')
insert into Gallery(product_id,thumbnail) 
values(16,'https://clmensstore.com/wp-content/uploads/2020/08/8e3cf104201e8ee14314f1b1bc6cffa1.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Maxi.Wash',7,2,580.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(17,'https://clmensstore.com/wp-content/uploads/2020/07/keVIN-mURPHY-MAXI.WASH_.png')
insert into Gallery(product_id,thumbnail) 
values(17,'https://clmensstore.com/wp-content/uploads/2020/07/image001_20191210172619-768x768.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Young.Again.Wash',7,2,650.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(18,'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Wash-.jpg')
insert into Gallery(product_id,thumbnail) 
values(18,'https://clmensstore.com/wp-content/uploads/2020/07/kevin-510x765.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Repair-me.Wash',7,2,580.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(19,'https://clmensstore.com/wp-content/uploads/2020/07/kvm021_kevinmurphy_repairmewash_1_1560x1960-x85hl.jpg')
insert into Gallery(product_id,thumbnail) 
values(19,'https://clmensstore.com/wp-content/uploads/2020/07/kevin-murphy-1024x768.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Smooth Again.Rinse',8,2,750.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(20,'https://clmensstore.com/wp-content/uploads/2022/02/Kevin-Smooth-Again-Rinse.png')
insert into Gallery(product_id,thumbnail) 
values(20,'https://clmensstore.com/wp-content/uploads/2022/02/Kevin-Murphy-Smooth.Again-subiektywnablog-6-768x512.jpg')

insert into Product(product_name,subcategory_id,brand_id,price ,create_time,update_time )
values('Kevin Murphy Young.Again.Rinse',8,2,750.000,GETDATE(),GETDATE() )
insert into Gallery(product_id,thumbnail) 
values(21,'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Rinse_.jpg')
insert into Gallery(product_id,thumbnail) 
values(21,'https://clmensstore.com/wp-content/uploads/2020/07/P1013756.jpg')






select * from product p,Gallery g where p.product_id=g.product_id
