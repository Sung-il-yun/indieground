<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="include/header.jsp" />

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>인디그라운드</title>
    <link rel="stylesheet" href="<c:url value='/resources/assets/bootstrap/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Architects+Daughter">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,800">
    <link rel="stylesheet" href= "<c:url value='/resources/assets/fonts/font-awesome.min.css'/>">
    <link rel="stylesheet" href= "<c:url value='/resources/assets/css/--mp---Multiple-items-slider-responsive.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/Navigation-with-Search.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/styles.css'/>">


    <link rel="stylesheet" type="text/css" href= "<c:url value='/resources/slick/slick.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/slick/slick-theme.css'/>">
    
	<style type="text/css">
    html, body {
      margin: 0;
      padding: 0;
    }

    p{margin-left: 35px;
    font-weight: bold;
    font-size: 27px;
    }

    * {
      box-sizing: border-box;
    }

    .slider {
        width: 50%;
        margin: 100px auto;
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: 1;
    }

    .slick-current {
      opacity: 1;
    }
    


    
    

   .carousel1{
   margin: 35px;
   }

   .carousel2{
   margin: 35px;
   }
   </style>



</head>

<body>

	<div class="row justify-content-center">
    	
        <div class="col-auto"><a class="text-muted" href="#">&nbsp;<i class="fa fa-search"></i>&nbsp;</a><input type="search"><a href="#">&nbsp;&nbsp;</a><button class="btn btn-info" type="button" style="background: rgba(23,162,184,0.6);">검색</button></div>
    </div>
    <div class="container" style="width: 1071px;">
        <div class="dropdown">
        	<select id ="caro" onchange='location.href = "../" + "movie?carousel=" + (document.getElementById("caro").options[document.getElementById("caro").options.selectedIndex].value);' style="height: 43px;border-width: 0.5px;border-color: rgba(54, 98, 101,0.5);border-top-color: rgb(0,;border-right-color: #ffffff;border-bottom-color: 0);border-left-color: 0,;background: rgba(102, 215, 215, 0.5);color: rgb(255,255,255);border-radius: 7px;width: 114px;">
        		<c:if test="${carousel == 'genre' }">
				<option value="genre" selected>장르순</option>
        		<option value="name">이름순</option>
        		<option value="releasedate">최신순</option>
				</c:if>
				<c:if test="${carousel == 'name' }">
				<option value="genre">장르순</option>
        		<option value="name" selected>이름순</option>
        		<option value="releasedate">최신순</option>
				</c:if>
				
				<c:if test="${carousel == 'releasedate' }">
				<option value="genre">장르순</option>
        		<option value="name">이름순</option>
        		<option value="releasedate" selected>최신순</option>
				</c:if>

        	</select>
        </div>
    </div>


	<!-- 넘겨받은 파라미터를 통해 어떤 것을 기준으로 정렬할지 결정한다. 이미 기준은 나와있다. -->
	<!-- 장르, 시간, 평점이다. -->
	<!-- 맨앞의 c:if 문으로 어떤 것인지 일괄 결정하고 캐러셀의 크기와 형태는 고정이라 신경쓸 것 없다. -->


	<c:forEach var = "moviepreview" items="${previewList}">
	
			<div class="modal fade" id="t${moviepreview.moviecode}" role="dialog" tabindex="-1">
				<div class="modal-dialog modal-lg" role="document">
            		<div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">${moviepreview.movienm}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body"><iframe class="embed-responsive-item" allowfullscreen="" width="100%" height="600" src=${moviepreview.prvlink}></iframe></div>
                <div class="modal-footer"></div>
            </div>
            </div>
            </div>
    	</c:forEach>
    	
    <c:if test="${carousel == 'genre'}">
    
    
    <h2>액션</h2>
    <div class="carousel1">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.genre == '액션' || movieinfo.genre == '판타지'}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>SF</h2>
    <div class="carousel2">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.genre == 'SF'}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>코미디</h2>
    <div class="carousel3">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.genre == '코미디'}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>로맨스</h2>
    <div class="carousel4">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.genre == '로맨스'}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    </c:if>
    
    <c:if test="${carousel == 'releasedate'}">

    <h2>1년이내</h2>
    <div class="carousel1">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.relsedate.getYear() + 1900 == 2021}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>2016 ~ 2021</h2>
    <div class="carousel2">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.relsedate.getYear() + 1900 >= 2016 && movieinfo.relsedate.getYear() + 1900 < 2021}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>2011 ~ 2016</h2>
    <div class="carousel3">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.relsedate.getYear() + 1900 >= 2011 && movieinfo.relsedate.getYear() + 1900 < 2016}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    <br>
    
    <h2>2011년 이전</h2>
    <div class="carousel4">
    	<c:forEach var = "movieinfo" items="${movieList}">
    		<c:if test="${movieinfo.relsedate.getYear() + 1900 < 2011}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
			</c:if>
    	</c:forEach>
    		
    </div>
    
    </c:if>
    
    <c:if test="${carousel == 'name'}">
    </c:if>

    	
