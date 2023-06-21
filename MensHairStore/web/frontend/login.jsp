<%-- 
    Document   : login
    Created on : 04-06-2023, 21:41:07
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html >

    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/signup.css" rel="stylesheet">
    </head>

    <body class="d-flex align-items-center">
        <div class="container">
            <div class="row justify-content-center" style="margin:20px;">
                <div class="col-lg-6 col-md-8 login-box">
                    <div class="col-lg-12 login-title">
                        Đăng nhập
                    </div>
                    <div class="col-lg-12 login-form">
                        <form name="input" action="<c:url value='/LoginServlet'/>" method="post">
                            <div class="form-group">
                                <label class="form-control-label">Tên đăng nhập</label>
                                <input type="text" class="form-control"name="user" required>
                            </div>                            
                            <div class="form-group">
                                <label class="form-control-label">Mật khẩu</label>
                                <input type="password" class="form-control" name="pass" required>
                                <input type="checkbox" name ="remember" value="remember"/> Remember me <br/>
                            </div>
                            <div class="col-12 login-btm login-button justify-content-center d-flex">
                                <button type="submit" class="btn btn-outline-primary">Đăng nhập</button>
                            </div>
                            <div class="col-12 login-btm login-button justify-content-center d-flex">
                                Chưa có tài khoản? <a href="signup.jsp" >Đăng kí</a>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>