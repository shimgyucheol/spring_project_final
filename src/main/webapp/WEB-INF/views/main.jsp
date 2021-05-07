<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<title> LOTTE CINEMA </title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function logincheck(mid){
		var id = "${user_id}";
		if(id==null || id==''){
			alert("로그인후 이용 바랍니다.");
		}else{
			location.href="movieinfo?mid="+mid
		}
	}
</script>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="css/content.css?v=Y" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/top_navi.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<!-- <script type="text/javascript" src="js/jquery.easing.1.3.js"></script> -->
<!-- <script type="text/javascript" src="js/idangerous.swiper-2.1.min.js"></script> -->
<!-- 스와이퍼 최신버전시작 -->
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- 스와이퍼 최신버전끝 -->
<!-- 스와이퍼최신 css -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<!-- 스와이퍼최신 css끝 -->
<!-- <script type="text/javascript" src="js/jquery.anchor.js"></script> -->
<!-- 모달 -->		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- 모달 -->		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- 모달 -->		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	
	var mySwiper = new Swiper('#mainRoll',{
		pagination: '#mainThum',
		paginationClickable: true,
		slidesPerView: 1,
		loop: true,
		autoplay:{delay:3000,
	},
			
	});

	var mySwiper2 = new Swiper('#bestseller',{
		paginationClickable: true,
		slidesPerView: 5,
		loop: true,
		autoplay:{delay:5000,
		},
	});

	var mySwiper3 = new Swiper('#mainSale',{
		paginationClickable: true,
		slidesPerView: 5,
		loop: true,
		autoplay:3000
	});
	

/*  	 function rollwidth(){
		var winWidth = $(window).width();
		if(winWidth < 768){
			mySwiper2.params.slidesPerView = 1;
			mySwiper3.params.slidesPerView = 2;
		}else{
			mySwiper2.params.slidesPerView = 3;
			mySwiper3.params.slidesPerView = 5;
		}
	}   */
/* 	$('.arrowLeft').bind('click', function(e){
		e.preventDefault()
		mySwiper2.swipePrev()
	});
	$('.arrowRight').bind('click', function(e){
		e.preventDefault()
		mySwiper2.swipeNext()
	});

	$('.saleLeft').bind('click', function(e){
		e.preventDefault()
		mySwiper3.swipePrev()
	});
	$('.saleRight').bind('click', function(e){
		e.preventDefault()
		mySwiper3.swipeNext()
	}); */




});
</script>
<script>
	$(document).ready( function() {
		$(".mouseover").mouseover(function(){
			$(this).addClass("active");
		}); 
     	});
</script>
<script>
	$(document).ready( function() {
		$(".mouseover").mouseout(function(){
			$(this).removeClass("active");
		});
     	});
</script>
<style>

	#absol{position:absolute; width:100%; z-index: 2; 
	height:225px;
	background-color:transparent;
	background:linear-gradient(to bottom, rgba(29,29,31,1) 0%,
	rgba(0,0,0,0) 100%);
	}
</style>
<style>
	#mainRoll{z-index:1; position:relative; height:774px;}
</style>
<style>
	#topSubm2{position:absolute;  left:-192.5px;}
</style>
<style>
	#topSubm3{position:absolute;  left:-295.5px;}
</style>
<style>
	#topSubm4{position:absolute;  left:-398.5px;}
</style>
<style>
	#topSubm5{position:absolute;  left:-501.5px;}
</style>
<style>
	#topSubm6{position:absolute;  left:-604.5px;}
</style>
<style>
	#linear{position:absolute; top:634px; z-index:3;  width:100%; height:140px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 1) 85%, rgba(0, 0, 0, 1) 100%);}
</style>
<style>
	#background{background:rgba(0, 0, 0, 1); padding-top:20px;}
</style>
<style>
	#bestseller img{height:226px;}
</style>
<style>
	.name{color:white; font-size: 15px;}
</style>
<style>
	#info img{width:16px; height:16px;}
</style>
<style>
	#info{text-align: center;}
