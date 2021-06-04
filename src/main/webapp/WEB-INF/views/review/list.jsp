<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />

<c:if test="${login != null }">
<a href="/movie/review/insert">리뷰작성으로 이동</a> <br>
</c:if>

	<c:forEach var = "movieReview" items="${reviewList}">
			<img src="">
			<a href=<c:url value='/review/detail?sn=${movieReview.sn}'/>>${movieReview.rvtittle}</a>
			"${movieReview.rvcontent}" <br>
			<!-- 무비인포와 같은 영화 포스터를 불러오기 해야한다. -->
			그러려면 모델에서 무비인포를 받아와야 한다. <br>
			
			<c:forEach var="movie" items="${movielist}">
				<c:if test="${movie.moviecode == movieReview.moviecode}">
				<img src = ${movie.movieposter} width="400" height="600">
				</c:if>
			</c:forEach>
			
    </c:forEach>

<jsp:include page="../include/footer.jsp" />