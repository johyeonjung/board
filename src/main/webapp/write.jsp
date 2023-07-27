<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Board.WriteDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id= request.getParameter("id");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	

	WriteDAO dao = new WriteDAO();
	int result = dao.write(id,subject,content);


		
		
		
		
%>

<%=id %>
<%=subject %>
<%=content %>

</body>
</html>