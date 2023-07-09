<%-- 
    Document   : checkout
    Created on : 21-06-2023, 13:48:13
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Store Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">

        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.css">

        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css">

        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <!-- Date Picker -->
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css">

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <jsp:include page="header/header.jsp"></jsp:include>
            <aside id="colorlib-hero" class="breadcrumbs">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(image/overlay/andrea-donato-MNu0n-3BIKs-unsplash.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h1>Thanh toán</h1>
                                            <h2 class="bread"><span><a href="home">Trang chủ</a></span>
                                                <span><a href="cart.html">Giỏ hàng</a></span> <span>Thanh toán</span></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>

            <div class="colorlib-shop">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="process-wrap">
                                <div class="process text-center active">
                                    <p><span>01</span></p>
                                    <h3>Giỏ hàng</h3>
                                </div>
                                <div class="process text-center active">
                                    <p><span>02</span></p>
                                    <h3>Thanh toán</h3>
                                </div>
                                <div class="process text-center">
                                    <p><span>03</span></p>
                                    <h3>Hoàn tất thành toán</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7">
                            <form method="post" class="colorlib-form">
                                <h2>Thông tin địa chỉ nhận hàng</h2>
                                <div class="row">
                                    
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label for="fname">Họ và tên</label>
                                            <input type="text" id="name" class="form-control" placeholder="Nhập tên...">
                                        </div>
                                        
                                    </div>
                                    
                                    
                                    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname">Thành Phố</label>
                                            <input type="text" id="towncity" class="form-control" placeholder="Nhập thành phố...">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label for="stateprovince">Quận/Huyện</label>
                                            <input type="text" id="fname" class="form-control" placeholder="Nhập quận/huyện...">
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="fname">Địa chỉ</label>
                                            <input type="text" id="address" class="form-control" placeholder="Nhập địa chỉ..">
                                        </div>
                                        
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="email">Địa chỉ E-mail</label>
                                            <input type="text" id="email" class="form-control" placeholder="xxxxxxxxx@xxxx.xxx.xx">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="Phone">Số điện thoại</label>
                                            <input type="text" id="zippostalcode" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                        <div class="col-md-5">
                            <div class="cart-detail">
                                <h2>Thanh toán</h2>
                                <ul>
                                    <li>
                                        <span>Tổng tiền sản phẩm</span> <span>100.00</span>
                                        <ul >
                                            <li><span>1 x Product Name</span><span>99.00 </span></l>
                                            
                                        </ul>
                                    </li>
                                    <li><span>Phí giao hàng</span> <span>0.00</span></li>
                                    <li><span>Tổng thanh toán</span> <span>180.00(VND)</span></li>
                                </ul>
                            </div>
                            <div class="cart-detail">
                                <h2>Phương thức thanh toán</h2>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" name="optradio">Thanh toán trực tiếp</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" name="optradio">Paypal</label>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p><a href="orderComplete.jsp" class="btn btn-primary">Đặt hàng</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="colorlib-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                            <h2><span>Recommended Products</span></h2>
                            <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-5.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-6.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-7.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-8.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        <jsp:include page="footer/footer.jsp"></jsp:include>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="js/jquery.flexslider-min.js"></script>
        <!-- Owl carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Magnific Popup -->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>
        <!-- Date Picker -->
        <script src="js/bootstrap-datepicker.js"></script>
        <!-- Stellar Parallax -->
        <script src="js/jquery.stellar.min.js"></script>
        <!-- Main -->
        <script src="js/main.js"></script>
    </script>

</body>
</html>


