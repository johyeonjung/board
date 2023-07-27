<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Board.UserDAO" %>
    <%@page import="Board.NoticeDAO" %>
    <%@page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 리스트 넣기 jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String writer=null;
String time=null;
int hit=0;
int no=0;
if(session.getAttribute("id") != null) {
	writer=(String)session.getAttribute("id");
}
	
	if(writer==null) {
		%>
		 <script>alert("로그인을 하세요");</script>
		 <%=writer %>
		 <% 
	}else {
		request.setCharacterEncoding("UTF-8");
		
		String subject= request.getParameter("subject");
		String content = request.getParameter("content");
		
		

		NoticeDAO dao = new NoticeDAO();
		int result = dao.notice_insert(no,subject,content,writer,time,hit);
		pageContext.forward("main.jsp");
		
	}
	
	
	
	%>

	
	
	




</body>
</html>