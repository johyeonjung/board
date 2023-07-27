<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 작성 jsp</title>

</head>
<body>
<form action="notice_action.jsp" method="post">
<table>
    <tr>
     <td>제목</td>
     <td><input name="subject" size="50" maxlength="100"></td>
    </tr>
    <tr>
     <td>내용</td>
     <td><textarea name="contents" cols="50" rows="13"></textarea></td>
    </tr>
    
   </table>
   <input type="submit" value="글쓰기"></input></form>
   <button onclick="history.back()">뒤로가기</button>

</body>
</html>