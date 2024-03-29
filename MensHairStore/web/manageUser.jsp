<%-- 
    Document   : manageorder
    Created on : 14-07-2023, 11:41:46
    Author     : DELL
--%>

<%-- 
    Document   : manageUser
    Created on : 11-07-2023, 18:15:57
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
        <script type="text/javascript">
            function confirmDelete(id) {
                if (confirm("Xóa người dùng id=" + id + "?")) {

                    window.location = "deleteaccount?id=" + id;

                }
            }
        </script>
    </head>
    <body>

        <jsp:include page="header/header.jsp"></jsp:include>
            <div class="container" style="width: 130% ">
                <aside id="colorlib-hero" class="breadcrumbs">
                    <div class="flexslider">
                        <ul class="slides">
                            <li style="background-image: url(image/overlay/andrea-donato-MNu0n-3BIKs-unsplash.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                            <div class="slider-text-inner text-center" style="    transform: translate(-260px, 0px);">
                                                <h1>Quản lý người dùng</h1>
                                                <h2 class="bread" style="color: black"><span ><a href="home"style="color: black">Trang chủ</a></span> <span>Quản lý đơn hàng</span></h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Quản lý <b>người dùng</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <!--<a href="#" class="btn btn-success" ><i class="icon-plus"></i> <span>Thêm tài khoản</span></a>-->
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>                                
                                
                                <th>Username</th>
                                <th>Gmail</th> 
                                <th>Role_ID</th> 
                                
                                
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${acc}" var="o">
                            <tr>
                                <td>${o.user_id}</td>  
                                
                                <td>${o.username}</td>
                                <td>${o.gmail}</td>
                                <td>${o.role_id}</td>
                                        

                                
                                <td>
                                    <a href="setadmin?u_id=${o.user_id}" class="edit" data-toggle="modal"><i class="icon-edit" data-toggle="tooltip" title="Chỉnh sửa quyền"></i></a>  
                                </td>
                                <td>

                                    <a href="#" onclick="confirmDelete(${o.user_id})" class="delete" data-toggle="modal"><i class="icon-bin" data-toggle="tooltip" title="Xóa người dùng"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

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






