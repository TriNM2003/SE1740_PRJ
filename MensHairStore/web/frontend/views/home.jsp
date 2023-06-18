<%-- 
    Document   : home
    Created on : 04-06-2023, 21:36:58
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MensGrooming</title>
        <link rel="stylesheet" href="../css/navbar.css">
        <link rel="stylesheet" href="../css/footer.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
        <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">

    </head>
    <body>
        <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>

        <header>
            <!-- contact content -->
            <div class="header-content-top">
                <div class="content">
                    <span><i class="fas fa-phone-square-alt"></i> (+84)986.669.003</span>
                    <span><i class="fas fa-envelope-square"></i>nguyentri16112003@gmail.com</span>
                </div>
            </div>
            <!-- / contact content -->
            <div class="container" style="margin-top: 1.5rem; ">
                <!-- logo -->
                <strong class="logo"><a href="home.jsp">
                        <img src="../../image/logo.png" width="180px">
                    </a></strong>
                <!-- open nav mobile -->

                <!--search -->
                <label class="open-search" for="open-search">
                    <i class="fas fa-search"></i>
                    <input class="input-open-search" id="open-search" type="checkbox" name="menu" />
                    <div class="search">
                        <button class="button-search"><i class="fas fa-search"></i></button>
                        <input type="text" placeholder="What are you looking for?" class="input-search" />
                    </div>
                </label>
                <!-- // search -->
                <nav class="nav-content">
                    <!-- nav -->
                    <ul class="nav-content-list">
                        <li class="nav-content-item account-login">
                            <label class="open-menu-login-account" for="open-menu-login-account">

                                <input class="input-menu" id="open-menu-login-account" type="checkbox" name="menu" />

                                <i class="fas fa-user-circle"></i><span class="login-text"><a href="../../../src/java/controller/LoginServlet.java">tai khoan</a></span> <span class="item-arrow"></span>

                                <!-- submenu -->
                                <ul class="login-list">
                                    <li class="login-list-item"><a href="https://www.cupcom.com.br/">My account</a></li>

                                    <li class="login-list-item"><a href="https://www.cupcom.com.br/">logout</a></li>
                            </label>
                    </ul>
                    </li>
                    <li class="nav-content-item"><a class="nav-content-link" href="https://www.cupcom.com.br/"><i
                                class="fas fa-heart"></i></a></li>
                    <li class="nav-content-item"><a class="nav-content-link" href="https://www.cupcom.com.br/"><i
                                class="fas fa-shopping-cart"></i></a></li>
                    <!-- call to action -->
                    </ul>
                </nav>
            </div>
            <!-- nav navigation commerce -->
            <div class="nav-container" style="margin-top: 1.5rem ; ">
                <nav class="all-category-nav">
                    <label class="open-menu-all" for="open-menu-all">
                        <input class="input-menu-all" id="open-menu-all" type="checkbox" name="menu-open" />
                        <span class="all-navigator"><i class="fas fa-bars"></i> <span>All category</span> <i
                                class="fas fa-angle-down"></i>
                            <i class="fas fa-angle-up"></i>
                        </span>

                        <ul class="all-category-list">
                            <li class="all-category-list-item"><a href="https://www.cupcom.com.br/"
                                                                  class="all-category-list-link">Sản phẩm tạo kiểu<i class="fas fa-angle-right"></i></a>
                                <div class="category-second-list">
                                    <ul class="category-second-list-ul">
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Wax</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Pomade</a>
                                        </li>
                                        <li class="category-second-item"><a
                                                href="https://www.cupcom.com.br/">Pre-Styling</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Bột tạo
                                                phồng</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Gôm</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Lược tạo
                                                kiểu</a></li>
                                    </ul>

                                    <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                                </div>
                            </li>
                            <li class="all-category-list-item"><a href="https://www.cupcom.com.br/"
                                                                  class="all-category-list-link">Sản phẩm gội rửa<i class="fas fa-angle-right"></i></a>
                                <div class="category-second-list">
                                    <ul class="category-second-list-ul">
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dầu gội</a>
                                        </li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dầu xả</a>
                                        </li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dầu gội khô
                                            </a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Kem ủ tóc</a>
                                        </li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Lược gội
                                                đầu</a></li>

                                    </ul>

                                    <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                                </div>
                            </li>
                            <li class="all-category-list-item"><a href="https://www.cupcom.com.br/"
                                                                  class="all-category-list-link">Nước hoa<i class="fas fa-angle-right"></i></a>
                                <div class="category-second-list">
                                    <ul class="category-second-list-ul">
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Nước hoa</a>
                                        </li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Nước hoa
                                                khô</a></li>
                                    </ul>

                                    <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                                </div>
                            </li>
                            <li class="all-category-list-item"><a href="https://www.cupcom.com.br/"
                                                                  class="all-category-list-link">Sản phẩm dưỡng tóc<i class="fas fa-angle-right"></i></a>
                                <div class="category-second-list">
                                    <ul class="category-second-list-ul">
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dầu dưỡng tóc</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Kem ủ tóc</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dầu dưỡng ẩm tóc</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Mặt nạ dưỡng tóc</a></li>

                                    </ul>

                                    <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                                </div>
                            </li>
                            <li class="all-category-list-item"><a href="https://www.cupcom.com.br/"
                                                                  class="all-category-list-link">Khác<i class="fas fa-angle-right"></i></a>
                                <div class="category-second-list">
                                    <ul class="category-second-list-ul">
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dao cao râu</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Kem/Gel cạo râu</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Dưỡng râu</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Sữa rửa mặt</a></li>
                                        <li class="category-second-item"><a href="https://www.cupcom.com.br/">Kẹo hỗ trợ tóc</a></li>

                                    </ul>

                                    <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                                </div>
                            </li>


                        </ul>
                    </label>

                </nav>
                <nav class="featured-category">
                    <ul class="nav-row">
                        <li class="nav-row-list"><a href="https://www.cupcom.com.br/" class="nav-row-list-link">Thương
                                hiệu</a></li>
                        <li class="nav-row-list"><a href="https://www.cupcom.com.br/" class="nav-row-list-link">Review</a>
                        </li>

                    </ul>
                </nav>
            </div>
        </header>


        <footer class="footer-distributed">

            <div class="footer-left">

                <h3>HSMen<span>grooming</span></h3>

                <p class="footer-links">
                    <a href="#" class="link-1">Home</a>

                    <a href="#">Shop</a>

                    <a href="#">Cart</a>

                </p>


            </div>

            <div class="footer-center">

                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>Trường Đại học FPT</span> Thạch Thất, Hà Nội</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>(+84)986.669.003</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p>nguyentri16112003@gmail.com</p>
                </div>

            </div>

            <div class="footer-right">

                <p class="footer-company-about">
                    <span>THEO DÕI CHÚNG TÔI</span>

                </p>

                <div class="footer-icons">

                    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                    <a href="https://github.com/"><i class="fa fa-github"></i></a>

                </div>

            </div>

        </footer>




    </body>
</html>
