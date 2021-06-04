<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="include/header.jsp" />


<h1>(임시)배우입력 페이지</h1>

<!-- 무비코드로 배우를 불러오기 때문에 배우검색시 동일배우인지 이름으로 검색한다. -->
<!-- 키가 아닌 이름 검색을 통해 영화코드를 얻어와 출연한 영화 목록을 구한다.-->

	<form method="post">
		<p>
			<div id="imgurl"></div>
			
			배우이름: <input name="actor"> <br>
			영화코드: <input name="moviecode"> <br>
			배우약력: <input name="profile"> <br>
			사진: <input id="image" name="photolink"> <button type = "button" id = "preview">미리보기</button> <br>
			성별: <input name="genger"> <br>
			나이: <input name="age"> <br>
			국적: <input name="contury"> <br>
			감독여부: <input name="directorat"> <br>
			
			<input type="submit" value="등록">
	
		<p>
	</form>

	<!-- 배우 등록은 원래 모달과 아작스로 해야 한다. -->

	<script>
	const result = "${msg}";
	if(result === "uploadSuccess") {
		alert("입력이 완료 되었습니다.");
	}
	</script>
	
	
	<script>
	$("#preview").click(function(){
		
		if($('#image').val() === "")
			alert("이미지가 없습니다");
		else
			$("#imgurl").html('<img src=' + $('#image').val() + ' width = "400" height = "600"> <br>')
	})
	</script>


<jsp:include page="include/footer.jsp" />