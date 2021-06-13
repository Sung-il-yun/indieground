<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="include/header.jsp" />

<!-- 각각의 리스트를 모두 불러온다. -->

<div style= "background-color:rgba(255,255,255, 0.4);">

<h2>영화 검색결과</h2>
<div>

	<c:forEach var = "movieinfo" items="${movieSearch}">
		<a href=<c:url value='/detail?moviecode=${movieinfo.moviecode}'/>>${movieinfo.movienm}</a>
		<img src = ${movieinfo.movieposter} width="400" height="600">	<br>
    </c:forEach>

</div>
<h2>배우 검색결과</h2>

<div>
	<c:forEach var = "actor" items="${actSearch}">
		${actor.actor} <br>
		<img src = ${actor.photolink} width="400" height="600">	<br>
		${actor.profile }<br>
    </c:forEach>

</div>

<h2>리뷰 검색결과</h2>
리뷰(리뷰명 + 리뷰소제목 +  리뷰줄거리 + 영화명)

<div>
	<c:forEach var = "review" items="${rvSearch}">
		<a href=<c:url value='/review/detail?sn=${review.sn}'/>>${review.rvtittle}</a>
		<c:forEach var = "movie" items="${movieSearch}">
			<c:if test="${movie.moviecode == review.moviecode}">
				<img src = ${movie.movieposter} width="400" height="600">	<br>
			</c:if>
		</c:forEach>
    </c:forEach>

</div>

<h2>댓글 검색결과</h2>
<div>

	<c:forEach var = "reply" items="${replySearch}">
		${reply.registdt} <br>
		${reply.userid} <br>
		${reply.reply}<br>
    </c:forEach>

</div>

</div>
<jsp:include page="include/footer.jsp" />