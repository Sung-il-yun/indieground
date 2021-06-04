<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="include/header.jsp" />

<h1>영화예고편</h1>

	<c:forEach var = "preview" items="${moviePreview}">	
		<h4>${preview.movienm}</h4> <br>
		<iframe class="embed-responsive-item" allowfullscreen="" width="400" height="300" src=${preview.prvlink}></iframe>
    </c:forEach>

<jsp:include page="include/footer.jsp" />