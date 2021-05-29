<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp" />


<h1>영화입력 페이지</h1>

	<form method="post">
		<p>
			영화제목: <input name="movienm"> <br>
			영화코드: <input name="moviecode"> <br>
			영화영문이름: <input name="movienmeng"> <br>
			제작년도: <input type="date" name="pdyear"> <br>
			제작국가: <input name="pdcountry"> <br>
			감독: <input name="director"> <br>
			캐스팅: <input name="casting"> <br>
			제작사: <input name="pdcompany"> <br>
			개봉일: <input type="date" name="relsedate"> <br>
			영화포스터: <input name="movieposter"> <br>
			평점: <input name="score"> <br>
			줄거리: <input name="plot"> <br>
			장르: <input name="genre"> <br>
			제작상태: <input name="pdstatus"> <br>
			
			<input type="submit" value="등록">
	
		<p>
	</form>

	<script>
	const result = "${msg}";
	if(result === "uploadSuccess") {
		alert("등록이 완료 되었습니다.");
	}
	</script>


<jsp:include page="../include/footer.jsp" />