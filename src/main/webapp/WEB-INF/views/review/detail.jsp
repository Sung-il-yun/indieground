<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp" />

<div>

<h2>${review.rvtittle}</h2>
영화제목 : ${review.movienm} <br>
<img src = ${photo} height="800" width="600"> <br>
	${review.rvsubtittle } <br>

	${review.rvcontent }
	
	<a href= "/movie/review">돌아가기</a> <br>
	<a href= "/movie/review/modify?sn=${review.sn }">수정</a>
</div>

<jsp:include page="../include/footer.jsp" />