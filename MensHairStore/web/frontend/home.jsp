<%-- 
    Document   : home
    Created on : 04-06-2023, 21:36:58
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

        <jsp:include page ="header/header.jsp"></jsp:include>
            <aside id="colorlib-hero">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(images/img_bg_1.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1">Men's</h1>
                                                <h2 class="head-2">Jeans</h2>
                                                <h2 class="head-3">Collection</h2>
                                                <p class="category"><span>New stylish shirts, pants &amp; Accessories</span></p>
                                                <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(images/img_bg_2.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1">Huge</h1>
                                                <h2 class="head-2">Sale</h2>
                                                <h2 class="head-3">45% off</h2>
                                                <p class="category"><span>New stylish shirts, pants &amp; Accessories</span></p>
                                                <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(images/img_bg_3.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1">New</h1>
                                                <h2 class="head-2">Arrival</h2>
                                                <h2 class="head-3">up to 30% off</h2>
                                                <p class="category"><span>New stylish shirts, pants &amp; Accessories</span></p>
                                                <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>
            <div id="colorlib-featured-product">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="shop.html" class="f-product-1" style="background-image: url(images/item-1.jpg);">
                                <div class="desc">
                                    <h2>Fahion <br>for <br>men</h2>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <a href="" class="f-product-2" style="background-image: url(images/item-2.jpg);">
                                        <div class="desc">
                                            <h2>New <br>Arrival <br>Dress</h2>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-6">
                                    <a href="" class="f-product-2" style="background-image: url(images/item-4.jpg);">
                                        <div class="desc">
                                            <h2>Sale <br>20% <br>off</h2>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-12">
                                    <a href="" class="f-product-2" style="background-image: url(images/item-3.jpg);">
                                        <div class="desc">
                                            <h2>Shoes <br>for <br>men</h2>
                                        </div>
                                    </a>
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
                            <h2><span>New Arrival</span></h2>
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
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
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
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
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
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
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
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="colorlib-intro" class="colorlib-intro" style="background-image: url(images/cover-img-1.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="intro-desc">
                                <div class="text-salebox">
                                    <div class="text-lefts">
                                        <div class="sale-box">
                                            <div class="sale-box-top">
                                                <h2 class="number">45</h2>
                                                <span class="sup-1">%</span>
                                                <span class="sup-2">Off</span>
                                            </div>
                                            <h2 class="text-sale">Sale</h2>
                                        </div>
                                    </div>
                                    <div class="text-rights">
                                        <h3 class="title">Just hurry up limited offer!</h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                        <p><a href="shop.html" class="btn btn-primary">Shop Now</a> <a href="#" class="btn btn-primary btn-outline">Read more</a></p>
                                    </div>
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
                            <h2><span>Our Products</span></h2>
                            <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-9.jpg);">
                                    <p class="tag"><span class="sale">Sale</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$199.00</span> <span class="sale">$300.00</span> </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-10.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-11.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-12.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-13.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-14.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-15.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url(images/item-16.jpg);">
                                    <p class="tag"><span class="new">New</span></p>
                                    <div class="cart">
                                        <p>
                                            <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
                                            <span><a href="product-detail.html"><i class="icon-eye"></i></a></span> 
                                            <span><a href="#"><i class="icon-heart3"></i></a></span>
                                            <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc">
                                    <h3><a href="shop.html">Floral Dress</a></h3>
                                    <p class="price"><span>$300.00</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="colorlib-testimony" class="colorlib-light-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                            <h2><span>Our Satisfied Customer says</span></h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">						
                            <div class="owl-carousel2">
                                <div class="item">
                                    <div class="testimony text-center">
                                        <span class="img-user" style="background-image: url(images/person1.jpg);"></span>
                                        <span class="user">Alysha Myers</span>
                                        <small>Miami Florida, USA</small>
                                        <blockquote>
                                            <p>" A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                        </blockquote>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony text-center">
                                        <span class="img-user" style="background-image: url(images/person2.jpg);"></span>
                                        <span class="user">James Fisher</span>
                                        <small>New York, USA</small>
                                        <blockquote>
                                            <p>One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                        </blockquote>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony text-center">
                                        <span class="img-user" style="background-image: url(images/person3.jpg);"></span>
                                        <span class="user">Jacob Webb</span>
                                        <small>Athens, Greece</small>
                                        <blockquote>
                                            <p>Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                        </blockquote>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>

            <div class="colorlib-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center colorlib-heading">
                            <h2>Recent Blog</h2>
                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <article class="article-entry">
                                <a href="blog.html" class="blog-img" style="background-image: url(images/blog-1.jpg);"></a>
                                <div class="desc">
                                    <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                                    <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                                    <h2><a href="blog.html">Openning Branches</a></h2>
                                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="article-entry">
                                <a href="blog.html" class="blog-img" style="background-image: url(images/blog-2.jpg);"></a>
                                <div class="desc">
                                    <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                                    <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                                    <h2><a href="blog.html">Openning Branches</a></h2>
                                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="article-entry">
                                <a href="blog.html" class="blog-img" style="background-image: url(images/blog-3.jpg);"></a>
                                <div class="desc">
                                    <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                                    <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                                    <h2><a href="blog.html">Openning Branches</a></h2>
                                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                                </div>
                            </article>
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

    </body>
</html>