<script>


$(document).on('ready', function(){
	
		$(".carousel1").slick({
		
infinite: true,
slidesToShow: 5,
slidesToScroll: 1,
dots: false,
arrows: true,


responsive: [
{
breakpoint: 1024,
settings: {
slidesToShow: 3,
slidesToScroll: 1,
infinite: true,
dots: true
}
},
{
breakpoint: 600,
settings: {
slidesToShow: 2,
slidesToScroll: 1
}
},
{
breakpoint: 480,
settings: {
slidesToShow: 1,
slidesToScroll: 1
}
}
// You can unslick at a given breakpoint now by adding:
// settings: "unslick"
// instead of a settings object
]



		});
$(".carousel2").slick({
		
infinite: true,
slidesToShow: 5,
slidesToScroll: 1,
dots: false,
arrows: true,


responsive: [
{
breakpoint: 1024,
settings: {
slidesToShow: 3,
slidesToScroll: 1,
infinite: true,
dots: true
}
},
{
breakpoint: 600,
settings: {
slidesToShow: 2,
slidesToScroll: 1
}
},
{
breakpoint: 480,
settings: {
slidesToShow: 1,
slidesToScroll: 1
}
}
// You can unslick at a given breakpoint now by adding:
// settings: "unslick"
// instead of a settings object
]

		});

$(".carousel3").slick({
	
	infinite: true,
	slidesToShow: 5,
	slidesToScroll: 1,
	dots: false,
	arrows: true,


	responsive: [
	{
	breakpoint: 1024,
	settings: {
	slidesToShow: 3,
	slidesToScroll: 1,
	infinite: true,
	dots: true
	}
	},
	{
	breakpoint: 600,
	settings: {
	slidesToShow: 2,
	slidesToScroll: 1
	}
	},
	{
	breakpoint: 480,
	settings: {
	slidesToShow: 1,
	slidesToScroll: 1
	}
	}
	// You can unslick at a given breakpoint now by adding:
	// settings: "unslick"
	// instead of a settings object
	]



			});
			
			
$(".carousel4").slick({
	
	infinite: true,
	slidesToShow: 5,
	slidesToScroll: 1,
	dots: false,
	arrows: true,


	responsive: [
	{
	breakpoint: 1024,
	settings: {
	slidesToShow: 3,
	slidesToScroll: 1,
	infinite: true,
	dots: true
	}
	},
	{
	breakpoint: 600,
	settings: {
	slidesToShow: 2,
	slidesToScroll: 1
	}
	},
	{
	breakpoint: 480,
	settings: {
	slidesToShow: 1,
	slidesToScroll: 1
	}
	}
	// You can unslick at a given breakpoint now by adding:
	// settings: "unslick"
	// instead of a settings object
	]



			});

});


</script>



</body>

<jsp:include page="include/footer.jsp" />