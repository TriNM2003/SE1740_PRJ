<%-- 
    Document   : contact
    Created on : 21-06-2023, 13:50:49
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
                                            <h1>Liên hệ</h1>
                                            <h2 class="bread"><span><a href="home.jsp">Trang chủ</a></span> <span>Liên hệ</span></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>

            <div id="colorlib-contact">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <h3>Thông tin liên hệ</h3>
                            <div class="row contact-info-wrap">
                                <div class="col-md-3">
                                    <p><span><i class="icon-location"></i></span> Trường Đại học FPT <br> Thạch Thất, Hà Nội</p>
                                </div>
                                <div class="col-md-3">
                                    <p><span><i class="icon-phone3"></i></span>(+84)986.669.003</p>
                                </div>
                                <div class="col-md-3">
                                    <p><span><i class="icon-paperplane"></i></span>nguyentri@gmail.com</p>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-md-10 col-md-offset-1">
                            <div class="contact-wrap">
                                <h3>Get In Touch</h3>
                                <form action="#">
                                    <div class="row form-group">
                                        <div class="col-md-6 padding-bottom">
                                            <label for="fname">First Name</label>
                                            <input type="text" id="fname" class="form-control" placeholder="Your firstname">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="lname">Last Name</label>
                                            <input type="text" id="lname" class="form-control" placeholder="Your lastname">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="email">Email</label>
                                            <input type="text" id="email" class="form-control" placeholder="Your email address">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">Subject</label>
                                            <input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="message">Message</label>
                                            <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="submit" value="Send Message" class="btn btn-primary">
                                    </div>
                                </form>		
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="map" class="colorlib-map"></div>

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
        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
        <script src="js/google_map.js"></script>
        <!-- Main -->
        <script src="js/main.js"></script>

    </body>
</html>


