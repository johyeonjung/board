<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="Board.UserDAO" %>
	<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id= request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	UserDAO user = new UserDAO();
	int check = user.login(id,pwd);
	if(check==1) {
		
		%><script>alert("로그인성공");</script><% 
	}else if(user.login(id, pwd)==0) {
		%><script>alert("비밀번호가 틀렸습니다");</script><%
	}else{
		%><script>alert("아이디 틀렸습니다");</script><%
	}
	%>
	<%=id %>
	<%=pwd %>
	

</body>
</html>