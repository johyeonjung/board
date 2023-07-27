<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Board.NoticeDAO" %>
	<%@page import="Board.NoticeDTO" %>
	<%@page import="Board.BoardConnection" %>
	<%@page import="java.util.ArrayList" %>
	<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 list jsp</title>
</head>
<body>
<form method="post" action="notice_action.jsp">
<table>
 <tr>
  <td>

   <table>
    <tr>
     <td>공지사항</td>
    </tr>
    <% NoticeDAO dao= new NoticeDAO();
    ArrayList<NoticeDTO> list = dao.list();
    %>
   </table>

 	<tr>
	  	<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
		
    </tr>
    
    
    	<tbody>
			<%
			for(int i=0; i<list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getNo()%></td>
				<td><%=list.get(i).getSubject()%></td>
				<td><%=list.get(i).getWriter()%></td>
				<td><%=list.get(i).getTime()%></td>
				<td><%=list.get(i).getHit()%></td>
				

			</tr>
			<% 
			}	
			%>
			
		</tbody>
</table>
				<input type="submit" value="글쓰기"></input>
				
				
</form>
</body>
</html>