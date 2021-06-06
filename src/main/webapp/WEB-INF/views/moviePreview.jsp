<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="include/header.jsp" />


	<table style="margin-left: auto; margin-right: auto; background-color:rgba(255,255,255, 0.4);" >
	
		<th>
		<h3>영화예고편</h3>
		
		</th>

		<tr>
			<c:forEach var="preview" items="${moviePreview}" varStatus="status">
				<c:if test="${status.index%3==0}">
					</tr><tr>
				</c:if>
    			<td style="padding: 30px 50px;">
    			<h4>${preview.movienm}</h4>
					<iframe class="embed-responsive-item" allowfullscreen="" width="400" height="300" src=${preview.prvlink}></iframe>

				</td>
			</c:forEach>
		</tr>
		
	</table>



<jsp:include page="include/footer.jsp" />