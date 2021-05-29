<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이바티스 테스트 페이지</title>
</head>
<body>
	
	<c:forEach var = "movieinfo" items="${test}">
		<img src = ${movieinfo.movieposter} width="400", height="600"><br>
         # 영화코드: ${movieinfo.moviecode}, 영화명: ${movieinfo.movienm} <br>
         # 줄거리: ${movieinfo.plot} <br>
    </c:forEach>
	
</body>
</html>