<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
<form action="write.jsp" method="post">
<a style="font-size:25px;"><b>카페글쓰기</b></a><br>


			<select id="job" name="job" size="1" style="width:400px; height:25px;">
			<option value="">게시판을 선택해 주세요.구현필요**</option>
			<option value="자유게시판">자유게시판</option>
			<option value="질문&답변">질문&답변</option>
			<option value="가입인사">가입인사</option>
			<option value="등업신청">등업신청</option>
	</select>
	
    
      
     <a align="center">
      <br>
      <input name="subject" style="width:400px;height:25px;" placeholder="제목을 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력해 주세요.'">
      <br>
      <input name="content" style="width:400px; height:200px;" placeholder="내용을 입력해 주세요." onfocus="this.placeholder=''" 
      onblur="this.placeholder='내용을 입력해 주세요.'" >
      <br>
      <input type="submit" value="등록" >
      <button onclick="history.back()">뒤로가기</button>
     </a>
 </form>
</body>
</html>