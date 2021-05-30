<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="include/header.jsp" />

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>인디그라운드</title>
    <link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Architects+Daughter">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,800">
    <link rel="stylesheet" href="resources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="resources/assets/css/--mp---Multiple-items-slider-responsive.css">
    <link rel="stylesheet" href="resources/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="resources/assets/css/styles.css">


    <link rel="stylesheet" type="text/css" href="resources/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css">
    
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
    	


	<div class="carousel2">
    	<c:forEach var = "movieinfo" items="${movieList}">
			<img src = ${movieinfo.movieposter} data-toggle="modal" data-target="#t${movieinfo.moviecode}" width="400" height="600">
    	</c:forEach>
    		
    </div>
    	
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
});


</script>



</body>

<jsp:include page="include/footer.jsp" />