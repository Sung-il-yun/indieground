<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />

<!-- 회원수정 -->
회원이름: ${member.usernm } <br>

<form method="post">
		<p>
			<c:if test="${member.userblock == '0' }">
			<input type='checkbox' name='userblock'/>회원차단여부 <br>
			</c:if>
			<c:if test="${member.userblock == '1' }">
			<input type='checkbox' name='userblock' checked/>회원차단여부 <br>
			</c:if>
			<c:if test="${member.replyblock == '0' }">
			<input type='checkbox' name='replyblock'/>댓글차단여부 <br>
			</c:if>
			<c:if test="${member.replyblock == '1' }">
			<input type='checkbox' name='replyblock' checked/>댓글차단여부 <br>
			</c:if>
		<p>
		
		<input type="submit" value="완료">
	</form>

	
	<a href= "javascript:history.back();">돌아가기</a>

<jsp:include page="../include/footer.jsp" />