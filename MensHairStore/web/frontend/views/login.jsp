<%-- 
    Document   : login
    Created on : 04-06-2023, 21:41:07
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
    </head>
    <body>
        <form name="input" action="LoginServlet" method="post">
	<table>
		<tr>
		   <td>User name:</td><td><input type="text" name="user"/></td>
		</tr>
		<tr>
		   <td>Password:</td><td><input type="password" name="pass"/></td>
		</tr>
		<tr>
		   <td></td><td><input type="submit" value="Đăng nhập"/></td>
		</tr>
                <tr>
                    <td>Chưa có tài khoản?</td><td><a href="signup.jsp">Đăng ký</a></td>
		</tr>
	</table>
	</form>
    </body>
</html>
