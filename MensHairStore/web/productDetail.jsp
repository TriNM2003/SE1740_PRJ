<%-- 
    Document   : shopDetail
    Created on : 21-06-2023, 13:54:50
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
                                            <h1>Product Detail</h1>
                                            <h2 class="bread"><span><a href="home.jsp">Home</a></span> <span><a href="shop.html">Product</a></span> <span>Product Detail</span></h2>
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
                    <div class="row row-pb-lg">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="product-detail-wrap">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="product-entry">
                                            <div class="product-img" style="background-image: url(${detail.thumbnail});">
                                                <p class="tag"><span class="sale">New</span></p>
                                            </div>
                                            <div class="thumb-nail">
                                                <a href="#" class="thumb-img" style="background-image: url(images/item-11.jpg);"></a>
                                                <a href="#" class="thumb-img" style="background-image: url(images/item-12.jpg);"></a>
                                                <a href="#" class="thumb-img" style="background-image: url(images/item-16.jpg);"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="desc">
                                            <h3>${detail.product_name}</h3>
                                            <p class="price">
                                                <span>$${detail.price}</span> 
                                                
                                            </p>
                                            <!-- <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p> -->
                                            <div class="color-wrap">
                                                <p class="color-desc">
                                                    Thương hiệu: 
                                                    
                                                </p>
                                            </div>
                                            <div class="color-wrap">
                                                <p class="color-desc">
                                                    Xuất xứ: 
                                                    
                                                </p>
                                            </div>
                                            <div class="color-wrap">
                                                <p class="color-desc">
                                                    Dung tích: 
                                                    
                                                </p>
                                            </div>
                                            <div class="color-wrap">
                                                <p class="color-desc">
                                                    Mùi hương: 
                                                    
                                                </p>
                                            </div>
                                            
                                            <div class="row row-pb-sm">
                                                <div class="col-md-4">
                                                    <div class="input-group">
                                                        <span class="input-group-btn">
                                                            <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                                                <i class="icon-minus2"></i>
                                                            </button>
                                                        </span>
                                                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                                                        <span class="input-group-btn">
                                                            <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                                                <i class="icon-plus2"></i>
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <p><a href="cart.html" class="btn btn-primary btn-addtocart"><i class="icon-shopping-cart"></i> Thêm vào giỏ hàng</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
                                <div class="col-md-12 tabulation">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#description">Mô tả</a></li>
                                        <li><a data-toggle="tab" href="#manufacturer">Cách sử dụng</a></li>
                                        <li><a data-toggle="tab" href="#review">Nhận xét&Đánh giá</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="description" class="tab-pane fade in active">
                                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            <ul>
                                                <li>The Big Oxmox advised her not to do so</li>
                                                <li>Because there were thousands of bad Commas</li>
                                                <li>Wild Question Marks and devious Semikoli</li>
                                                <li>She packed her seven versalia</li>
                                                <li>tial into the belt and made herself on the way.</li>
                                            </ul>
                                        </div>
                                        <div id="manufacturer" class="tab-pane fade">
                                            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>

                                        </div>
                                        <div id="review" class="tab-pane fade">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h3>23 Reviews</h3>
                                                    
                                                    <div class="review">
                                                        <div class="user-img" style="background-image: url(images/person1.jpg)"></div>
                                                        <div class="desc">
                                                            <h4>
                                                                <span class="text-left">Jacob Webb</span>
                                                                <span class="text-right">14 March 2018</span>
                                                            </h4>
                                                            <p class="star">
                                                                <span>
                                                                    <i class="icon-star-full"></i>
                                                                    <i class="icon-star-full"></i>
                                                                    <i class="icon-star-full"></i>
                                                                    <i class="icon-star-half"></i>
                                                                    <i class="icon-star-empty"></i>
                                                                </span>
                                                                <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                                            </p>
                                                            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                
                                            </div>
                                        </div>
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
                            <h2><span>Sản phẩm tương tự</span></h2>
                            
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${product}" var="o">
                                    <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(${o.thumbnail});">
                                            <p class="tag"><span class="new">New</span></p>
                                            <div class="cart">
                                                <p>
                                                    <span class="addtocart"><a href="cart.html"><i class="icon-shopping-cart"></i></a></span> 
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

        <script>
            $(document).ready(function () {

                var quantitiy = 0;
                $('.quantity-right-plus').click(function (e) {

                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    $('#quantity').val(quantity + 1);


                    // Increment

                });

                $('.quantity-left-minus').click(function (e) {
                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    var quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    // Increment
                    if (quantity > 0) {
                        $('#quantity').val(quantity - 1);
                    }
                });

            });
        </script>

    </body>
</html>


