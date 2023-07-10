--drop database hairshop
--create database hairshop
create table [Account](
	[id] int not null identity(1,1) primary key,
	[username] nvarchar(32) ,
	[password] nvarchar(32) ,
	[gmail] nvarchar(150),
	[role_id] int 
	
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
	[order_date] DATETIME ,
	[status] int ,
	[total_money] float ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id)
	 
);
create table [Category](
	[category_id] int not null identity(1,1) primary key,
	
	[category_name] nvarchar(50) 
);


create table [Product](
	[product_id] int not null identity(1,1) primary key,
	[product_name] nvarchar(50) ,
	[category_id] int ,
	[brand_id] int,
	[price] float ,
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	[thumbnail] varchar(500) 
	FOREIGN KEY (category_id) REFERENCES [Category](category_id) ,
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
	[capacity] int ,	
	[fragrance] nvarchar(200) ,
	[title] nvarchar(100) ,
	[des1] nvarchar(2000) ,
	[manual] nvarchar(2000) ,
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


--Account

insert into [Account]([username],[password],gmail,role_id)
values(N'nguyentri16112003',N'minhtri16112003',N'nguyentri16112003@gmail.com',1)
insert into [User]([user_id],[fullname],[address],phone_number,create_time,update_time)
values(1,N'Nguyễn Minh Trí',N'Trường ĐH FPT cơ sở Hòa Lạc',0986669003,getDate(),getDate())

insert into [Account]([username],[password],gmail,role_id)
values(N'datngooo',N'123456',N'datngoo@gmail.com',2)
insert into [User]([user_id],[fullname],[address],phone_number,create_time,update_time)
values(2,N'Nguyễn Đức Đạt',N'Cẩm Phả, Quảng Ninh',0986643257,getDate(),getDate())

insert into [Account]([username],[password],gmail,role_id)
values(N'hung12345',N'123456',N'hung12345@gmail.com',2)
insert into [User]([user_id],[fullname],[address],phone_number,create_time,update_time)
values(3,N'Trần Đức Hùng',N'Quốc Oai, Hà Nội',0983443257,getDate(),getDate())

select * from Account
--Category
insert into[Category](category_name)values(N'Sản phẩm tạo kiểu')
insert into[Category](category_name)values(N'Sản phẩm gội rửa')
insert into[Category](category_name)values(N'Nước hoa')
insert into[Category](category_name)values(N'Sản phẩm dưỡng tóc')

--select * from Category

--subCategory
--1 sp tao kieu
--insert into[subCategory](subcategory_name,category_id)values(N'Wax','1')
--insert into[subCategory](subcategory_name,category_id)values(N'Pomade','1')
--insert into[subCategory](subcategory_name,category_id)values(N'Bột tạo phồng','1')
--insert into[subCategory](subcategory_name,category_id)values(N'Pre-styling','1')
--insert into[subCategory](subcategory_name,category_id)values(N'Gôm','1')
--insert into[subCategory](subcategory_name,category_id)values(N'Lược tạo kiểu','1')
--2 sp goi rua
--insert into[subCategory](subcategory_name,category_id)values(N'Dầu gội','2')
--insert into[subCategory](subcategory_name,category_id)values(N'Dầu xả','2')
--insert into[subCategory](subcategory_name,category_id)values(N'Dầu gội khô','2')
--insert into[subCategory](subcategory_name,category_id)values(N'Kem ủ tóc','2')
--insert into[subCategory](subcategory_name,category_id)values(N'Lược gội đầu','2')

--3 nuoc hoa
--insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa truyền thống','3')
--insert into[subCategory](subcategory_name,category_id)values(N'Nước hoa khô','3')
--insert into[subCategory](subcategory_name,category_id)values(N'Body mist','3')
--4 sp duong toc
--insert into[subCategory](subcategory_name,category_id)values(N'Dầu dưỡng tóc','4')
--insert into[subCategory](subcategory_name,category_id)values(N'Mặt nạ dưỡng tóc','4')
--insert into[subCategory](subcategory_name,category_id)values(N'Kẹo kích thích mọc tóc','4')


--select * from [subCategory] sc,[Category] c where sc.category_id=c.category_id

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
insert into [Brand](brand_name,brand_address)values('GIORGIO ARMANI',N'Pháp')

--Thuc pham chuc nang
insert into [Brand](brand_name,brand_address)values('SUGARBEARHAIR',N'Mỹ')
insert into [Brand](brand_name,brand_address)values('NATURE’S BOUNTY',N'Úc')
insert into [Brand](brand_name,brand_address)values('HAIRBURST',N'Anh')


select * from brand


--product
--1 quicksand
insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Quicksand',1,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/04/quicksand.jpg' )

insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-de-fuko-quicksand.png')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/qs.jpg')
insert into Gallery(product_id,thumbnail) 
values(1,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-qs.png')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(1,56,N'Không mùi',N'Hanz de Fuko Quicksand – Phiên bản mới 2023',
N'Khi hậu châu Á thường rất nóng và đặc biệt tại Việt Nam. Mùa hè rất oi bức và tóc của chúng ta thường dễ bị tiết ra dầu rất nhiều, vì vậy Hanz de Fuko Quicksand đã ra đời để cải thiện chuyện đó. Hanz de Fuko Quicksand lại mang 1 đặc tính rất là đặc biệt, đó là chất Dry Shampoo được chứa trong sản phẩm của thương hiệu này (sẽ có bài viết chi tiết về chất này). Chất này có khả năng hút dầu, mồ hôi của tóc.',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Claymation',1,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/04/HDF_SHOP_Products_CM_02.jpg' )

insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-de-fuko-claymation.png')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/inclaymation.jpg')
insert into Gallery(product_id,thumbnail) 
values(2,'https://clmensstore.com/wp-content/uploads/2017/04/hanz-clay-1-1.png')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(2,56,N'Không mùi',N'Hanz de Fuko Claymation – Phiên bản mới 2023',
N'Hanz de Fuko Claymation là một trong những sản phẩm đi đầu trong phân khúc cao cấp của ngành Grooming và xuất hiện từ thị trường rất sớm. Ưu điểm của Claymation dường như chỉ phát huy ở những mái tóc có sợi tóc trung bình đến dày và cần một độ giữ nếp cao trên tóc.Hanz de Fuko Claymation cấp ẩm mạnh cho mái tóc, vì vậy nếu khách hàng cần sản phẩm cung cấp độ ẩm nhất định thì đừng bỏ qua sản phẩm này.',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Natural Shampoo',2,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-shampoo.jpg' )
insert into Gallery(product_id,thumbnail) 
values(3,'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-shampoo.jpg')
insert into Gallery(product_id,thumbnail) 
values(3,'https://clmensstore.com/wp-content/uploads/2017/05/71BlQ0UvwSL._SL1500-768x768.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(3,237,N'Thảo mộc kết hợp với bạc hà',N'Hanz de Fuko Natural Shampoo – Phiên bản mới 2023',
N'Dầu gội Hanz De Fuko Natural Shampoo làm sạch tự nhiên và hiệu quả nhất giúp tóc trông khỏe mạnh nhất với độ bóng khỏe tuyệt vời. Công thức tiên tiến nhất của Hanz De Fuko bắt đầu với hơn 16 chiết xuất thực vật tự nhiên tinh khiết và hơn 10 axit amin. Cung cấp môi trường tối ưu cho sự phát triển của tóc và bình thường hóa tình trạng da đầu sau lần sử dụng đầu tiên. Với việc tiếp tục sử dụng, tóc trở nên dày hơn, khỏe hơn và dễ vào nếp hơn rõ rệt.',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')


insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Natural Conditioner ',2,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-conditioner-1.jpg' )
insert into Gallery(product_id,thumbnail) 
values(4,'https://clmensstore.com/wp-content/uploads/2017/05/hanz-de-fuko-natural-conditioner-1.jpg')
insert into Gallery(product_id,thumbnail) 
values(4,'https://clmensstore.com/wp-content/uploads/2017/05/eaf287df-f67a-4e7a-9237-a9ea4303.jpg')
insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(4,237,N'Thảo mộc kết hợp với bạc hà',N'Hanz de Fuko Natural Conditioner – Phiên bản mới 2023',
N'Dầu xả Hanz De Fuko Natural Conditioner tối ưu giúp tóc trông và cảm thấy dày nhất với sức mạnh đáng kinh ngạc. Dầu xả Hanz De Fuko khác biệt hoàn toàn so với các phương pháp điều trị dưỡng tóc khác bằng cách chứa hỗn hợp dưỡng ẩm từ các loại thảo mộc và thực vật bảo vệ quý hiếm giúp bảo vệ da đầu khỏi bị khô, kích ứng và bong tróc. Do đó, da đầu có cơ hội được chữa lành trong điều kiện hydrat hóa hoàn hảo. Theo thời gian, tóc bắt đầu trở nên dày hơn, khỏe hơn và chắc khỏe hơn rõ rệt.',
N'Làm sạch tóc bằng nước và dầu gội  
Cho một ít dầu xả ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')


insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Dry Shampoo ',2,1,58,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2018/04/dry1.jpg' )
insert into Gallery(product_id,thumbnail) 
values(5,'https://clmensstore.com/wp-content/uploads/2018/04/dry1.jpg')
insert into Gallery(product_id,thumbnail) 
values(5,'https://www.google.com/imgres?imgurl=https%3A%2F%2Fhanzdefuko.vn%2Fwp-content%2Fuploads%2F2022%2F04%2Fhanz-de-fuko-dry-shampoo-bia-min.jpg&tbnid=9bFJA2kZbiC6iM&vet=12ahUKEwjt7sbnj_n_AhVlgVYBHdkEB2IQMygCegUIARCvAQ..i&imgrefurl=https%3A%2F%2Fhanzdefuko.vn%2Fhanz-de-fuko-dry-shampoo%2F&docid=vYEHQShuXk_N4M&w=1000&h=1000&q=hanz%20de%20fuko%20dry%20shampoo&ved=2ahUKEwjt7sbnj_n_AhVlgVYBHdkEB2IQMygCegUIARCvAQ')
insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(5,240,N'Không mùi',N'Hanz de Fuko Dry Shampoo – Phiên bản mới 2023',
N'Đang cập nhật',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Modify Pomade',1,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/11/Modify_Pomade1.jpg' )

