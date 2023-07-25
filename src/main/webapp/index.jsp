<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Board.BoardDAO" %>
<%@page import="Board.BoardDTO" %>
<%@page import="Board.BoardConnection" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<html>
<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title >게시글 목록</title>
</head>
<body>
	<header>
		<div class="menu_container">
			<a class="menu_title">전체글</a>
			<a class="menu_title">인기글</a>
			<a class="menu_title">즐겨찾기</a>
			<a class="menu_title">전체공지</a>
		</div>
		<div class="login_container">
			<a class="menu_title" href="#">로그인</a>
			<a class="menu_join" href="#">회원가입</a>
		</div>
		
	</header>
	
	<%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> list = dao.list();
	%>
	<table>
			
			<tr>
	    			<td>번호</td>
					<td>작성자</td>
					<td>제목</td>
					<td>내용</td>
					<td>조회수</td>
    		</tr>
			
		
			<tbody>
			<%
			for(int i=0; i<list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getNum()%></td>
				<td><%=list.get(i).getName()%></td>
				<td><%=list.get(i).getSubject()%></td>
				<td><%=list.get(i).getContent()%></td>
				<td><%=list.get(i).getHit()%></td>

			</tr>
			<% 
			}
			%>
			</tbody>
	</table>
	</body>
</html>