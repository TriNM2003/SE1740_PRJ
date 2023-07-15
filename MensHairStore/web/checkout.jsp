<%-- 
    Document   : checkout
    Created on : 21-06-2023, 13:48:13
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:set var="o" value="${requestScope.cart}"/>
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
                            <form action="checkoutControll " method="POST" class="colorlib-form">
                                <h2>Thông tin địa chỉ nhận hàng</h2>
                                <div class="row">

                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label for="fname">Họ và tên</label>
                                            <input name="fullname"type="text" id="name" class="form-control" value="${us.fullname}"placeholder="Nhập tên..." required>
                                    </div>

                                </div>





                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="fname">Địa chỉ</label>
                                        <input name="address"type="text" id="address" class="form-control" value="${us.address}"placeholder="Nhập địa chỉ.."required>
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="companyname">Note</label>
                                        <input name="note"type="text" id="towncity" class="form-control" placeholder="Nhập lưu ý ..."required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6">
                                        <label for="email">Địa chỉ E-mail</label>
                                        <input name="gmail"type="text" id="email" class="form-control" value="${sessionScope.gmail}" readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Phone">Số điện thoại</label>
                                        <input name="phone_number"type="text" id="zippostalcode" class="form-control" value="${us.phone_number}" placeholder="098xxxxxx"required>
                                    </div>
                                    
                                    
                                    <div class="col-md-12" style="margin-top:20px">
                                            <input type="hidden" name="total" value="${requestScope.cart.getTotalMoney()+2}"/>
                                            <input type="submit" class="btn btn-primary" value="Đặt hàng"/>
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
                                    <span>Tổng tiền sản phẩm</span> <span>$${requestScope.cart.getTotalMoney()}</span>
                                    
                                    <ul >
                                        <c:forEach items="${o.items}" var="i">
                                            <li><span >${i.quantity} x ${i.product.product_name}</span><span>$${i.product.price*i.quantity*(1-i.product.discount/100)} </span></l>
                                        </c:forEach>
                                    </ul>
                                    
                                </li>
                                
                                <li><span>Phí giao hàng</span> <span>$2.00</span></li>
                                <li><span>Tổng thanh toán</span> <span>$${requestScope.cart.getTotalMoney()+2}</span></li>
                                
                            </ul>
                        </div>
                        <div class="cart-detail">
                            <h2>Phương thức thanh toán</h2>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio" checked>Thanh toán trực tiếp</label>
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


