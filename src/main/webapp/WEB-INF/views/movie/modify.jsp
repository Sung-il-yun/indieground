<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />
무비입력창에 미리 값을 써놓은 것을 보여준다.

	<form method="post">
		<p>
			<div id="imgurl"></div>
			
			영화제목: <input name="movienm" value="${movie.movienm}"> <br>
			영화코드: ${movie.moviecode } <br>
			영화영문이름: <input name="movienmeng" value="${movie.movienmeng}"> <br>
			제작년도: <input type="date" name="pdyear" value="${movie.pdyear}"> <br>
			제작국가: <input name="pdcountry" value="${movie.pdcountry}"> <br>
			감독: <input name="director" value="${movie.director}"> <br>
			캐스팅: <input name="casting" value="${movie.casting}"> <br>
			제작사: <input name="pdcompany" value="${movie.pdcompany}"> <br>
			개봉일: <input type="date" name="relsedate" value="${movie.relsedate}"> <br>
			영화포스터: <input id="image" name="movieposter" value="${movie.movieposter}"> <button type = "button" id = "preview">미리보기</button> <br>
			평점: <input name="score" value="${movie.score}"> <br>
			줄거리: <input name="plot" value="${movie.plot}"> <br>
			장르: <input name="genre" value="${movie.genre}"> <br>
			제작상태: <input name="pdstatus" value="${movie.pdstatus}"> <br>
			
			<input type="submit" value="완료">
	
		<p>
	</form>
	
	<a href= "<c:url value='/detail?moviecode=${movie.moviecode }' />">돌아가기</a>
	<a href= "<c:url value='/delete?moviecode=${movie.moviecode }' />">삭제</a>
	
	<script>
	const result = "${msg}";
	if(result === "uploadSuccess") {
		alert("등록이 완료 되었습니다.");
	}
	</script>
	
	
	<script>
	$("#preview").click(function(){
		
		if($('#image').val() === "")
			alert("이미지가 없습니다");
		else
			$("#imgurl").html('<img src=' + $('#image').val() + ' width = "400" height = "600"> <br>')
	})
	</script>
<jsp:include page="../include/footer.jsp" />