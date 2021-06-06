<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    

<jsp:include page="../include/header.jsp" />

<!-- VO를 불러와 보여주는 역할 -->
<!-- 댓글 작성을 지원할 것 -->
<!-- 즉 초기 댓글 db도 불러와야 함 -->
<div style= "background-color:rgba(255,255,255, 0.4);">
<h4>${movie.movienm}</h4> <br>
<img src = ${movie.movieposter} height="600" width="400"> <br>
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
			<img src = ${actor.photolink} width="100" height="150">
			${actor.actor}
		</c:if>
	</c:forEach>

<h2>출연진</h2>

	<c:forEach var = "actor" items="${actors}">
		<c:if test="${movie.moviecode == actor.moviecode && actor.directorat == 'F'}">
			<img src = ${actor.photolink} width="70" height="100">
			${actor.actor}
		</c:if>
	</c:forEach>

<a href= "<c:url value='/modify?moviecode=${movie.moviecode }' />">수정</a>
</div>

<!-- div 댓글 -->
<!-- 아작스 통신후 이걸 전부 지워버린 후 새로 공간을 만든다. -->


<script>

function replydelete(sn) {
	console.log(sn);
	
	$.ajax({
		
		type: "POST", //서버에 전송하는 HTTP 방식
		url: "reply/delete", //서버 요청 URL
		headers: {
			"Content-Type" : "application/json"
		}, //요청 헤더 정보
		data: sn, //서버로 전송할 데이터
		//dataType: "json", //서버로부터 응답받을 데이터의 형태
		success: function(result) { //함수의 매개변수는 통신 성공 시 데이터가 저장될 곳.
			
			
			console.log((new Date(result[0]['updtdt'] + 32400000)).toISOString().replace(/T/, ' ').replace(/\..+/, ''));
			
			toPrint = "";
		
			
			for(i=0; i < result.length; i++) {
				if(result[i]['moviecode'] == ${movie.moviecode}) { //무비코드가 같은 경우만 출력. 오류 해결
				toPrint += (new Date(result[i]['updtdt'] + 32400000)).toISOString().replace(/T/, ' ').replace(/\..+/, '');
				toPrint += "<br>";
				toPrint += result[i]['userid'];
				toPrint += "<br>";
				toPrint += result[i]['reply'];
				toPrint += "<br>";
				toPrint += "<button onclick=";
				toPrint += "\"";
				toPrint += "replydelete(" + "\'";
				toPrint += result[i]['sn'];
				toPrint += "\'" + ")" + "\"";
				toPrint += ">삭제</button>";
				}
				
			}
			
			$("#replyList").html(toPrint);
			
			console.log(toPrint);
		
		},
		error: function() {
			console.log("통신 실패!");
		}

	});
	
}


</script>

<!-- 평점은 평점수 0.01, 평점 0.00001 같은 꼼수로 무한대 방지 -->

<c:set var = "total" value = "0.000001" />
<c:set var = "items" value = "0.01" />

<c:forEach var = "reply" items="${replies}">
		<c:if test="${reply.moviecode == movie.moviecode}">
		<div style="display:none;">
			${total = total + reply.score }
			${items = items + 1}
		</div>
		</c:if>
	</c:forEach>
댓글평점: <fmt:formatNumber value= "${total/items}" pattern =".00"/>

<h2>댓글</h2>
<div id="replyList">

	<c:forEach var = "reply" items="${replies}">
		<c:if test="${reply.moviecode == movie.moviecode}">
			${reply.updtdt} <br>
			${reply.userid} <br>
			${reply.reply}<br>
			
			<button onclick="replydelete('${reply.sn}')">삭제</button>
		</c:if>
	</c:forEach>
</div>

<h2>댓글 입력창</h2>
<div>
	유저 아이디: <input id="user_id1"> <br>
	평점: <input id="replyscore"> <br>
	댓글내용: <input id="replycontent"> <br> 
	
	<button id="submitReply">댓글등록</button>
</div>

<!-- 배우모달창  -->


	<a href= "/movie/actorInsert?moviecode=${movie.moviecode }">배우입력</a>
<div>
</div>

<script>
	

	$("#submitReply").click(function(){
		//댓글등록 후 지운다. (html로 덮어쓰기)
		
			
			const id = $('#user_id1').val();
			const score = $('#replyscore').val();
			const content = $('#replycontent').val();
			
			console.log(id)
			console.log(score)
			console.log(content)
			const replyForm = {
					userid : id,
					score : score,
					reply : content,
					moviecode : '${movie.moviecode}'
			};
				
		
		$.ajax({
				
			type: "POST", //서버에 전송하는 HTTP 방식
			url: "reply/insert", //서버 요청 URL
			headers: {
				"Content-Type" : "application/json"
			}, //요청 헤더 정보
			data: JSON.stringify(replyForm), //서버로 전송할 데이터
			//dataType: "json", //서버로부터 응답받을 데이터의 형태
			success: function(result) { //함수의 매개변수는 통신 성공 시 데이터가 저장될 곳.
				console.log("댓글 등록 완료");
				console.log(result[0]['reply']);
				console.log(result.length);
				
				
				console.log((new Date(result[0]['updtdt'] + 32400000)).toISOString().replace(/T/, ' ').replace(/\..+/, ''));
				
				toPrint = "";
			
				
				for(i=0; i < result.length; i++) {
					if(result[i]['moviecode'] == ${movie.moviecode}) { //무비코드가 같은 경우만 출력. 오류 해결
					toPrint += (new Date(result[i]['updtdt'] + 32400000)).toISOString().replace(/T/, ' ').replace(/\..+/, '');
					toPrint += "<br>";
					toPrint += result[i]['userid'];
					toPrint += "<br>";
					toPrint += result[i]['reply'];
					toPrint += "<br>";
					toPrint += "<button onclick=";
					toPrint += "\"";
					toPrint += "replydelete(" + "\'";
					toPrint += result[i]['sn'];
					toPrint += "\'" + ")" + "\"";
					toPrint += ">삭제</button>";
					}
					
				}
				
				$("#replyList").html(toPrint);
			
			},
			error: function() {
				console.log("통신 실패!");
			}

		});
	})
	
	

	
	
	
	
	
	</script>


<jsp:include page="../include/footer.jsp" />