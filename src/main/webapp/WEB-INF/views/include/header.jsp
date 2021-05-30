<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
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


   .modal_test{
        display: none;
        width: 500px;
        height: 500px;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }

    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(0, 0,0, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    
    
    
    .container {
  position: relative;
  width: 50%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #04AA6D;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}


   .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }



	
	label {
            float: left;
        }

   </style>

<script src="https://code.jquery.com/jquery-2.2.1.js"></script>

</head>

<body class="mainbody" style="background: url(&quot;resources/assets/img/film-background-1334067869u9d.jpg&quot;);background-size: cover;">
    <div class="container">
        <nav class="navbar navbar-light navbar-expand-md headerbar" style="background: rgba(0,0,0,0);">
            <div class="container-fluid"><a class="navbar-brand logo" href="#" style="color: rgba(0,0,0,0.7);"><strong>인디그라운드</strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav ml-auto" style="border-style: none;">
                    
                    	<!-- HomeController.java의 home()에서 넘겨준 mainPage 값의 유무를 검사하여, mainPage 값이 없으면 출력한다. -->
                    	<c:if test="${mainPage == null}">
                        <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-search" style="width: 19.8594px;"></i><input type="search" style="margin: 5px;"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-info" type="button" style="color: rgba(255,255,255,0.94);border-color: rgba(255,255,255,0.94);background: rgba(23,162,184,0.6);">검색</button></a></li>
                        </c:if>
                        <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#log-in"><button class="btn btn-primary" type="button" style="background: rgba(0,123,255,0.6);color: rgba(255,255,255,0.9);border-color: rgba(255,255,255,0.9);">로그인</button></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse text-center" id="navcol-1">
                <ul class="navbar-nav mx-auto" style="border-style: none;">
                
                <!-- c:로 절대경로를 줘야하는 것 같다. -->
                
                    <li class="nav-item"><a class="nav-link active" href="<c:url value='/'/>"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52, 58, 64, 0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">홈</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/list'/>"><button class="btn btn-dark" type="button" style="background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">영화소개</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/review'/>"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">리뷰</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/preview'/>"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">예고편</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/admin'/>"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);">관리자</button></a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    
    <c:if test="${mainPage != null}">
    <div class="row justify-content-center">
    	
        <div class="col-auto"><a class="text-muted" href="#">&nbsp;<i class="fa fa-search"></i>&nbsp;</a><input type="search"><a href="#">&nbsp;&nbsp;</a><button class="btn btn-info" type="button" style="background: rgba(23,162,184,0.6);">검색</button></div>
    </div>
    <div class="container" style="width: 1071px;">
        <div class="dropdown">
        	<select onchange='alert("변경됨");' style="height: 43px;border-width: 0.5px;border-color: rgba(54, 98, 101,0.5);border-top-color: rgb(0,;border-right-color: #ffffff;border-bottom-color: 0);border-left-color: 0,;background: rgba(102, 215, 215, 0.5);color: rgb(255,255,255);border-radius: 7px;width: 114px;">
        		<option value="genre" selected>장르순</option>
        		<option value="name">이름순</option>
        		<option value="releasedate">최신순</option>
        	</select>
        </div>
    </div>
    </c:if>
    
    
	<script src="resources/assets/js/jquery.min.js"></script>
    <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="resources/assets/js/--mp---Multiple-items-slider-responsive-1.js"></script>
    <script src="resources/assets/js/--mp---Multiple-items-slider-responsive.js"></script>
    
    <script src="resources/assets/js/bootstrap4-rating-input.js"></script>



    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="resources/slick/slick.js" type="text/javascript" charset="utf-8"></script>
    
    
    
	<%@ include file="users/login_modal.jsp" %>  