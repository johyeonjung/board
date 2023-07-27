<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Board.BoardDAO" %>
<%@page import="Board.BoardDTO" %>
<%@page import="Board.BoardConnection" %>
<%@page import="Board.NoticeDAO" %>
<%@page import="Board.NoticeDTO" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.Connection" %>


<!DOCTYPE html>
<html>

<head>
<link href="./css/Main.css" rel="stylesheet" type="text/css">
<style>

</style>

<meta charset="UTF-8">
<title>네이버 카페</title>

</head>
<body>
<%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> blist = dao.list();
	
 	NoticeDAO ndao= new NoticeDAO();
    ArrayList<NoticeDTO> nlist = ndao.list();
    %>

<header>
		
		
		
 	
		<nav class="menu clearfix">
             <a class="menu-item"  onclick ="window.open('noticeform.jsp')"
             style="font-color:black"><b>공지사항</b></a>
              <a class="menu-item"  style=""
              ><b>등업신청</b></a>
              <a class="menu-item"  style=""
              ><b>수다방</b></a>
              <a class="menu-item" style=""
              ><b>먹방,맛집정보</b></a>
              <a class="menu-item"  style=""
              ><b>갤러리</b></a>
              <a class="menu-item" onclick ="window.open('login.jsp')" style=""
              >로그인</a>
              <a class="menu-item" onclick ="window.open('writeform.jsp')" style=""
              >카페 글쓰기</a>
         </nav>
         
         
		</header>

				<nav class="main_list">
					<div><br><br><b>전체글보기</b></div>
				<%
				for(int i=0; i<blist.size(); i++) {
				%>
					<a><%=blist.get(i).getSubject()%></a><br>
				<% 
				}	
				%>
				
			
    			</nav>

				<nav class="main_notice">
					<div><b>공지</b></div>
					<%
					for(int i=0; i<nlist.size(); i++) {
					%>
						<a><%=nlist.get(i).getSubject()%></a><br>
					<% 
					}	
					%>
				</nav>
				
				<nav class="main_event">
					<div><b>이벤트</b></div>
					<a>제목</a>
				</nav>
				
				<nav class="main_question">
					<div><b>질문&답변</b></div>
					<a>제목</a>
				</nav>
					
					
</body>
</html>