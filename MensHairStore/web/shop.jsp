<%-- 
    Document   : shop
    Created on : 21-06-2023, 13:57:03
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
                                            <h1>Products</h1>
                                            <h2 class="bread"><span><a href="home.jsp">Home</a></span> <span>Shop</span></h2>
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
                        <div class="col-md-10 col-md-push-2">
                            <div class="row row-pb-lg">
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(images/item-6.jpg);">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$199.00</span> <span class="sale">$300.00</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(images/item-8.jpg);">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$199.00</span> <span class="sale">$300.00</span> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(images/item-11.jpg);">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center">
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
                                            <h3><a href="product-detail.html">Floral Dress</a></h3>
                                            <p class="price"><span>$300.00</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="pagination">
                                        <li class="disabled"><a href="#">&laquo;</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">&raquo;</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-md-pull-10">
                            <div class="sidebar">
                                <div class="side">
                                    <h2>Categories</h2>
                                    <div class="fancy-collapse-panel">
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Men
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingTwo">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Women
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingThree">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Jewelry
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingFour">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">Jewelry
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="side">
                                    <h2>Price Range</h2>
                                    <form method="post" class="colorlib-form-2">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="guests">Price from:</label>
                                                    <div class="form-field">
                                                        <i class="icon icon-arrow-down3"></i>
                                                        <select name="people" id="people" class="form-control">
                                                            <option value="#">1</option>
                                                            <option value="#">200</option>
                                                            <option value="#">300</option>
                                                            <option value="#">400</option>
                                                            <option value="#">1000</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="guests">Price to:</label>
                                                    <div class="form-field">
                                                        <i class="icon icon-arrow-down3"></i>
                                                        <select name="people" id="people" class="form-control">
                                                            <option value="#">2000</option>
                                                            <option value="#">4000</option>
                                                            <option value="#">6000</option>
                                                            <option value="#">8000</option>
                                                            <option value="#">10000</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="side">
                                    <h2>Color</h2>
                                    <div class="color-wrap">
                                        <p class="color-desc">
                                            <a href="#" class="color color-1"></a>
                                            <a href="#" class="color color-2"></a>
                                            <a href="#" class="color color-3"></a>
                                            <a href="#" class="color color-4"></a>
                                            <a href="#" class="color color-5"></a>
                                        </p>
                                    </div>
                                </div>
                                <div class="side">
                                    <h2>Size</h2>
                                    <div class="size-wrap">
                                        <p class="size-desc">
                                            <a href="#" class="size size-1">xs</a>
                                            <a href="#" class="size size-2">s</a>
                                            <a href="#" class="size size-3">m</a>
                                            <a href="#" class="size size-4">l</a>
                                            <a href="#" class="size size-5">xl</a>
                                            <a href="#" class="size size-5">xxl</a>
                                        </p>
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

    </body>
</html>


