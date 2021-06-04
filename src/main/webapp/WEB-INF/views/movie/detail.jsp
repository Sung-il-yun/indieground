<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    

<jsp:include page="../include/header.jsp" />

<!-- VO를 불러와 보여주는 역할 -->
<!-- 댓글 작성을 지원할 것 -->
<!-- 즉 초기 댓글 db도 불러와야 함 -->
<div><h2>영화상세보기</h2>
영화제목 : ${movie.movienm} <br>
<img src = ${movie.movieposter} height="800" width="600"> <br>
평점: ${movie.score} <br>
줄거리 : ${movie.plot} <br>
감독: ${movie.director } <br>
출연진: ${movie.casting} <br>
장르: ${movie.genre }<br>
출연진(이건 따로 출연진을 불러옴. 모달창에 띄운다. 어차피 무비코드로 찾는 거라 상관없다.)
출연진을 띄우는 방법을 생각해 봤는데 대단히 비효율적이지만 컨트롤러에서 모델로 영화정보와 액터정보를 동시에 처리하는 것이 적당하다.

<h2>감독</h2>

	<c:forEach var = "actor" items="${actors}">
		<c:if test="${movie.moviecode == actor.moviecode && actor.directorat == 'T'}">
			<img src = ${actor.photolink} width="400" height="600">
			${actor.actor}
		</c:if>
	</c:forEach>

<h2>출연진</h2>

	<c:forEach var = "actor" items="${actors}">
		<c:if test="${movie.moviecode == actor.moviecode && actor.directorat == 'F'}">
			<img src = ${actor.photolink} width="400" height="600">
			${actor.actor}
		</c:if>
	</c:forEach>


영화상세페이지의 댓글평점은 c문으로 대충계산한다. 데이터베이스에서 불러오는게 아님.
<a href= "<c:url value='/modify?moviecode=${movie.moviecode }' />">수정</a>
</div>

<!-- div 댓글 -->
<div>

</div>

<!-- 배우모달창  -->
<div>
</div>
<jsp:include page="../include/footer.jsp" />