insert into Gallery(product_id,thumbnail) 
values(6,'https://clmensstore.com/wp-content/uploads/2017/11/hanz-de-fuko-modify-pomade.png')
insert into Gallery(product_id,thumbnail) 
values(6,'https://clmensstore.com/wp-content/uploads/2017/11/fy-scaled.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(6,113,N'Không mùi',N'Hanz de Fuko Modify Pomade – Phiên bản mới 2023',
N'Hanz de Fuko Modify Pomade được tạo ra cho những người muốn biến mái tóc bướng bỉnh, ngang bướng thành sự khuất phục hoàn toàn. Hanz De Fuko Two Ton Pomade được pha chế để mang lại độ giữ nếp cực kì cao với độ bóng mượt satin vừa phải. Từ kiểu tóc phồng truyền thống, đến kiểu tóc trên thảm đỏ cổ điển, bạn có thể tin tưởng vào khả năng kiểm soát cả ngày mà không cần lo lắng việc sập form tóc. Thành phần vàng bên trong với: Dầu Lá Sage Kích thích mọc tóc khỏe mạnh. Dầu Lavender Giúp chữa lành da đầu khỏi kích ứng khô và bong tróc. Chiết Xuất Lô Hội Dưỡng tóc và bảo vệ chống lại gàu. Chiết Xuất Tảo Ngăn ngừa rụng tóc và mọc lại tóc bằng cách làm thông thoáng các nang tóc bị tắc do vảy hoặc nấm da đầu.',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz de Fuko Style Lock Hair Spray',1,1,60,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg' )

