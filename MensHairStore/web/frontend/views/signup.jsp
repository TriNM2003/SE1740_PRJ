<%-- 
    Document   : signup
    Created on : 04-06-2023, 22:11:18
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký</title>
        
    </head>
    <body>
        <form name="input" action="<c:url value='/SignupServlet'/>"  method="post">
	<table>
		<tr>
		   <td>User name:</td><td><input type="text" name="user"/></td>
		</tr>
                <tr>
		   <td>Gmail:</td><td><input type="text" name="gmail"/></td>
		</tr>
		<tr>
		   <td>Password:</td><td><input type="password" name="pass"/></td>
		</tr>
		<tr>
		   <td></td><td><input type="submit" value="Đăng ký"/></td>
		</tr>
                <tr>
                    <td>Đã có tài khoản?</td><td ><a href="login.jsp"> Đăng nhập</a></td>
		</tr>
	</table>
	</form>
    </body>
</html>
