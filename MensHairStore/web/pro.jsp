<%-- 
    Document   : pro
    Created on : 06-07-2023, 22:00:22
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="colorlib-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                            <h2><span>Sản phẩm mới</span></h2>
                            <p>Khám phá sản phẩm mới nhất tại cửa hàng của chúng tôi! Chúng tôi cập nhật liên tục để mang đến cho bạn những trải nghiệm mới và tốt nhất trên mái tóc</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <c:forEach items="${newproduct}" var="o">
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-8.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.jsp"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="productDetail.jsp"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.jsp"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.jsp">${o.product_name}</a></h3>
                                    <p class="price"><span>${o.price}</span></p>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                </div>
            </div>
    </body>
</html>
