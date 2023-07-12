<%-- 
    Document   : header
    Created on : 20-06-2023, 21:16:34
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
        <link rel="stylesheet" href="../css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="../css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="../css/bootstrap.css">

        <!-- Magnific Popup -->
        <link rel="stylesheet" href="../css/magnific-popup.css">

        <!-- Flexslider  -->
        <link rel="stylesheet" href="../css/flexslider.css">

        <!-- Owl Carousel -->
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">

        <!-- Date Picker -->
        <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="../css/style.css">

        <!-- Modernizr JS -->
        <script src="../js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>


        <div id="page">
            <nav class="colorlib-nav" role="navigation">
                <div class="top-menu">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="colorlib-logo"><a href="home"><img src="image/logo.png" width="80%" height="80%" alt="HsMen"/></a></div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>


                                    <li class="active"><a href="home">Trang chủ</a></li>
                                    <li class="has-dropdown">
                                        <a href="shop">Cửa hàng</a>
                                        <ul class="dropdown">
                                            <li><a href="category?c_id=1">SP tạo kiểu</a></li>
                                            <li><a href="category?c_id=2">SP gội rửa</a></li>
                                            <li><a href="category?c_id=3">Nước hoa</a></li>
                                            <li><a href="category?c_id=4">SP dưỡng tóc</a></li>

                                        </ul>
                                    </li>
                                    
                                        <li><a href="about.jsp">Giới thiệu</a></li>
                                        <li><a href="contact.jsp">Liên hệ</a></li>
                                    <c:if test="${sessionScope.account != null}"> 
                                    <c:if test="${sessionScope.role_id==1}"> 
                                        <li class="has-dropdown">
                                        <a href="#">Quản lý</a>
                                        <ul class="dropdown">
                                            <li><a href="manageAccount">Người dùng</a></li>
                                            <li><a href="manageProduct">Sản phẩm</a></li>
                                            <li><a href="#">Đơn hàng</a></li>
                                           
                                        </ul>
                                    </li>
                                    </c:if>
                                    </c:if> 
                                    <li><a href="cart.jsp"><i class="icon-shopping-cart2"></i> Giỏ hàng</a></li>
                                    <c:if test="${sessionScope.account == null}">
                                        <li><a href="login1.jsp"><i class="icon-user2"></i>Đăng nhập</a>/<a href="signup1.jsp">Đăng ký</a></li>
                                    </c:if>   
                                    <c:if test="${sessionScope.account != null}">    
                                        <li class="has-dropdown">
                                            <a href="#"><i class="icon-user2"></i>${sessionScope.username}</a>
                                            <ul class="dropdown">
                                               
                                                <li><a href="profile.jsp"><i class="icon-profile-male" ></i>Profile</a></li>
                                                <li><a href="logout"><i class="icon-log-out" ></i>Đăng xuất</a></li>
                                                

                                            </ul>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="colorlib-subscribe" style="height: 62px">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">

                                <div class="col-md-12">
                                    <form class="form-inline qbstp-header-subscribe" action="search" >
                                        <div class="row">
                                            <div class="col-md-12 col-md-offset-0">
                                                <div class="form-group">
                                                    <input value="${mess}" name="search" type="text" class="form-control" id="email" placeholder="Tìm kiếm sản phẩm">
                                                    <button type="submit" class="btn btn-primary"> <i class="icon-search5" style="padding: 0px 5px"></i> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
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
    </body>
</html>