</style>
<style>
	.inner{width:900px; margin:0 auto; color:black;}
</style>
<style>
	.article_award{margin: 50px auto 0; padding:20px 0; background:#f5f5f5; text-align: center;}
</style>
<style>
	.article_award img{display:inline-block;}
</style>

<style>
	#ex1{max-width:850px; position: relative; z-index:4;}
</style>
<style>
	#ex2{max-width:850px; position: relative; z-index:4;}
</style>
<style>
	#ex3{max-width:850px; position: relative; z-index:4;}
</style>
<style>
	.blocker{z-index:1000;}
</style>
<style>
	.disnone{position:absolute; z-index:1; 
	width:120px; height:40px; left:19.095px; top:73px;
	font-size:15px; display:none;
	border:1px solid white; border-radius:5px;}
</style>
<style>
	.disnone2{position:absolute; z-index:1;
	width:120px; height:40px; left:19.095px; top:113px;
	font-size:15px; display:none;
	border:1px solid white; border-radius:5px;}
</style>
<style>
	.center{width:57px; height:20px; margin:10px auto; color:white;}
</style>
<style>
	.active #opacity{opacity: 0.33;}
</style>
<style>
	.active .disnone{display:block;}
</style>
<style>
	.active .disnone2{display:block;}
</style>
<style>
	.white{color:white;}
</style>
<style>
	#textinfo{position:absolute; color:white; z-index:1000;
	left:10.905px; font-size:20px; font-weight: 500; top:-30px;}
</style>
<style>
	#red{color:#ED4C6B;}
</style>
<style>
	.num_info{display:block;  position:absolute; z-index:1001; color:#fff;
	height:23px; font-size:26px; font-style:italic; bottom:0;
	font-weight:bold; background:linear-gradient(to bottom, rgba(0,0,0,0) 0%,rgba(0,0,0,0.15) 40%,rgba(0,0,0,0.5) 100%);
	width:148.19px; padding-left: 10px; padding-bottom:2px;
	}
</style>
<style>
	#black{color:black;}
</style>
<style>
	#header #snbBox #quickmenu{background: none;}
</style>
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">
					<div id="ex1" class="modal">
					<video height="100%" width="100%" src="/test/test1.mp4" controls autoplay muted></video>
					</div>
					<div id="ex2" class="modal">
					<video height="100%" width="100%" src="/test/test2.mp4" controls autoplay muted></video>
					</div>
					<div id="ex3" class="modal">
					<video height="100%" width="100%" src="/test/test3.mp4" controls autoplay muted></video>
					</div>
