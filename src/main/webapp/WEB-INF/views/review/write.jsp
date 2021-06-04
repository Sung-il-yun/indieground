<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp" />

<h1>리뷰작성 페이지</h1>

	<form method="post">
		<p>
			
			영화제목: <input name="movienm"> <br>
			리뷰제목: <input name="rvtittle"> <br>
			리뷰소제목: <input name="rvsubtittle"> <br>
			영화코드: <input name="moviecode"> <br>
			평점: <input name="rvscore"> <br>
			평론: <input name="rvcontent"> <br>
			작성자: <input name="registid"> <br>
			<input type="hidden" name="updtid">
			
			<input type="submit" value="등록">
	
		<p>
	</form>
	
	
	<a href= "/movie/review">돌아가기</a>

<jsp:include page="../include/footer.jsp" />