<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../include/header.jsp" />

<!-- 영화를 단순히 뿌려준다. 아직 페이징 미적용 -->
<br>



	<table style="margin-left: 50px; width:95%; margin-right: 50px; background-color:rgba(255,255,255, 0.4);">
	
	<th>
	<c:if test="${admin != null }">
	<a href="/movie/insert">영화작성으로 이동</a> <br>
	</c:if>
	</th>
	
	<c:forEach var = "movieinfo" items="${movieList}">
			<tr>
			<td  style=" padding: 30px 40px;"> <img src = ${movieinfo.movieposter} width="200" height="300">
			<br>
			<a style = "color: black;" href=<c:url value='/detail?moviecode=${movieinfo.moviecode}'/>>${movieinfo.movienm}</a>
			</td>
			<td>
				평점: ${movieinfo.score } <br>
				${movieinfo.plot }
			
			</td>
			</tr>
    </c:forEach>
    
    </table>

<jsp:include page="../include/footer.jsp" />