<div id="absol">

	<div id="header">
		
		<div id="snbBox">
			<h1><img src="images/logo/logo.png" alt="JARDIN SHOP" /></h1>
			<div id="quickmenu">
				<div id="mnaviClose"><img src="images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
				<ul>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">CUSTOMER</a></li>
					<li><a href="#">COMMUNITY</a></li>
				</ul>
			</div>
			<div id="snb">
				<ul>
			<c:choose>
                  <c:when test="${user_id eq null || user_id eq ''}">                  
                     <li><a href="/login">LOGIN</a></li>
                     <li><a href="/join">JOIN</a></li>
                  </c:when>
                  <c:otherwise>
                     <li><a href="/reservationStatus">MYPAGE</a></li>
                     <li><a href="/ifo_modify">EDIT</a></li>
                     <li><a href="#dec_div" rel="modal:open">신고하기</a></li>
                     <li><a href="/logout">LOGOUT</a></li>
                     <c:if test="${user_id eq 'admin'}">
                        <li><a href="/adminMenu">관리자 메뉴</a></li>
                     </c:if> 
                  </c:otherwise>
			</c:choose>
               </ul>

			</div>
		</div>
	</div>

	<script type="text/javascript">
         $(document).ready(function(){
             $("#dec_reason7").change(function(){
                 if($("#dec_reason7").is(":checked")){
                    $("#etc_reason").attr('readonly', false);
                 }else{
                    $("#etc_reason").attr('readonly', true);
                    $('#etc_reason').val('');
                 }
             });
         });
      </script>
      
      <!-- 모달 -->
      <div id="dec_div" class="modal">
               <form action="/declarationmember" method="post">
               <input type="text" placeholder="신고할 유저의 아이디를 적어주세요" id="dec_id" name="dec_id" style="height: 30px;">
               <input type="submit" value="신고하기" style="height: 36px;"><br><br>
               <label for="dec_reason1">홍보게시글작성</label><input type="checkbox" name="dec_reason" value="홍보게시글작성" id="dec_reason1">
               <label for="dec_reason2">음란성/선정성</label><input type="checkbox" name="dec_reason" value="음란성/선정성" id="dec_reason2">
               <label for="dec_reason3">개인정보노출</label><input type="checkbox" name="dec_reason" value="개인정보노출" id="dec_reason3"><br><br>
               <label for="dec_reason4">욕설/인신공격</label><input type="checkbox" name="dec_reason" value="욕설/인신공격" id="dec_reason4">
               <label for="dec_reason5">도배성후기작성</label><input type="checkbox" name="dec_reason" value="도배성후기작성" id="dec_reason5">
               <label for="dec_reason6">불법정보</label><input type="checkbox" name="dec_reason" value="불법정보" id="dec_reason6"><br><br>
               <label for="dec_reason7">기타</label><input type="checkbox" id="dec_reason7" onclick="dec_rsason_etc()">
               <input type="text" id="etc_reason" style="height: 30px;" name="dec_reason" readonly="readonly"> 
               <input type="hidden" id="id" value="${user_id}" name="id" readonly="readonly"> 
               </form>
     </div>
	
	
	<!-- GNB -->
	<div id="gnb">
		
		<div id="top">
			<ul>
				
				<li class="t2"><a href="/reserve/test" id="topNavi2">예매</a>
					<ul id="topSubm2">
						<li><a href="/reserve/reservemovie">예매하기</a></li>
						<li><a href="#">상영시간표</a></li>
						<li><a href="#">할인안내</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi3">영화</a>
					<ul id="topSubm3">
						<li><a href="searchpage">영화검색</a></li>
						<li><a href="#">현재상영작</a></li>
						<li><a href="#">상영예정작</a></li>
						<li><a href="#">아르떼</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi4">영화관</a>
					<ul id="topSubm4">
						<li><a href="#">스페셜관</a></li>
						<li><a href="#">서울</a></li>
						<li><a href="#">경기/인천</a></li>
						<li><a href="#">충청/대전</a></li>
						<li><a href="#">전라/광주</a></li>
						<li><a href="#">경북/대구</a></li>
						<li><a href="#">경남/부산/울산</a></li>
						<li><a href="#">강원</a></li>
						<li><a href="#">제주</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi5">이벤트</a>
					<ul id="topSubm5">
						<li><a href="#">홈</a></li>
						<li><a href="#">영화</a></li>
						<li><a href="#">시사회/무대인사</a></li>
						<li><a href="#">HOT</a></li>
						<li><a href="#">제휴할인</a></li>
						<li><a href="#">우리동네영화관</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi6">스토어</a>
					<ul id="topSubm6">
						<li><a href="#">베스트</a></li>
						<li><a href="#">관람권</a></li>
						<li><a href="#">스낵음료</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<script type="text/javascript">initTopMenu();</script>
	</div>
	
	
	
	
	</div>
	
	<!-- //GNB -->

	<!-- mainSection -->
	
	<div id="mainSection">

		<!-- main rolling -->
		<div id="mainRoll">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					
					<a href="#ex1" rel="modal:open"><img src="images/movie_images/movie_img1.jpg" alt="" /></a>
				</div>
				<div class="swiper-slide">
					
					<a href="#ex2" rel="modal:open"><img src="images/movie_images/movie_img2.jpg" alt="" /></a>
				</div>
				<div class="swiper-slide">
					
					<a href="#ex3" rel="modal:open"><img src="images/movie_images/movie_img3.jpg" alt="" /></a>
				</div>
				
			</div>
		</div>
		<!-- //main rolling -->
		<div id="linear">
		</div>
		
		
		
		
		
		<!-- main contents -->
		<div id="background">
		<div id="mainContents">
		<div id="textinfo">현재 상영작 <a id="red">TOP ${map.count }</a></div>
			<!-- Best seller -->
			<div id="bestseller">
				<div class="swiper-wrapper">
				<!-- main 현재상영작 이미지 리스트 -->
				<c:set var="count" value="0"/>
				<c:forEach var="dto" items="${map.list}">
				<c:set var="count" value="${count+1}"/>
					<div class="swiper-slide">
						<div class="img mouseover">
						<div class="disnone">
						<div class="center">
						<a href=""><strong class="white">예매하기</strong></a>
						</div>
						</div>
						<div class="disnone2">
						<div class="center">
						<a onclick="logincheck(${dto.mid})" style="cursor: pointer;"><strong class="white">상세정보</strong></a>
						</div>
						</div>
						<a href="#">
						<img id="opacity" src="images/movie_info/${dto.poster }" alt="Best seller 상품" />
						</a>
						<em class="num_info">${count}</em>
						</div>
						<div class="name">${dto.mname }</div>
						<div id="info">예매율 ${dto.mrate }% ㅣ <img src="images/starheart/star.png">${dto.grade } ㅣ <img src="images/starheart/heart.png"></div>
					</div>
					
				
				</c:forEach>
				<!-- main 현재상영작 이미지 리스트 끝 -->	
					
					
				</div>
			</div>
			<!-- <div class="rollbtn">
				<a class="arrowLeft" href="#"></a> 
				<a class="arrowRight" href="#"></a>
			</div> -->
			</div>
			</div>
			<!-- //Best seller -->
			<!-- brand -->

			<!-- //brand -->

			<!-- notice -->
			<!-- //notice -->

			<!-- quickmenu -->
			
			<script type="text/javascript">
			$(function(){
				
				$(window).scroll(function(){
					var tg = $("div#quick");
					var xg = $("div#mainContents");
					var limit = xg.height()- 165;
					var tmp = $(window).scrollTop();

					if (tmp > limit) {
						tg.css({"position" : "absolute","right" : "-150px","bottom" : "208px","top" : "auto"});
					}
					else {
						if (tmp < 150 ){
							tg.css({"position" : "fixed","top" : "600px" , "margin-left" : "940px","right" : "auto"});
						}else{
							tg.css({"position" : "fixed","top" : "400px" , "margin-left" : "940px","right" : "auto"});
						}
					}
				});

			});
			</script>
			<!-- //quickmenu -->

		<!-- //main contents -->

	<!-- //mainSection -->
	<div class="inner">
		<div><img src="images/logo/logo2.gif">
		</div><br>
		회원약관ㅣ개인정보처리방침ㅣ이메일무단수집거부ㅣ영상정보처리기기 운영 및 관리방침ㅣL.POINT회원안내ㅣ배정기준ㅣ채용안내ㅣ광고/임대문의ㅣ윤리경영ㅣ기업정보<br><br><br>
		서울특별시 송파구 올림픽로 300 롯데월드타워 27층고객센터 ㅣ 1544-8855<br><br>
		대표이사 기원규 ㅣ 사업자등록번호 313-87-00979 ㅣ 통신판매업신고번호 제1184호 ㅣ 개인정보 보호 최고 책임자 김무성<br><br>
		COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.
	</div>
	<div class="article_award">
		<img src="images/footer/footer1.png">
		<img src="images/footer/footer2.png">
		<img src="images/footer/footer3.png">
		<img src="images/footer/footer4.png">
		<img src="images/footer/footer5.png">
		<img src="images/footer/footer6.png">
		<img src="images/footer/footer7.png">
		<img src="images/footer/footer8.png">
	</div>

</div>
</div>
</div>
</body>
</html>