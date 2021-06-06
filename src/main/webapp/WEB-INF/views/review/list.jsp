<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />


    
    
    <table style="margin-left: 50px; width:95%; margin-right: 50px; background-color:rgba(255,255,255, 0.4);">
    
   <th>
    <c:if test="${login != null }">
	<a href="/movie/review/insert">리뷰작성으로 이동</a> <br>
	</c:if>
   </th>
	
	<c:forEach var = "movieReview" items="${reviewList}">
			<tr>
			<td  style=" padding: 30px 40px;"> 
			<c:forEach var="movie" items="${movielist}">
			<c:if test="${movie.moviecode == movieReview.moviecode}">
				<img src = ${movie.movieposter} width="200" height="300">
			</c:if>
			</c:forEach>
			<br>
			
			</td>
			<td>
			
				<a style = "color: black;" href=<c:url value='/review/detail?sn=${movieReview.sn}'/>>${movieReview.rvtittle}</a> <br>
				${movieReview.rvcontent }
			
			</td>
			</tr>
    </c:forEach>
    
    </table>
    
    
    

<jsp:include page="../include/footer.jsp" />