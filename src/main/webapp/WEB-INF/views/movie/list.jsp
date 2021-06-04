<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../include/header.jsp" />

영화를 단순히 뿌려준다. 아직 페이징 미적용

<c:if test="${admin != null }">
<a href="/movie/insert">영화작성으로 이동</a> <br>
</c:if>

	<c:forEach var = "movieinfo" items="${movieList}">
			<a href=<c:url value='/detail?moviecode=${movieinfo.moviecode}'/>>${movieinfo.movienm}</a>
			<img src = ${movieinfo.movieposter} width="400" height="600">
			
    </c:forEach>

<jsp:include page="../include/footer.jsp" />