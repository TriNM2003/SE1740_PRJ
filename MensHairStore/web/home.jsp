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
        <c:if test="${requestScope.account == null}">
            <jsp:include page ="header/header.jsp"></jsp:include>
        </c:if>
        <c:if test="${requestScope.account != null}">
            <jsp:include page ="header/header2.jsp"></jsp:include>
        </c:if>
            <!-- Slider -->
            <aside id="colorlib-hero">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(image/slider/IMG_6902-scaled.jpg);">
                            <div class="overlay"></div> 
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1" style="font-size: 30px">Forte</h1>
                                                <h2 class="head-2" style="font-size: 20px">series</h2>
                                                <p class="category" style="transform: translateX(-5px);">BST hot nhất mùa hè</p>
                                                <p><a href="category?c_id=1" class="btn btn-primary">Xem ngay</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(image/slider/pexels-stefanie-berlin-6754330.jpg);">
                            <div class="overlay"></div> 
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1" style="font-size: 30px">Frau</h1>
                                                <h2 class="head-2" style="font-size: 20px">tonis</h2>
                                                <p class="category" style="transform: translateX(-5px);">BST nước hoa mùa hè</p>
                                                <p><a href="category?c_id=3" class="btn btn-primary">Xem ngay</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                        <li style="background-image: url('image/slider/pexels-cottonbro-studio-7428097.jpg');">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1" style="font-size: 30px">Sản phẩm</h1>
                                                <h2 class="head-2" style="font-size: 20px">gội rửa</h2>
                                                <p class="category" style="transform: translateX(-5px);">Sạch tới từng chân tóc</p>
                                                <p><a href="category?c_id=2" class="btn btn-primary">Xem ngay</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(image/slider/best-colognes-men-iconic-fragrances-luxe-digital.jpg);">
                            <div class="overlay"></div> 
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1" style="font-size: 20px">Aqua di</h1>
                                                <h2 class="head-2" style="font-size: 30px"> gio</h2>
                                                <p class="category" style="transform: translateX(-5px);">SP hot nhất mua hè</p>
                                                <p><a href="category?c_id=3" class="btn btn-primary">Xem ngay</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(image/slider/pexels-castorly-stock-3944792.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1" style="font-size: 30px">Pomade</h1>
                                                <h2 class="head-2" style="font-size: 20px">Collections</h2>
                                                <p class="category" style="transform: translateX(-5px);">Cổ điển trang trọng</p>
                                                <p><a href="category?c_id=1" class="btn btn-primary">Xem ngay</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </aside>
            <!-- endSlider -->
            
            <!-- Categoty -->
            <div id="colorlib-featured-product">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="category?c_id=1" class="f-product-1" style="background-image: url(image/slider/pexels-elina-volkova-16372667.jpg);">
                                <div class="desc">
                                    <h2>Sản<br>phẩm<br>tạo<br>kiểu</h2>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <a href="category?c_id=2" class="f-product-2" style="background-image: url(image/categ/pexels-cottonbro-studio-7440056.jpg);">
                                        <div class="desc">
                                            <h2>Sản<br>phẩm<br>gội<br>rửa</h2>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-6" >
                                    <a href="category?c_id=3" class="f-product-2" style="background-image: url(image/categ/pexels-hamza-nouasria-12562773.jpg);">
                                        <div class="desc">
                                            <h2>Nước <br>hoa </h2>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-12">
                                    <a href="category?c_id=4" class="f-product-2" style="background-image: url(image/categ/pexels-andrzej-gdula-11159157.jpg);">
                                        <div class="desc">
                                            <h2>Sản<br>phẩm<br>dưỡng<br>tóc</h2>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- endCategory -->
            
            <!-- New products -->
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
                                    <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(${o.thumbnail});">
                                            <c:if test="${o.discount !=0 }">
                                                <p class="tag"><span class="new">${o.discount}%</span></p>
                                            </c:if>
                                            <div class="cart">
                                                <p>
                                                    <span class="addtocart"><a href="Buy?p_id=${o.product_id}&num=1"><i class="icon-shopping-cart"></i></a></span> 
                                                    <span><a href="detail?p_id=${o.product_id}"><i class="icon-eye"></i></a></span> 
                                                    <span><a href="#"><i class="icon-heart3"></i></a></span>
                                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a href="detail?p_id=${o.product_id}">${o.product_name}</a></h3>
                                            <p class="price"><span>$${o.price}</span></p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                        
                    </div>
                </div>
            </div>
            <!-- end New products -->
            
            <!-- landing -->
            <div id="colorlib-intro" class="colorlib-intro" style="background-image: url(image/overlay/andrea-donato-MNu0n-3BIKs-unsplash.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="intro-desc">
                                <div class="text-salebox">
                                    <div class="text-lefts">
                                        <div class="sale-box">
                                            <div class="sale-box-top">
                                                <h2 class="number">5</h2>
                                                <span class="sup-1">%</span>
                                                <span class="sup-2">off</span>
                                            </div>
                                            <h3 class="text-sale">Sale</h3>
                                        </div>
                                    </div>
                                    <div class="text-rights">
                                        <h3 class="title">Tạo kiểu tóc đẳng cấp với các sản phẩm tóc nam chất lượng cao của chúng tôi!</h3>
                                        <p>Giảm giá 5% các sản phẩm nhân dịp mở bán.</p>
                                        <p><a href="shop" class="btn btn-primary">Mua hàng ngay</a> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- endlanding -->
            
            <!-- Our products -->
            <div class="colorlib-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                            <h2><span>Sản phẩm giảm giá</span></h2>
                            <p>Chúng tôi cam kết cung cấp các sản phẩm chất lượng với giá cả hợp lý, giúp bạn tạo kiểu tóc dễ dàng và nhanh chóng.</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <c:forEach items="${homeproduct}" var="o">
                                    <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(${o.thumbnail});">
                                            <c:if test="${o.discount !=0 }">
                                                <p class="tag"><span class="new">${o.discount}%</span></p>
                                            </c:if>
                                            <div class="cart">
                                                <p>
                                                    <span class="addtocart"><a href="Buy?p_id=${o.product_id}&num=1"><i class="icon-shopping-cart"></i></a></span> 
                                                    <span><a href="detail?p_id=${o.product_id}"><i class="icon-eye"></i></a></span> 
                                                    <span><a href="#"><i class="icon-heart3"></i></a></span>
                                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a href="detail?p_id=${o.product_id}">${o.product_name}</a></h3>
                                            <p class="price"><span>$${o.price}</span></p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                        
                    </div>
                </div>
            </div>
            <!-- endOur products -->
            
            <!-- Feedback -->
            <div id="colorlib-testimony" class="colorlib-light-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                            <h2><span>Trải nghiệm của người dùng</span></h2>
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
            <!-- endFeedback -->
            

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


