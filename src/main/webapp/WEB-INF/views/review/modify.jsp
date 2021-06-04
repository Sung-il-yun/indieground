<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />

	<form method="post">
		<p>
			
			영화제목: <input name="movienm" value=${review.movienm }> <br>
			리뷰제목: <input name="rvtittle" value=${review.rvtittle }> <br>
			리뷰소제목: <input name="rvsubtittle" value= ${review.rvsubtittle }> <br>
			영화코드: <input name="moviecode" value=${review.moviecode }> <br>
			평점: <input name="rvscore" value=${review.rvscore }> <br>
			평론: <input name="rvcontent" value=${review.rvcontent }> <br>
			수정자: <input name="updtid" value=${review.updtid }> <br>
			<input type="hidden" name="registid">
			
		<input type="submit" value="등록">
	
		<p>
	</form>
	
	
	<a href= "<c:url value='/review/detail?sn=${review.sn }' />">돌아가기</a>
	<a href= "<c:url value='/review/delete?sn=${review.sn }' />">삭제</a>
	
<jsp:include page="../include/footer.jsp" />