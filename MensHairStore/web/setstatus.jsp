<%-- 
    Document   : setstatus
    Created on : 14-07-2023, 16:12:55
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
        <link href="css/admin.css" rel="stylesheet">
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
                                            <h1>Thay đổi trạng thái đơn hàng</h1>                                    
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

                    <div class="row">
                        <div class="col-md-12">
                            <form action="setstatus" method="post" class="colorlib-form">
                                
                                <div class="row">

                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label for="fname">ID đơn hàng</label>
                                            <input name="o_id" type="text" id="name" class="form-control" value="${ord.order_id}" readonly>
                                        </div>

                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname"> Tên đầy đủ  </label>
                                            <input name="fullname"type="text" id="towncity" class="form-control" value="${ord.fullname}" placeholder="Nhập "required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname"> Địa chỉ </label>
                                            <input name="address"type="text" id="towncity" class="form-control" value="${ord.address}" placeholder="Nhập"required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname"> Số điện thoại </label>
                                            <input name="phone_number"type="text" id="towncity" class="form-control" value="${ord.phone_number}" placeholder="Nhập "required>
                                        </div>
                                    </div>    
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname"> Note </label>
                                            <input name="note"type="text" id="towncity" class="form-control" value="${ord.note}" placeholder="Nhập "required>
                                        </div>
                                    </div>    
                                            
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname"> Trạng thái </label>
                                            <input name="status"type="text" id="towncity" class="form-control" value="${ord.status}" placeholder="Nhập 1-Chờ xác nhận 2-Đã xác nhận 3-Đang vận chuyển 4-Đã hoàn thành"required>
                                        </div>
                                    </div>
                                    
                                    

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="submit" class="btn btn-primary" value="Thay đổi"required>
                                    </div>
                                </div>
                            </form>
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



