<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="include/header.jsp" />


	<c:forEach var = "member" items="${membersList}">
			<a href=<c:url value='/members/modify?userid=${member.userid}'/>>${member.usernm} <br></a>
			${member.userid } <br>
			회원차단여부: ${member.userblock } <br>
			댓글차단여부: ${member.replyblock } <br>
			
    </c:forEach>


<a href= "/movie/insert">영화입력</a>
<jsp:include page="include/footer.jsp" />