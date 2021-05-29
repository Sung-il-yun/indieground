<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="include/header.jsp" />

<head>

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

<div class="carousel2">
    	<c:forEach var="i" begin="0" end="14">
			<div><img src="https://upload.wikimedia.org/wikipedia/en/3/3d/Recalled_film.jpg" style="height:300"></div>
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