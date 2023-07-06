<%-- 
    Document   : signup
    Created on : 04-06-2023, 22:11:18
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html >

    <head>
        <title>Sign up</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS v5.2.1 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/signup.css" rel="stylesheet">
        
    </head>

    <body class="d-flex align-items-center">
        
        <div class="container">
            <div class="row justify-content-center" style="margin:20px;">
                <div class="col-lg-6 col-md-8 login-box">
                    <div class="col-lg-12 login-title">
                        Đăng kí
                    </div>
                    <div class="col-lg-12 login-form">
                        <form name="input" action="<c:url value='/SignupServlet'/>" method="post">
                            <div class="form-group">
                                <label class="form-control-label">Tên đăng nhập</label>
                                <input type="text" class="form-control" name="user" required>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Email</label>
                                <input type="text" class="form-control"name="gmail"  required>
                                

                            </div>
                            <div class="form-group">
                                <label class="form-control-label">Mật khẩu</label>
                                <input type="password" class="form-control" name="pass" required>

                            </div>
                            <div class="col-12 login-btm login-button justify-content-center d-flex">

                                <button type="submit" class="btn btn-outline-primary">Đăng kí</button>
                            </div>
                            <div class="col-12 login-btm login-button justify-content-center d-flex">
                                Đã có tài khoản? <a href="login.jsp" >Đăng nhập</a>
                            </div>
                            <div class="col-12 login-btm login-button justify-content-center d-flex">
                                <a href="home.jsp" ><i class="fa-light fa-house"></i>Trangchu</a>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   
</body>

</html>