insert into Gallery(product_id,thumbnail) 
values(7,'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg')
insert into Gallery(product_id,thumbnail) 
values(7,'https://clmensstore.com/wp-content/uploads/2018/04/gom-hanz.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(7,225,N'Không mùi',N'Hanz de Fuko Style Lock Hair Spray – Phiên bản mới 2023',
N'Giữ nếp: Extreme Hold (cực kì mạnh) Có thể re-style tốt và khóa form tốt',
N'Xịt lên tóc sau khi đã hoàn thiện kiểu tóc 
Giữ khoảng cách 20cm từ chai gôm đến tóc lúc xịt 
Dùng tay che phần mắt để tránh gôm xịt trúng mắt ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Dầu dưỡng tóc Hanz De Fuko Hair Oil ',4,1,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2022/12/hanz-de-fuko-oil.jpg' )
insert into Gallery(product_id,thumbnail) 
values(8,'https://clmensstore.com/wp-content/uploads/2022/12/hanz-de-fuko-oil.jpg')
insert into Gallery(product_id,thumbnail) 
values(8,'https://clmensstore.com/wp-content/uploads/2022/12/75322220_273874553510149_4981115678233618642_n-1024x1024.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(8,50,N'Không mùi',N'Dầu dưỡng tóc Hanz De Fuko Hair Oil – Phiên bản mới 2023',
N'Dầu dưỡng tóc Hanz De Fuko Hair Oil với tỷ lệ hoàn hảo của 4 loại tinh dầu được tạo ra để tạm biệt mái tóc khô, xơ rối với độ mềm mại và bóng mượt tự nhiên đặc biệt. Sản phẩm này còn có thể dùng cho râu để mang lại vẻ ngoài khỏe mạnh cho râu mà không gây cảm giác bóng nhờn. Được thiết kế để có trọng lượng nhẹ, loại dầu này sẽ làm mềm, hydrat hóa và dưỡng râu của bạn đồng thời giảm thiểu hoặc loại bỏ gàu. Dầu Argan Tăng độ đàn hồi và bóng mượt cho mái tóc xỉn màu, thiếu sức sống. Dầu Jojoba Giúp tóc dày hơn và giảm rụng tóc. Dầu Vitamin E Tăng cường sức khỏe và độ chắc khỏe của nang tóc. Chiết xuất hạt nho Kích thích mọc tóc.',
N'Làm sạch tóc   
Cho một ít dầu ra tay, xoa đều lên tóc ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Hanz De Fuko Two Ton Pomade',1,1,58,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2022/12/two-ton-pomade.jpg' )
insert into Gallery(product_id,thumbnail) 
values(9,'https://clmensstore.com/wp-content/uploads/2022/12/two-ton-pomade.jpg')
insert into Gallery(product_id,thumbnail) 
values(9,'https://clmensstore.com/wp-content/uploads/2022/12/71rLyywbKmL-1024x733.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(9,113,N'Không mùi',N'Hanz De Fuko Two Ton Pomade – Phiên bản mới 2023',
N'Hanz De Fuko Two Ton Pomade được tạo ra cho những người muốn biến mái tóc bướng bỉnh, ngang bướng thành sự khuất phục hoàn toàn. Hanz De Fuko Two Ton Pomade được pha chế để mang lại độ giữ nếp cực kì cao với độ bóng mượt satin vừa phải. Từ kiểu tóc phồng truyền thống, đến kiểu tóc trên thảm đỏ cổ điển, bạn có thể tin tưởng vào khả năng kiểm soát cả ngày mà không cần lo lắng việc sập form tóc. Thành phần vàng bên trong với: Dầu Lá Sage Kích thích mọc tóc khỏe mạnh. Dầu Lavender Giúp chữa lành da đầu khỏi kích ứng khô và bong tróc. Chiết Xuất Lô Hội Dưỡng tóc và bảo vệ chống lại gàu. Chiết Xuất Tảo Ngăn ngừa rụng tóc và mọc lại tóc bằng cách làm thông thoáng các nang tóc bị tắc do vảy hoặc nấm da đầu.',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')






--2 Kevin murphy
insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Rough Rider ',1,2,59,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2013/06/123123123123-e1626508675603.jpg' )
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/123123123123-e1626508675603.jpg')
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/kPcNQSm-e1528720878603.jpg')
insert into Gallery(product_id,thumbnail) 
values(10,'https://clmensstore.com/wp-content/uploads/2013/06/s8IbYlI-1024x1024.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(10,100,N'Kẹo Caremal , quế',N'Kevin Murphy Rough Rider – Phiên bản mới 2023',
N'Rough Rider sử dụng công nghệ dầu hóa lỏng để chống lại dầu trên tóc của bạn, Ưu điểm đó là bạn sẽ cảm thấy tóc không bị bết do dầu của tóc gây ra. Nhược điểm duy nhất có lẻ là khó để gội Sức mạnh Kevin Murphy không thể chối cãi, từ sáp cho tới dầu gội, xã. Bằng chứng cho thấy số lượng các barber và salon sử dụng và bày bán sản phẩm của Kevin Murphy đang tăng một cách chóng mặt . Thậm chí Daniel Alfonso Men’s Salon – một cái tên mà ai cũng tưởng rằng sẽ mãi mãi gắn liền với Hanz De Fuko vậy mà thời gian gần đây hầu như chuyển hẳn sang Kevin Murphy',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Night Rider ',1,2,59,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/04/312312312-e1626508721413.jpg' )
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/312312312-e1626508721413.jpg')
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/yfmQbsl-e1510992747104.jpg')
insert into Gallery(product_id,thumbnail) 
values(11,'https://clmensstore.com/wp-content/uploads/2017/04/maxresdefault-2.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(11,100,N'Kẹo Caremal , quế',N'Kevin Murphy Night Rider– Phiên bản mới 2023',
N'Kevin Murphy Night Rider mang lại kết cấu thô, mờ và giữ nếp mạnh mẽ cho các kiểu tóc ngắn đến dài. Hãy thắt dây an toàn và giữ vững phong cách của bạn bằng loại Paste kiểm soát tốt nhất của Kevin Murphy. Luôn núp sau cái bóng quá lớn của người anh em Kevin Murphy Rough Rider chỉ vì nó phù hợp hơn với đại đa số chất tóc của người Việt. Nhưng không vì thế mà Night Rider lại thiếu đi sự chỉnh chu. Kevin Murphy Night Rider vẫn luôn được đánh giá rất cao bởi nhiều KOLs có ảnh hưởng trong cộng đồng cũng như cả nhưng “tay chơi sáp” chính hiệu. Night Rider hoàn toàn làm tốt nhiệm vụ của nó khi đặt nó ở đúng chỗ và sử dụng nó đúng cách. Thẫm chí nó còn làm tốt hơn Rough Rider ở khâu gội rửa vì sản phẩm này sẽ trôi ngay khi bạn xả tóc với nước.',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail)
values(N'Kevin Murphy Session Spray ',1,2,65,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2017/05/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg' )
insert into Gallery(product_id,thumbnail) 
values(12,'https://clmensstore.com/wp-content/uploads/2017/05/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg')
insert into Gallery(product_id,thumbnail) 
values(12,'https://clmensstore.com/wp-content/uploads/2017/05/gom-xit-toc-kevin-murphy-sesion.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(12,400,N'Không mùi',N'Kevin Murphy Session Spray – Phiên bản mới 2023',
N'Không trọng lượng, giữ chắc chắn Chống ẩm Được thiết kế với khả năng giữ nếp rất lâu Được làm giàu với các loại dầu thơm tự nhiên Giúp bạn tạo vô số kiểu lâu dài Thích hợp cho mọi loại tóc Không chứa Sulphate, paraben và không chứa chất độc hại',
N'Xịt lên tóc sau khi đã hoàn thiện kiểu tóc 
Giữ khoảng cách 20cm từ chai gôm đến tóc lúc xịt 
Dùng tay che phần mắt để tránh gôm xịt trúng mắt ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Touchable ',1,2,65,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2022/10/Thiet-ke-chua-co-ten-1-1.png' )
insert into Gallery(product_id,thumbnail) 
values(13,'https://clmensstore.com/wp-content/uploads/2022/10/Thiet-ke-chua-co-ten-1-1.png')
insert into Gallery(product_id,thumbnail) 
values(13,'https://clmensstore.com/wp-content/uploads/2022/10/1633512959.374403574742.jpeg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(13,250,N'Không mùi',N'Kevin Murphy Touchable – Phiên bản mới 2023',
N'Kevin Murphy Touchable tạo nên một lớp giữ nếp nhẹ nhàng duy trì kết cấu tóc, không gây ra bất kì độ nặng cho mái tóc của bạn. Ngoài ra thành phần từ Kevin Murphy Touchable chứa các chất chống oxy hóa lành mạnh từ chiết xuất hoa dâm, cây kế sữa , hoa oải hương biển và dầu hạt cà rốt. Dầu hạt cà rốt sẽ hoạt động như một chất làm mềm và chống oxy hóa trên tóc. Các loại chiết xuất từ hoa dâm bụt, cây kế sữa, và cây hải đường đều được lựa chọn cẩn thận để cung cấp hỗn hợp các chất chống oxy hóa để hỗ trợ tạo ra chức năng bảo vệ và dưỡng, đồng thời làm cho tóc óng ả và khỏe mạnh.',
N'Xịt lên tóc sau khi đã hoàn thiện kiểu tóc 
Giữ khoảng cách 20cm từ chai gôm đến tóc lúc xịt 
Dùng tay che phần mắt để tránh gôm xịt trúng mắt ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Bedroom Hair – Flexible Texturising ',1,2,69,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2021/06/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg' )
insert into Gallery(product_id,thumbnail) 
values(14,'https://clmensstore.com/wp-content/uploads/2021/06/KMU505-_BEDROOMHAIR_AEROSOL_235ML-01.jpg')
insert into Gallery(product_id,thumbnail) 
values(14,'https://clmensstore.com/wp-content/uploads/2021/06/BedroomHair_1-2.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(14,235,N'Không mùi',N'Kevin Murphy Bedroom Hair – Flexible Texturising – Phiên bản mới 2023',
N'Gôm Kevin Murphy Bedroom Hair – Là sản phẩm gôm xịt tóc giúp cho mái tóc của bạn có nhiều texture và trở nên lãng tử hơn như khi bạn vừa thức dậy trong phòng ngủ. Giúp cho mái tóc của bạn trở nên bồng bềnh dễ kiểm soát hơn như đang không phải bỏ ra quá nhiều thời gian và công sức để chăm sóc mái tóc của mình (nhưng trên thực tế thì có nha).Giúp mang lại độ giữ nếp linh hoạt, không gây cứng tóc Chứa bộ ba thành phần giúp tăng cường texture và bảo vệ tóc Giúp tăng cường độ đàn hồi và độ dẻo dai của tóc Giúp bảo vệ và chống lại các tác nhân từ môi trường Giúp dưỡng và làm chắc tóc của bạn Không chứa Sulphate, paraben và các chất độc hại',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Body Builder ',2,2,69,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2022/01/Kevin-Smooth-Again-Wash.png' )
insert into Gallery(product_id,thumbnail) 
values(15,'https://clmensstore.com/wp-content/uploads/2022/01/Kevin-Smooth-Again-Wash.png')
insert into Gallery(product_id,thumbnail) 
values(15,'https://clmensstore.com/wp-content/uploads/2022/01/pack-kevin-murphy-smooth-it-all-over-1-768x768.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(15,350,N'Mùi hương cực kì thơm, dễ chịu với mùi mận kakadu',N'Kevin Murphy Body Builder – Phiên bản mới 2023',
N'Công dụng Kevin Murphy Body Builder : Bảo vệ nhiệt khỏi máy sấy, hay còn gọi là bước Pre-styling Hold sau khi pre xong sẽ ở mức Medium Hold. Tóc cực kì mượt, không bị rít sau khi Pre-styling với Mousse đến từ Kevin . Mùi hương cực kì thơm, dễ chịu với mùi mận kakadu Cung cấp dưỡng chất rất nhiều, có lẻ bạn đã quá quen thuộc với thương hiệu cao cấp Kevin Murphy Thời gian sử dụng hơn 4 tháng. Không chứa các chất hóa học độc hại hoặc chất bảo quản paraben trong sản phẩm Sản xuất tại Mỹ, Thương hiệu đến từ nước Úc',
N'Xịt lên tóc sau khi đã hoàn thiện kiểu tóc 
Giữ khoảng cách 20cm từ chai gôm đến tóc lúc xịt 
Dùng tay che phần mắt để tránh gôm xịt trúng mắt ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Balancing.Wash',2,2,75,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/08/kevin-murphy-balancing-wash-250ml.jpg' )
insert into Gallery(product_id,thumbnail) 
values(16,'https://clmensstore.com/wp-content/uploads/2020/08/kevin-murphy-balancing-wash-250ml.jpg')
insert into Gallery(product_id,thumbnail) 
values(16,'https://clmensstore.com/wp-content/uploads/2020/08/8e3cf104201e8ee14314f1b1bc6cffa1.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(16,1000,N'Mùi mận',N'Kevin Murphy Balancing.Wash– Phiên bản mới 2023',
N'Kevin Murphy Balancing.Wash – Dầu gội cân bằng dầu cho tóc. Khi bạn muốn một loại dầu gội đầu hàng ngày, tất cả chỉ là tìm sự cân bằng phù hợp… BALANCING.WASH của chúng tôi thực hiện chính xác điều đó bằng cách làm sạch tóc và da đầu một cách nhẹ nhàng và cực kì hiệu quả. Hỗn hợp giàu chất chống oxy hóa của nó giúp tóc chắc khỏe đồng thời giúp tóc cân bằng lại lượng dầu thừa trên tóc của bạn.',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Maxi.Wash',2,2,58,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/07/keVIN-mURPHY-MAXI.WASH_.png' )
insert into Gallery(product_id,thumbnail) 
values(17,'https://clmensstore.com/wp-content/uploads/2020/07/keVIN-mURPHY-MAXI.WASH_.png')
insert into Gallery(product_id,thumbnail) 
values(17,'https://clmensstore.com/wp-content/uploads/2020/07/image001_20191210172619-768x768.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(17,1000,N'Mùi mận',N'Kevin Murphy Maxi.Wash– Phiên bản mới 2023',
N'Kevin Murphy Maxi.Wash – Dầu gội cân bằng dầu cho tóc. Khi bạn muốn một loại dầu gội đầu hàng ngày, tất cả chỉ là tìm sự cân bằng phù hợp… BALANCING.WASH của chúng tôi thực hiện chính xác điều đó bằng cách làm sạch tóc và da đầu một cách nhẹ nhàng và cực kì hiệu quả. Hỗn hợp giàu chất chống oxy hóa của nó giúp tóc chắc khỏe đồng thời giúp tóc cân bằng lại lượng dầu thừa trên tóc của bạn.',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Young.Again.Wash',2,2,65,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Wash-.jpg' )
insert into Gallery(product_id,thumbnail) 
values(18,'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Wash-.jpg')
insert into Gallery(product_id,thumbnail) 
values(18,'https://clmensstore.com/wp-content/uploads/2020/07/kevin-510x765.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(18,1000,N'Mùi mận',N'Kevin Murphy Young.Again.Wash– Phiên bản mới 2023',
N'Kevin Murphy Young.Again.Wash – Dầu gội cân bằng dầu cho tóc. Khi bạn muốn một loại dầu gội đầu hàng ngày, tất cả chỉ là tìm sự cân bằng phù hợp… BALANCING.WASH của chúng tôi thực hiện chính xác điều đó bằng cách làm sạch tóc và da đầu một cách nhẹ nhàng và cực kì hiệu quả. Hỗn hợp giàu chất chống oxy hóa của nó giúp tóc chắc khỏe đồng thời giúp tóc cân bằng lại lượng dầu thừa trên tóc của bạn.',
N'Làm ước tóc bằng nước 
Cho một ít dầu gội ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Repair-me.Wash',2,2,58,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/07/kvm021_kevinmurphy_repairmewash_1_1560x1960-x85hl.jpg' )
insert into Gallery(product_id,thumbnail) 
values(19,'https://clmensstore.com/wp-content/uploads/2020/07/kvm021_kevinmurphy_repairmewash_1_1560x1960-x85hl.jpg')
insert into Gallery(product_id,thumbnail) 
values(19,'https://clmensstore.com/wp-content/uploads/2020/07/kevin-murphy-1024x768.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(19,1000,N'Mùi bơ',N'Kevin Murphy Repair-me.Wash – Phiên bản mới 2023',
N'Kevin Murphy Repair-me.Rinse là dầu xả dành cho tóc hư tổn, xơ bởi hoá chất gây ra. Dầu xả dưỡng và tăng cường độ đàn hồi của chúng tôi giúp phục hồi và bảo vệ tóc tóc.  Với một sức mạnh của ‘protein’ và enzyme, REPAIR-ME.RINSE cung cấp dầu bôi trơn nhẹ cho tóc, đồng thời giúp phục hồi và bảo vệ chống lại hư tổn trong tương lai.Lợi ích của Kevin Murphy Repair-me.Rinse Giúp nuôi dưỡng, phục hồi và bổ sung các dưỡng chất cần thiết cho tóc Một sự pha trộn đầy mạnh mẽ của các protein và enzyme. Giúp quá trình phục hồi tóc trở nên nhanh chống Giúp tóc cảm thấy mượt mà và chắc khỏe hơn Cung cấp và tăng cường độ ẩm cho tóc Lý tưởng cho tất cả các loại tóc đang bị hư tổn Không chất tẩy rửa (sulfate) và chất bảo quản gây ung thư (paraben)',
N'Làm sạch tóc bằng nước và dầu gội  
Cho một ít dầu xả ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Smooth Again.Rinse',2,2,75,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2022/02/Kevin-Smooth-Again-Rinse.png' )
insert into Gallery(product_id,thumbnail) 
values(20,'https://clmensstore.com/wp-content/uploads/2022/02/Kevin-Smooth-Again-Rinse.png')
insert into Gallery(product_id,thumbnail) 
values(20,'https://clmensstore.com/wp-content/uploads/2022/02/Kevin-Murphy-Smooth.Again-subiektywnablog-6-768x512.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(20,1000,N'Mùi bơ',N'Kevin Murphy Smooth Again.Rinse – Phiên bản mới 2023',
N'Kevin Murphy Smooth Again.Rinse là dầu xả dành cho tóc hư tổn, xơ bởi hoá chất gây ra. Dầu xả dưỡng và tăng cường độ đàn hồi của chúng tôi giúp phục hồi và bảo vệ tóc tóc.  Với một sức mạnh của ‘protein’ và enzyme, REPAIR-ME.RINSE cung cấp dầu bôi trơn nhẹ cho tóc, đồng thời giúp phục hồi và bảo vệ chống lại hư tổn trong tương lai.Lợi ích của Kevin Murphy Repair-me.Rinse Giúp nuôi dưỡng, phục hồi và bổ sung các dưỡng chất cần thiết cho tóc Một sự pha trộn đầy mạnh mẽ của các protein và enzyme. Giúp quá trình phục hồi tóc trở nên nhanh chống Giúp tóc cảm thấy mượt mà và chắc khỏe hơn Cung cấp và tăng cường độ ẩm cho tóc Lý tưởng cho tất cả các loại tóc đang bị hư tổn Không chất tẩy rửa (sulfate) và chất bảo quản gây ung thư (paraben)',
N'Làm sạch tóc bằng nước và dầu gội  
Cho một ít dầu xả ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Kevin Murphy Young.Again.Rinse',2,2,75,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Rinse_.jpg' )
insert into Gallery(product_id,thumbnail) 
values(21,'https://clmensstore.com/wp-content/uploads/2020/07/Kevin-Murphy-Young.Again_.Rinse_.jpg')
insert into Gallery(product_id,thumbnail) 
values(21,'https://clmensstore.com/wp-content/uploads/2020/07/P1013756.jpg')

insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(21,1000,N'Mùi bơ',N'Kevin Murphy Young.Again.Rinse – Phiên bản mới 2023',
N'Kevin Murphy Young.Again.Rinse là dầu xả dành cho tóc hư tổn, xơ bởi hoá chất gây ra. Dầu xả dưỡng và tăng cường độ đàn hồi của chúng tôi giúp phục hồi và bảo vệ tóc tóc.  Với một sức mạnh của ‘protein’ và enzyme, REPAIR-ME.RINSE cung cấp dầu bôi trơn nhẹ cho tóc, đồng thời giúp phục hồi và bảo vệ chống lại hư tổn trong tương lai.Lợi ích của Kevin Murphy Repair-me.Rinse Giúp nuôi dưỡng, phục hồi và bổ sung các dưỡng chất cần thiết cho tóc Một sự pha trộn đầy mạnh mẽ của các protein và enzyme. Giúp quá trình phục hồi tóc trở nên nhanh chống Giúp tóc cảm thấy mượt mà và chắc khỏe hơn Cung cấp và tăng cường độ ẩm cho tóc Lý tưởng cho tất cả các loại tóc đang bị hư tổn Không chất tẩy rửa (sulfate) và chất bảo quản gây ung thư (paraben)',
N'Làm sạch tóc bằng nước và dầu gội  
Cho một ít dầu xả ra tay, xoa đều lên tóc 
Rửa sạch lại với nước. ')

-- Forte series
insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Forte Series Molding Paste',1,10,55,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2020/10/Forte-Series-Molding-Paste-768x768.jpg' )

insert into Gallery(product_id,thumbnail) 
values(22,'https://clmensstore.com/wp-content/uploads/2020/10/paste_2048x2048.png')


insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(22,75,N'Cam chanh',N'Forte Series Molding Paste – Phiên bản mới 2023',
N'Forte Series Molding Paste mang lại vẻ ngoài đầy đặn và dày hơn cho tóc mỏng từ trung bình đến mỏng, đồng thời đóng vai trò là Pre-styling nếu bạn cần thiết. Công thức hòa tan trong nước giúp tóc bạn không bị bết dính hoặc bóng nhờn và gội sạch một cách dễ dàng. Được thiết kế và sản xuất tại Mỹ. Không chứa paraben và sulfat. Độ giữ nếp: High hold (cao) Linh hoạt, nhẹ tóc và dễ dàng re-style lại Tăng thêm Volume khi dùng để Pre-styling Làm tóc bạn trở nên dày hơn, rất phù hợp với tóc mỏng Dễ dàng gội rửa với nước Apply lên tóc dễ dàng, hạn chế bị đứt tóc Sản xuất tại Mỹ',
N'Bước 1: Gội sạch tóc, dùng khăn lau tóc (để tóc ẩm) 
Bước 2: Dùng 1/3 đốt tay lượng sáp để Pre-styling hoặc dùng các sản phẩm Pre-styling tại HsMen. Apply lên tóc và sấy + tạo kiểu với lược phồng 
Bước 3: Sau khi sấy xong, Dùng 1/2 đốt tay sáp  tạo kiểu lại. Có thể dùng 1/2 đốt tay hoặc 1/3 đốt tay để tạo kiểu, tùy độ giữ nếp bạn muốn')


-- Nuoc hoa 

insert into Product(product_name,category_id,brand_id,price ,create_time,update_time,thumbnail )
values(N'Acqua Di Giò',3,17,100,GETDATE(),GETDATE(),'https://clmensstore.com/wp-content/uploads/2019/03/ACQUA-DI-GIO-%E2%80%93-EDT-1.png' )

insert into Gallery(product_id,thumbnail) 
values(23,'https://clmensstore.com/wp-content/uploads/2019/03/5ad55d5b-5546-4ed3-997a-10d382b718ad_1.46c9197e274dd9c61487512503cb1a3d-247x247.jpeg')


insert into Info(info_id,capacity,fragrance,title,des1,manual)
values(23,100,N'Quả cam, Quả chanh xanh, Quả quýt hồng, Hoa nhài, Cam Bergamot, Quả chanh vàng, Hoa cam Neroli',N'Acqua Di Giò Pour Homme EDT by Giorgio Armani (giò trắng)  – Phiên bản mới 2023',
N'Hương thơm Acqua di Giò được chế tạo ra vào năm 1996 bởi Alberto Morillas. Lấy cảm hứng từ vẻ đẹp của Pantellerie, nơi ông đã trải qua kỳ nghỉ của mình, Armani tạo ra mùi thơm của Aqua di Gio cho cả nam giới lẫn nữ giới. Hương thơm dành cho nam giới là một mùi hương của sự tự do, đầy gió và nước. Hỗn hợp mùi hương này được hình thành từ sự hòa hợp hoàn hảo giữa mùi hương ngòn ngọt mằn mặn của nước biển và ánh nắng ấm áp mơn trớn trên làn da của bạn. Aqua di Gio đầy ánh nắng mặt trời Địa Trung Hải nóng như thiêu đốt. Hương cam quýt đăng đắng với hương thơm của hương thảo quyện với vị mặn của biển và tinh chất hoa nhài trong suốt. Tầng hương cuối thơm mùi gỗ lưu lại mùi xạ hương ấm áp làm cho các mùi hương gay gắt của gia vị trở nên mềm mại hơn.Acqua Di Giò là một kiệt tác và là một tác phẩm kinh điển. Mùi hương này đã đứng vững qua thử thách của thời gian. Và được bán chạy ở khắp mọi nơi. Một mùi hương khiến người người hài lòng và luôn nhận được nhiều lời khen. Đây là một mùi hương rất thơm và tuyệt đối an toàn, khuyến khích dành cho những người làm việc trong văn phòng hoặc sử dụng trong những ngày hè.',
N'Thời điểm khuyên dùng: Ngày, Đêm, Hạ. Xịt lên các phần như cổ, cổ tay,..(Lưu hương lâu hơn trên quần áo)')



select * from product p,Gallery g where p.product_id=g.product_id
select* from Product p, Category c where p.category_id=c.category_id