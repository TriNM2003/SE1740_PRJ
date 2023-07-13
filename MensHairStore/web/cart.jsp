<%-- 
    Document   : cart
    Created on : 21-06-2023, 13:41:47
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
        <<link rel="stylesheet" href="css/admin.css"/>
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
                                            <h1>Giỏ hàng</h1>
                                            <h2 class="bread"><span><a href="home">Trang chủ</a></span>  <span>Giỏ hàng</span></h2>
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
                                <div class="process text-center">
                                    <p><span>02</span></p>
                                    <h3>Thanh toán</h3>
                                </div>
                                <div class="process text-center">
                                    <p><span>03</span></p>
                                    <h3>Hoàn tất đơn hàng</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row-pb-md">
                        <div class="col-md-10 col-md-offset-1">
                            
                                <div class="table-wrapper">
                                    
                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th></th>
                                                <th>Tên</th>                                               
                                                <th>Số lượng</th>    
                                                <th>Giảm giá</th>
                                                <th>Giá</th>
                                                <th>Tổng</th>                  
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:set var="o" value="${requestScope.cart}"/>
                                        <c:set var="tt" value="0"/>
                                        <c:forEach items="${o.items}" var="i">
                                            <c:set var="tt" value="${tt+1}"/>
                                        <tr>
                                            <td>${tt}</td>
                                            <td style="width: 100px"><img src="${i.product.thumbnail} " style="width: 40%"></td>
                                            <td>${i.product.product_name}</td>
                                            
                                            <td>
                                                <button><a href="process?num=-1&p_id=${i.product.product_id}">-</a></button>
                                                ${i.quantity}
                                                <button><a href="process?num=1&p_id=${i.product.product_id}">+</a></button>
                                            </td>
                                            <td>${i.product.discount}%</td>
                                            <td>$${i.product.price}</td>
                                            <td>$${i.product.price*i.quantity*(1-i.product.discount/100)}</td>
                                            
                                            
                                            <td>

                                                <a href="#"  class="delete" data-toggle="modal"><i class="icon-delete" data-toggle="tooltip" title="Xóa"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach> 
                                    </tbody>
                                </table>
                                
                            
                        </div>
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="total-wrap">
                                    <div class="row">
                                        <div class="col-md-5 col-md-push-1 text-center">
                                            <div class="total">
                                                <!--<div class="sub">
                                                    <p><span>Subtotal:</span> <span>$</span></p>
                                                    <p><span>Delivery:</span> <span>$0.00</span></p>
                                                    <p><span>Discount:</span> <span>$45.00</span></p>
                                                </div>-->
                                                <div class="grand-total">
                                                    <p><span><strong>Tổng thanh toán:</strong></span> <span>$${requestScope.cart.getTotalMoney()}</span></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <form action="#">
                                                <div class="row form-group">
                                                    <div class="col-md-9">
                                                        <!--<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">-->
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="submit" value="Thanh toán" class="btn btn-primary">
                                                    </div>
                                                </div>
                                            </form>
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


