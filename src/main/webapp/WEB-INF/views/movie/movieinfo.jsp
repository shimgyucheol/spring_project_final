<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>영화정보및후기페이지</title>
<!-- jquery 최신버전 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/default.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/owl.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/swiper.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/jquery.mCustomScrollbar.css?v=202104060314">
<script
	src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery.mCustomScrollbar.concat.min.js"></script>

<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/common.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/content.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/dev.css?v=202104060314">
<!-- 스와이퍼 최신버전시작 -->
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- 스와이퍼 최신버전끝 -->
<!-- 스와이퍼최신 css -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<!-- 모달 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- 모달 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- 모달 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<!-- 스와이퍼최신 css끝 -->

<!-- 날짜 변환하는 메소드 사용하게 해주는 스크립트 -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<style>
.img {
	width: auto;
	margin: 0 auto;
	height: 560px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var mySwiper = new Swiper('#mainRoll', {
			pagination : '#mainThum',
			paginationClickable : true,
			slidesPerView : 1,
			loop : true,
			autoplay : {
				delay : 3000,
			},
		});
	});
</script>
<style>
#age {
	position: absolute;
	z-index: 1;
	color: black;
	height: 20px;
	left: 7px;
	top: 6.5px;
	cursor: auto;
	color: white;
	font-weight: bold;
}
</style>
<c:if test="${map.moviedto.age=='전체' }">
	<style>
#age {
	position: absolute;
	z-index: 1;
	color: black;
	width: 32px;
	height: 20px;
	left: 2px;
	top: 6.5px;
	cursor: auto;
	text-align: center;
	color: white;
	font-weight: bold;
}

.ic_grade.gr_15 {
	background-color: #5BC77E;
}
</style>
</c:if>
<style>
.ic_grade.gr_15:before {
	content: "";
}
</style>
<style>
.contents_movie_detail .tit_info {
	position: relative;
}
</style>
<style>
.movie_detail_people .bx_list_people>ul li .infor .tit {
	font-size: 12px;
}
</style>
<style>
.cursor {
	cursor: pointer;
}
</style>
<style>
.stealcut_view_wrap {
	position: relative;
}
</style>
<style>
.none1 {
	display: none;
}
</style>
<style>
.none2 {
	display: none;
}
</style>
<style>
.none3 {
	display: none;
}
</style>
<style>
.none4 {
	display: none;
}
</style>
<style>
.active2 {
	display: block;
}
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


<script>
	function swiperimg(){
		$(".none1").addClass("active2");
		$(".none2").removeClass("active2");
		$(".none3").removeClass("active2");
		$(".none4").removeClass("active2");
	}
</script>
<script>
	function swiperimg2(){
		$(".none2").addClass("active2");
		$(".none1").removeClass("active2");
		$(".none3").removeClass("active2");
		$(".none4").removeClass("active2");
	}
</script>
<script>
	function swiperimg3(){
		$(".none3").addClass("active2");
		$(".none1").removeClass("active2");
		$(".none2").removeClass("active2");
		$(".none4").removeClass("active2");
	}
</script>
<script>
	function swiperimg4(){
		$(".none4").addClass("active2");
		$(".none1").removeClass("active2");
		$(".none2").removeClass("active2");
		$(".none3").removeClass("active2");
	}
</script>



<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$(".addclass").addClass("active");
			$(".addclass2").removeClass("active");
		});
	});
</script>
<script>
	$(document).ready(function() {
		$("#button2").click(function() {
			$(".addclass").removeClass("active");
			$(".addclass2").addClass("active");
		});
	});
</script>
<c:if test="${map.result=='age10' }">
	<script>
	$(document).ready( function() {
		$("#gen10").addClass("top");
		$("#gen20").addClass("undefined");
		$("#gen30").addClass("undefined");
		$("#gen40").addClass("undefined");
	});
</script>
</c:if>
<c:if test="${map.result=='age20' }">
	<script>
	$(document).ready( function() {
		$("#gen10").addClass("undefined");
		$("#gen20").addClass("top");
		$("#gen30").addClass("undefined");
		$("#gen40").addClass("undefined");
	});
</script>
</c:if>
<c:if test="${map.result=='age30' }">
	<script>
	$(document).ready( function() {
		$("#gen10").addClass("undefined");
		$("#gen20").addClass("undefined");
		$("#gen30").addClass("top");
		$("#gen40").addClass("undefined");
	});
</script>
</c:if>
<c:if test="${map.result=='age40' }">
	<script>
	$(document).ready( function() {
		$("#gen10").addClass("undefined");
		$("#gen20").addClass("undefined");
		$("#gen30").addClass("undefined");
		$("#gen40").addClass("top");
	});
</script>
</c:if>
<script>
	function gradecheck(grade){
		$('#gradeclick').text(grade);
		if(grade=='1'){
			$(".star1").addClass("on");
			$(".star2").removeClass("on");
			$(".star3").removeClass("on");
			$(".star4").removeClass("on");
			$(".star5").removeClass("on");
			$(".star6").removeClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='2'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").removeClass("on");
			$(".star4").removeClass("on");
			$(".star5").removeClass("on");
			$(".star6").removeClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='3'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").removeClass("on");
			$(".star5").removeClass("on");
			$(".star6").removeClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='4'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").removeClass("on");
			$(".star6").removeClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='5'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").removeClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='6'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").addClass("on");
			$(".star7").removeClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='7'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").addClass("on");
			$(".star7").addClass("on");
			$(".star8").removeClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='8'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").addClass("on");
			$(".star7").addClass("on");
			$(".star8").addClass("on");
			$(".star9").removeClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='9'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").addClass("on");
			$(".star7").addClass("on");
			$(".star8").addClass("on");
			$(".star9").addClass("on");
			$(".star10").removeClass("on");
		}
		if(grade=='10'){
			$(".star1").addClass("on");
			$(".star2").addClass("on");
			$(".star3").addClass("on");
			$(".star4").addClass("on");
			$(".star5").addClass("on");
			$(".star6").addClass("on");
			$(".star7").addClass("on");
			$(".star8").addClass("on");
			$(".star9").addClass("on");
			$(".star10").addClass("on");
		}
		
		
		
	} 
</script>

<!-- 댓글등록 -->
<script>
	function commentsave(){
		var id = "${user_id}";
		var html="";
		if(id==null || id==''){
			alert("로그인후 이용하세요.");
		}else{
			
		$.ajax({
			url:"/commentsave",
			type:"post",
			data:{
				"mid":${map.moviedto.mid },"id":id,"txtcomment":$("#txtComment").val(),"grade":$('#gradeclick').text()
			},
			success:function(data){ //data.dto.id
				if(data.chk==1){
					
					alert("댓글이 추가되었습니다.");
					/* 여기까지 */
					html += '<ul class="review_con_list" id="'+data.dto.cid+'">';
					html += '<li><span class="img_info">';
					html += '<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/customer/ic_survey_01.png" alt=""></span>';
					html += '<div class="top_info">';
					html += '<span class="name_info">'+data.dto.id+'</span>';
					html += '<span class="txt_ic_score ty2"><em>평점</em><strong>'+data.dto.grade+'</strong></span><span class=""></span></div>';
					html += '<div class="review_info">'+data.dto.txtcomment+'</div>';
					html += '<div class="btm_info">';
					html += '<span class="date_info">'+moment(data.dto.cdate).format('YYYY-MM-DD hh:mm')+'</span>';
					html += '<button type="button" class="btn_ic_good" id="c'+data.dto.cid+'" onclick="goodclick('+data.dto.mid+','+data.dto.cid+')">';
					html += '<em>좋아요</em><span id="number'+data.dto.cid+'">'+data.dto.goodnumber+'</span>';
					html += '</button><em>좋아요</em>';
					html += '<strong style="float: right; font-size: 12px; font-weight: 300;" >';
					html += '<a class="rebtn" onclick="commentUpdate('+data.dto.cid+',\''+data.dto.id+'\',\''+data.dto.cdate+'\',\''+data.dto.txtcomment+'\',\''+data.dto.grade+'\',\''+data.dto.mid+'\',\''+data.dto.goodnumber+'\')">';
					html += '수정</a> ';
					html += '<a class="rebtn" onclick="commentDelete('+data.dto.cid+')">삭제</a>';
					html += '</strong>';
					html += '</div></li></ul>';
					
					$('.replyBox').prepend(html);
					$('#txtComment').val('');
				}else{
					alert("댓글이 추가되지 않았습니다.");
				}
				
				
			},
			error:function(){
				alert("에러");
			}
			
		});
	}
		
}
</script>
<style>
.rebtn {
	display: inline-block;
	width: 43px;
	height: 23px;
	line-height: 22px;
	color: #777;
	font-weight: 600;
	text-align: center;
	background: url('../images/btn/btn_daybtn.gif') left top no-repeat;
}
</style>
<!-- 삭제버튼클릭 -->
<script>
	function commentDelete(cid){
		if(confirm("삭제하시겠습니까?")){
			$.ajax({
				url:"/commentdelete",
				type:"post",
				data:{
					"cid":cid
				},
				success:function(data){ //data.dto.id
					if(data==1){
						alert("삭제되었습니다.");
						$('#'+cid).remove();
					}else{
						alert("삭제되지 않았습니다.");
					}
					
				},
				error:function(){
					alert("에러");
				}
				
			});
		}else{
			return false;
		}
		
	}
</script>
<!-- 댓글수정버튼클릭 -->
<script>
	function commentUpdate(cid,id,cdate,txtcomment,grade,mid,goodnumber,checkdata){
		var active="";
		if($("#c"+cid).hasClass("active")==true){
			active="active";
			var number = $("#number"+cid).text();
		}else{
			var number = $("#number"+cid).text();
		}
		var html="";
		html +='<li><span class="img_info"><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/customer/ic_survey_01.png" alt=""></span>';
		html +='<div class="top_info">';
		html +='<span class="name_info">'+id+'</span>';
		html +='<span class="txt_ic_score ty2"><em>평점</em><strong>'+grade+'</strong></span><span class=""></span></div>';
		html +='<div class="review_info">';
		html +='<textarea class="replyType" id="commentContentUpdate" name="commentContentUpdate">'+txtcomment+'</textarea>';
		html +='</div>';
		html +='<div class="btm_info">';
		html +='<span class="date_info">'+moment(cdate).format('YYYY-MM-DD hh:mm')+'</span>';
		html +='<button type="button" class="btn_ic_good '+active+'" id="c'+cid+'"  onclick="goodclick('+mid+','+cid+')"><em>좋아요</em><span id="number'+cid+'">'+number+'</span></button><em>좋아요</em>';
		html +='<strong style="float: right; font-size: 12px; font-weight: 300;">';
		html +='<a class="rebtn" onclick="commentUpdate_check('+cid+','+checkdata+')">저장</a> ';
		html +='<a onclick="cancel('+cid+',\''+id+'\',\''+cdate+'\',\''+txtcomment+'\',\''+grade+'\',\''+mid+'\',\''+goodnumber+'\')" style="cursor: pointer;" class="rebtn" style="color: #777">취소</a>';
		html +='</strong></div></li>';
		$('#'+cid).html(html);
	}
</script>
<!-- 댓글수정누른후 취소버튼클릭 -->
<script>
	function cancel(cid,id,cdate,txtcomment,grade,mid,goodnumber){
		var active="";
		if($("#c"+cid).hasClass("active")==true){
			active="active";
			var number = $("#number"+cid).text();
		}else{
			var number = $("#number"+cid).text();
		}
		var html="";
		html += '<li><span class="img_info">';
		html += '<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/customer/ic_survey_01.png" alt=""></span>';
		html += '<div class="top_info">';
		html += '<span class="name_info">'+id+'</span>';
		html += '<span class="txt_ic_score ty2"><em>평점</em><strong>'+grade+'</strong></span><span class=""></span></div>';
		html += '<div class="review_info">'+txtcomment+'</div>';
		html += '<div class="btm_info">';
		html += '<span class="date_info">'+moment(cdate).format('YYYY-MM-DD hh:mm')+'</span>';
		html += '<button type="button" class="btn_ic_good '+active+'" id="c'+cid+'" onclick="goodclick('+mid+','+cid+')">';
		html += '<em>좋아요</em><span id="number'+cid+'">'+number+'</span>';
		html += '</button><em>좋아요</em>';
		html += '<strong style="float: right; font-size: 12px; font-weight: 300;" >';
		html += '<a class="rebtn" onclick="commentUpdate('+cid+',\''+id+'\',\''+cdate+'\',\''+txtcomment+'\',\''+grade+'\',\''+mid+'\',\''+goodnumber+'\')">';
		html += '수정</a> ';
		html += '<a class="rebtn" onclick="commentDelete('+cid+')">삭제</a>';
		html += '</strong>';
		html += '</div></li>';
		$('#'+cid).html(html);
	}
</script>


<!-- 댓글수정 저장버튼 클릭 -->
<script>
	function commentUpdate_check(cid,checkdata){
		var active="";
		if($("#c"+cid).hasClass("active")==true){
			active="active";
			var number = $("#number"+cid).text();
		}else{
			var number = $("#number"+cid).text();
		}
		var html="";
		
		$.ajax({
			url:"/commentUpdate_check",
			type:"post",
			data:{
				"cid":cid,"txtcomment":$("#commentContentUpdate").val()
			},
			success:function(data){
				
				html += '<li><span class="img_info">';
				html += '<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/customer/ic_survey_01.png" alt=""></span>';
				html += '<div class="top_info">';
				html += '<span class="name_info">'+data.commentdto.id+'</span>';
				html += '<span class="txt_ic_score ty2"><em>평점</em><strong>'+data.commentdto.grade+'</strong></span><span class=""></span></div>';
				html += '<div class="review_info">'+data.commentdto.txtcomment+'</div>';
				html += '<div class="btm_info">';
				html += '<span class="date_info">'+moment(data.commentdto.cdate).format('YYYY-MM-DD hh:mm')+'</span>';
				html += '<button type="button" class="btn_ic_good '+active+'" id="c'+data.commentdto.cid+'" onclick="goodclick('+data.commentdto.mid+','+data.commentdto.cid+')">';
				html += '<em>좋아요</em><span id="number'+data.commentdto.cid+'">'+data.commentdto.goodnumber+'</span>';
				html += '</button><em>좋아요</em>';
				html += '<strong style="float: right; font-size: 12px; font-weight: 300;" >';
				html += '<a class="rebtn" onclick="commentUpdate('+data.commentdto.cid+',\''+data.commentdto.id+'\',\''+data.commentdto.cdate+'\',\''+data.commentdto.txtcomment+'\',\''+data.commentdto.grade+'\',\''+data.commentdto.mid+'\',\''+data.commentdto.goodnumber+'\',\''+data.commentdto.checkdata+'\')">';
				html += '수정</a> ';
				html += '<a class="rebtn" onclick="commentDelete('+data.commentdto.cid+')">삭제</a>';
				html += '</strong>';
				html += '</div></li>';
				
				$('#'+cid).html(html);
				
			},
			error:function(){
				alert("에러");
			}
			
			
		});
		
	}
</script>

<!-- 좋아요구현 -->
<script>
	function goodclick(mid,cid){
		var id = "${user_id}";
		$.ajax({
			url:"/goodclick",
			type:"post",
			data:{
				"mid":mid,"cid":cid,"id":id
			},
			success:function(data){
				if(data.chk==1){
					$("#c"+data.cid).addClass("active");
					var number = ($("#number"+data.cid).text())*1+1;
					$("#number"+data.cid).text(number);
				}else{
					$("#c"+data.cid).removeClass("active");
					var number2 = ($("#number"+data.cid).text())*1-1;
					$("#number"+data.cid).text(number2);
				}
			},
			error:function(){
				alert("에러");
			}
		});
	}
</script>
</head>
<body>




	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K8MP435"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>



	<div id="loading" class="loader loader-bouncing is-active hidden"></div>



	<div id="skip_nav_section" class="skip_nav">
		<ul>
			<li><a href="#nav">주 메뉴 바로가기</a></li>
			<li><a href="#contents">본문 바로가기</a></li>
		</ul>
	</div>
	<div id="main_top_of_top_banner" class="banner_top_wrap banner_type01"
		style="background-color: rgb(193, 136, 93);">
		<div class="inner">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_32&amp;adgroupid=adg_lottecinema_20210401_18&amp;adid=adi_lottecinema_20210402_9"
				target=""><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2021/YoungAdultMatters/YoungAdultMatters_98080.jpg"
				alt="어른들은 몰라요  <박화영>감독의 두 번째 문제작 2021.04.15 청소년관람불가"></a>
			<button class="btn_close">닫기</button>
		</div>
	</div>
	<div id="header_section" class="header">
		<h1 class="logo">
			<a href="main">LOTTE CINEMA</a>
		</h1>
		<div class="gnb">
			<ul class="g_menu1">
				<li><a href="https://www.facebook.com/LotteCinema.kr"
					class="btn_facebook" target="_blank" title="롯데시네마 페이스북 새창열림">좋아요</a></li>
				<li><a
					href="https://www.youtube.com/channel/UCi4KivcV3a3yhkycFsjpalQ"
					class="btn_youtube" target="_blank" title="새창열림">구독하기</a></li>
				<li><a href="https://www.instagram.com/lottecinema_official/"
					class="btn_follow" target="_blank" title="롯데시네마 인스타그램 새창열림">팔로우</a></li>
			</ul>
			<ul class="g_menu2">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Customer">고객센터</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Member/login">로그인</a></li>
			</ul>
			<ul class="g_menu3">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point"
					class="btn_my">회원가입</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing"
					class="btn_reserve">바로 예매</a></li>
				<li><button class="btn_menu_all">전체 메뉴 레이어 열기</button>
					<div id="allmenu"></div></li>
			</ul>
		</div>
		<div id="nav">
			<ul>
				<li class=""><a
					href="https://www.lottecinema.co.kr/NLCHS/Ticketing">예매</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing"
								title="예매하기">예매하기</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/Ticketing/Schedule"
								title="상영시간표">상영시간표</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/Ticketing/DiscountGuide"
								title="할인안내">할인안내</a></li>
						</ul>
					</div></li>
				<li class=""><a
					href="https://www.lottecinema.co.kr/NLCHS/Movie">영화</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie"
								title="홈">홈</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1"
								title="현재상영작">현재상영작</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=5"
								title="상영예정작">상영예정작</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/Arte"
								title="아르떼">아르떼</a></li>
						</ul>
					</div></li>
				<li class=""><a href="#">영화관</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="#" title="스페셜관">스페셜관</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialIndex">홈</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=300">샤롯데</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=941">수퍼플렉스
												G</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=980">수퍼
												S</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=940">수퍼플렉스</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=930">수퍼
												4D</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=988">컬러리움</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=987">씨네살롱</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=960">씨네패밀리</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=200">씨네커플</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=950">씨네비즈</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=986">씨네컴포트(리클라이너)</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="서울">서울</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1013">가산디지털</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1018">가양</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9010">강동</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1004">건대입구</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1009">김포공항</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1003">노원</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1023">도곡</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1017">독산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9056">브로드웨이(신사)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1012">서울대입구</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1019">수락산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1022">수유</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1015">신도림</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1007">신림</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1001">에비뉴엘(명동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1002">영등포</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1014">용산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1016">월드타워</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1021">은평(롯데몰)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9053">장안</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9083">중랑</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1008">청량리</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1010">합정</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1005">홍대입구</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="경기/인천">경기/인천</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3030">광교아울렛</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3027">광명(광명사거리)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3025">광명아울렛</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3020">광주터미널</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3026">구리아울렛</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3002">라페스타</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3021">마석</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3017">병점</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3011">부천(신중동역)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9054">부천역</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3003">부평</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3008">부평역사</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3045">북수원(천천동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3031">산본피트인</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3043">서수원</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3041">성남중앙(신흥역)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3012">센트럴락</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3029">송탄</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3024">수원(수원역)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3044">수지</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9088">시화</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3004">안산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3028">안산고잔</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3022">안성</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3007">안양(안양역)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3032">안양일번가</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9077">영종하늘도시</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9079">오산(원동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3039">용인기흥</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3040">용인역북</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3037">위례</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3033">의정부민락</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3023">인덕원</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3035">인천아시아드</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3038">인천터미널</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9087">주엽</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3010">진접</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3034">파주운정</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3018">평촌(범계역)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3036">향남</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="충청/대전">충청/대전</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9085">당진</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4002">대전(백화점)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4009">대전관저</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4006">대전둔산(월평동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4008">대전센트럴</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9044">서산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4004">서청주(아울렛)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4005">아산터미널</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4007">청주용암</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9078">충주</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="전라/광주">전라/광주</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6001">광주(백화점)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9065">광주광산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6007">군산나운</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6009">군산몰</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6004">수완(아울렛)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9070">익산모현</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6002">전주(백화점)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6006">전주평화</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9047">충장로</a></li>
									</ul>
								</div></li>
							<li class=""><a href="#" title="경북/대구">경북/대구</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5008">경산</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9090">경주</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5013">구미공단</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5012">대구광장</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5006">대구율하</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9076">대구현풍</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5005">동성로</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5016">상인</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9080">상주</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5004">성서</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9064">영주</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5007">포항</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9067">프리미엄구미센트럴</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9066">프리미엄만경</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9074">프리미엄안동</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9057">프리미엄칠곡</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="경남/부산/울산">경남/부산/울산</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9082">거창</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2009">광복</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5015">김해부원</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5011">김해아울렛(장유)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2012">대영</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2007">동래</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2010">동부산아울렛</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9042">마산(합성동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2004">부산본점</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2005">사상</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9084">사천</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2008">서면(전포동)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2006">센텀시티</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9069">엠비씨네(진주)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2011">오투(부산대)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5001">울산(백화점)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5014">울산성남</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5017">진주혁신(롯데몰)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5009">진해</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5002">창원</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9036">통영</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9072">프리미엄경남대</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9003">프리미엄진주(중안)</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9059">프리미엄해운대(장산역)</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="강원">강원</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7001">남원주</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7002">동해</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7003">원주무실</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=9081">춘천</a></li>
									</ul>
								</div></li>
							<li><a href="#" title="제주">제주</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9013">서귀포</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9068">제주삼화지구</a></li>
										<li><a
											href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9071">제주아라</a></li>
									</ul>
								</div></li>
						</ul>
					</div></li>
				<li class=""><a
					href="https://event.lottecinema.co.kr/NLCHS/Event">이벤트</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://event.lottecinema.co.kr/NLCHS/Event"
								title="홈">홈</a></li>
							<li><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=20"
								title="영화">영화</a></li>
							<li><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=40"
								title="시사회/무대인사">시사회/무대인사</a></li>
							<li class=""><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=10"
								title="HOT">HOT</a></li>
							<li><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=50"
								title="제휴할인">제휴할인</a></li>
							<li><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/NearCinemaList"
								title="우리동네영화관">우리동네영화관</a></li>
						</ul>
					</div></li>
				<li class=""><a
					href="https://www.lottecinema.co.kr/NLCHS/CinemaMall">스토어</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store2"
								title="베스트">베스트</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store3"
								title="관람권">관람권</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store4"
								title="스낵음료">스낵음료</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
	</div>

	<!-- 스와이퍼시작 -->
	<div id="visual_top" class="visual_top visual_movie_detail" style="">
		<div id="mainRoll">

			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#"><img class="img"
						src="images/movieimg/${map.movieimgdto.swiperimg1 }" alt="" /></a>
				</div>
				<div class="swiper-slide">
					<a href="#"><img class="img"
						src="images/movieimg/${map.movieimgdto.swiperimg2 }" alt="" /></a>
				</div>
				<div class="swiper-slide">
					<a href="#"><img class="img"
						src="images/movieimg/${map.movieimgdto.swiperimg3 }" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
	<!-- 스와이퍼끝 -->

	<!-- 영화정보윗부분 시작 -->
	<script src="/NLCHS/Scripts/common/aes.js"></script>
	<script src="/NLCHS/Scripts/common/sso.js?v=202104060439"></script>
	<script src="/NLCHS/Scripts/common/LcCommon.js?v=202104060439"></script>
	<script
		src="/NLCHS/Scripts/common/crossDomainStorage.js?v=202104060439"></script>





	<div id="contents" class="contents_movie_detail">
		<h2 class="hidden">영화</h2>
		<h3 class="hidden">영화 상세정보</h3>
		<div class="detail_top_wrap">
			<div class="poster_info">
				<img src="images/movie_info/${map.moviedto.poster }" alt="">
			</div>
			<div class="tit_info">

				<a id="age">${map.moviedto.age }</a>
				<div class="ic_grade gr_15"></div>
				<strong>${map.moviedto.mname }</strong>
			</div>
			<ul class="detail_info1">
				<li class="sub_info1" style="cursor: pointer;"><em>관람객 평점</em><strong
					class="txt_ic_score ty2"><em>평점</em></strong><strong>${map.moviedto.grade }</strong></li>
				<li class="sub_info2"><em>예매율 </em><strong>${map.moviedto.mrate }%
				</strong></li>
				<li class="sub_info3"><em>누적관객수</em><strong>${map.moviedto.attendance }
						<em>명</em> <span class="date_info"> </span>
				</strong></li>
			</ul>
			<ul class="detail_info2">
				<li class="sub_info1"><em>장르</em><strong><em>${map.moviedto.genre }
					</em><em><fmt:formatDate value="${map.moviedto.openingdate }"
								pattern="YYYY-MM-dd" /> 개봉</em><em class="time_info">${map.moviedto.playtime }분</em></strong></li>
				<li class="sub_info2"><em>감독</em><strong class="line_type"><a
						href="#none">${map.moviedto.director }</a></strong></li>
				<li class="sub_info3"><em>출연</em><strong class="line_type">
						${map.moviedto.actor } </strong></li>
			</ul>
		</div>
		<!-- 영화정보윗부분 끝 -->

		<ul class="tab_wrap outer">
			<!-- 여기서부터 규철이 -->


			<li class="active addclass">
				<button id="button1" type="button" class="tab_tit"
					style="width: 50%; left: 0%;">
					<span>영화정보</span>
				</button>
				<div class="tab_con">
					<h4 class="hidden">영화정보</h4>
					<div class="movi_tab_info1">
						<div class="left_con">
							<strong class="tit_info">시놉시스</strong>
							<div class="mCustomScrollbar _mCS_1 mCS-autoHide"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_1"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container" class="mCSB_container"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<p class="txt_info">
											<span>${map.moviedto.info }</span>
										</p>
									</div>
								</div>
								<div id="mCSB_1_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: block;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; display: block; height: 33px; max-height: 81px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="right_con">
							<strong class="tit_info">관람 선호도</strong>
							<div class="group_graph">
								<div class="bx_graph01">
									<div class="bg"></div>
									<dl>
										<dt class="mal">남성</dt>
										<dd class="mal">
											<span class="bar" style="height: ${map.predto.man }%;"></span><strong>${map.predto.man }<span>%</span></strong>
										</dd>
										<dt class="fem">여성</dt>
										<dd class="fem">
											<span class="bar" style="height: ${map.predto.woman }%;"></span><strong>${map.predto.woman }<span>%</span></strong>
										</dd>
									</dl>
								</div>
								<div class="bx_graph02">
									<dl>
										<dt class="gen10">10대</dt>
										<dd id="gen10" class="gen10"
											style="height: ${map.predto.age10 }%;">
											<span class="bar"></span><strong>${map.predto.age10 }<span>%</span></strong>
										</dd>
										<dt class="gen20">20대</dt>
										<dd id="gen20" class="gen20"
											style="height: ${map.predto.age20 }%;">
											<span class="bar"></span><strong>${map.predto.age20 }<span>%</span></strong>
										</dd>
										<dt class="gen30">30대</dt>
										<dd id="gen30" class="gen30"
											style="height: ${map.predto.age30 }%;">
											<span class="bar"></span><strong>${map.predto.age30 }<span>%</span></strong>
										</dd>
										<dt class="gen40">40대</dt>
										<dd id="gen40" class="gen40"
											style="height: ${map.predto.age40 }%;">
											<span class="bar"></span><strong>${map.predto.age40 }<span>%</span></strong>
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>
					<div class="movi_tab_info2" id="movie_trailer">
						<h5 class="tit_info">트레일러 (5)</h5>
						<div class="slide_wrap slide_movie_detail_trailer">
							<div class="owl-carousel owl-loaded owl-drag">
								<div class="owl-stage-outer">
									<div class="owl-stage"
										style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1667px;">
										<div class="owl-item active"
											style="width: 313.333px; margin-right: 20px;">
											<div class="item" id="movie_trailer_0">
												<a href="#ex1" class="" rel="modal:open"><em><img
														src="${map.movieimgdto.trailer1 }" alt="고질라 VS. 콩"></em><strong>공식
														예고편</strong></a>
											</div>
										</div>
										<div class="owl-item active"
											style="width: 313.333px; margin-right: 20px;">
											<div class="item" id="movie_trailer_1">
												<a href="#ex2" class="" rel="modal:open"><em><img
														src="${map.movieimgdto.trailer2 }" alt="고질라 VS. 콩"></em><strong>30초
														예고편</strong></a>
											</div>
										</div>
										<div class="owl-item active"
											style="width: 313.333px; margin-right: 20px;">
											<div class="item" id="movie_trailer_2">
												<a href="#ex3" class="" rel="modal:open"><em><img
														src="${map.movieimgdto.trailer3 }" alt="고질라 VS. 콩"></em><strong>2차
														영상</strong></a>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-nav">
									<button type="button" role="presentation"
										class="owl-prev disabled">
										<span aria-label="Previous">‹</span>
									</button>
									<button type="button" role="presentation" class="owl-next">
										<span aria-label="Next">›</span>
									</button>
								</div>
								<div class="owl-dots disabled"></div>
							</div>
						</div>
					</div>
					<div class="movi_tab_info3" id="movie_poster">
						<h5 class="tit_info">포스터 · 스틸컷 (15)</h5>
						<div class="stealcut_thumb_wrap">
							<div class="slide_wrap slide_stillcut_thm">
								<div class="owl-carousel owl-loaded">
									<div class="owl-stage-outer">
										<div class="owl-stage"
											style="transform: translate3d(0px, 0px, 0px); transition: all 0.25s ease 0s; width: 3356px;">
											<div class="owl-item active" style="width: auto;">
												<div class="item" id="movie_poster_0"
													data-hash="hashGrStillcut_0">

													<!-- 수정할부분 -->
													<a class="cursor" onclick="swiperimg()"><img
														src="${map.movieimgdto.poster1 }" alt="고질라 VS. 콩" class=""
														style="height: 133px;"></a>
												</div>
											</div>
											<div class="owl-item active" style="width: auto;">
												<div class="item" id="movie_poster_1"
													data-hash="hashGrStillcut_1">
													<a class="cursor" onclick="swiperimg2()"><img
														src="${map.movieimgdto.poster2 }" alt="고질라 VS. 콩" class=""
														style="height: 133px;"></a>
												</div>
											</div>
											<div class="owl-item active" style="width: auto;">
												<div class="item" id="movie_poster_2"
													data-hash="hashGrStillcut_2">
													<a class="cursor" onclick="swiperimg3()"><img
														src="${map.movieimgdto.poster3 }" alt="고질라 VS. 콩" class=""
														style="height: 133px;"></a>
												</div>
											</div>
											<div class="owl-item active" style="width: auto;">
												<div class="item" id="movie_poster_3"
													data-hash="hashGrStillcut_3">
													<a class="cursor" onclick="swiperimg4()"><img
														src="${map.movieimgdto.poster4 }" alt="고질라 VS. 콩" class=""
														style="height: 133px;"></a>
												</div>
											</div>

										</div>
									</div>
									<div class="owl-nav">
										<button type="button" role="presentation"
											class="owl-prev disabled">
											<span aria-label="Previous">‹</span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span aria-label="Next">›</span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
								</div>
							</div>
						</div>
						<!-- 하는중 -->
						<div class="stealcut_view_wrap">

							<div class="none1 active2">
								<img src="${map.movieimgdto.poster1 }">
							</div>
							<div class="none2">
								<img src="${map.movieimgdto.poster2 }">
							</div>
							<div class="none3">
								<img src="${map.movieimgdto.poster3 }">
							</div>
							<div class="none4">
								<img src="${map.movieimgdto.poster4 }">
							</div>

						</div>
					</div>
					<div class="movie_detail_people">
						<div class="group_con_tit">
							<h5 class="tit_info">감독 및 배우</h5>
						</div>
						<div class="bx_list_people">
							<ul>

								<c:forEach var="dto" items="${map.list }">


									<li><a href="#none"><span class="thm"><img
												src="${dto.img }" alt="${dto.name }"></span></a>
										<div class="infor">
											<div class="inner">
												<a href="#none" class="nm"><span class="tit">${dto.name }</span></a>
												<span class="txt">${dto.director }</span>
											</div>
										</div></li>
								</c:forEach>


							</ul>
						</div>
						<button type="button" class="btn_txt_more" id="casting_more_btn"
							style="display: none;">
							<span>펼쳐보기</span>
						</button>
					</div>
				</div>
			</li>


			<!-- 여기까지 규철이끝 -->
			<!-- 여기서부터 성범이 -->
			<li class="addclass2"><button id="button2" type="button" class="tab_tit" style="width: 50%; left: 50%;">
					<span>평점 및 관람평 (${map.count })</span>
				</button>
				<div class="tab_con">
					<h4 class="hidden">평점 및 관람평</h4>
					<div class="movi_score_box">
						<span class="txt_ic_score2 ty3"><em>총 평점</em><strong>${map.gradeavg }</strong><span>10</span></span>
						<p class="txt_info">
							<span>영화 관람 후 관람평을 작성하시면 <br>L.POINT 50P를 적립해 드립니다.
							</span>
						</p>
					</div>
					<div class="movi_review_box" id="movie_review_box">
						<div class="star_score_box ">
							<strong class="score_info"><em id="gradeclick">10</em> 점</strong>
							<div class="star_info">
								<div class="star_rate">
									<button type="button" onclick="gradecheck(1)"
										class="star on star1">
										<em>1</em>
									</button>
									<button type="button" onclick="gradecheck(2)"
										class="star on star2">
										<em>2</em>
									</button>
									<button type="button" onclick="gradecheck(3)"
										class="star on star3">
										<em>3</em>
									</button>
									<button type="button" onclick="gradecheck(4)"
										class="star on star4">
										<em>4</em>
									</button>
									<button type="button" onclick="gradecheck(5)"
										class="star on star5">
										<em>5</em>
									</button>
									<button type="button" onclick="gradecheck(6)"
										class="star on star6">
										<em>6</em>
									</button>
									<button type="button" onclick="gradecheck(7)"
										class="star on star7">
										<em>7</em>
									</button>
									<button type="button" onclick="gradecheck(8)"
										class="star on star8">
										<em>8</em>
									</button>
									<button type="button" onclick="gradecheck(9)"
										class="star on star9">
										<em>9</em>
									</button>
									<button type="button" onclick="gradecheck(10)"
										class="star on star10">
										<em>10</em>
									</button>
								</div>
							</div>
						</div>
						<div class="review_write_box">
							<textarea id="txtComment"
								placeholder="평점 및 영화 관람평을 작성해주세요. 한글 110자 / 영문 220자 작성 가능합니다."
								title="관람평 작성"></textarea>
							<span class="byte_info"><strong class="byte">0</strong>/<em>220</em></span>
						</div>
						<button type="button" id="btnComment" class="btn_submit"
							onclick="commentsave()">관람평 작성</button>
					</div>
					<div class="movi_review_list">
						<h5 class="hidden">관람평 목록</h5>
						<div class="review_top">
							<div class="total_info">
								총 <em>${map.count }</em>건
							</div>
							<ul class="sort_list">
								<li id="reviewsortseq1" class="active"><button>최신순</button></li>
								<li id="reviewsortseq3"><button>공감순</button></li>
							</ul>
						</div>
						<!-- 댓글추가되는부분시작 -->
						<div class="replyBox">
							<c:forEach var="cdto" items="${map.clist }">
							<script>
								$(document).ready(function() {
									if(${cdto.checkdata==1}){
										$("#c"+${cdto.cid }).addClass("active");
									}
								});
							</script>
								<ul class="review_con_list" id="${cdto.cid }">
									<li><span class="img_info"><img
											src="https://www.lottecinema.co.kr/NLCHS/Content/images/customer/ic_survey_01.png"
											alt=""></span>
										<div class="top_info">
											<span class="name_info">${cdto.id }</span><span
												class="txt_ic_score ty2"><em>평점</em><strong>${cdto.grade }
											</strong></span><span class=""></span>
										</div>
										<div class="review_info">${cdto.txtcomment }</div>
										<div class="btm_info">
											<span class="date_info"><fmt:formatDate
													value="${cdto.cdate }" pattern="YYYY-MM-dd"/></span>
											<button type="button" class="btn_ic_good" id="c${cdto.cid }" onclick="goodclick('${cdto.mid}','${cdto.cid }')">
												<em>좋아요</em><span id="number${cdto.cid }">${cdto.goodnumber }</span>
											</button><em>좋아요</em>
											<strong
												style="float: right; font-size: 12px; font-weight: 300;">
												<c:if test="${user_id eq cdto.id || user_id eq 'admin'}">
													<a class="rebtn" onclick="commentUpdate(${cdto.cid},'${cdto.id}','${cdto.cdate }','${cdto.txtcomment }','${cdto.grade }','${cdto.mid }','${cdto.goodnumber }','${cdto.checkdata}')">수정</a>
													<a class="rebtn" onclick="commentDelete(${cdto.cid})">삭제</a>
												</c:if>
											</strong>
										</div></li>
								</ul>
							</c:forEach>
						</div>


						<!-- 댓글추가되는부분끝 -->
						<button type="button " class="btn_txt_more" id="btn_review_more">
							<span>펼쳐보기</span>
						</button>
					</div>
					<div class="list_bdr_box">
						<h3 class="title txt_caution2">유의사항</h3>
						<ul class="list_txt">
							<li>관람평 작성에 대한 L.POINT는 익일 적립되며, 관람 후 초기 1회에 대해서만 적립됩니다.</li>
							<li>수정/삭제 후 재등록 시에는 포인트 적립이 되지 않습니다.</li>
							<li>관람평은 관람 내역당 1회만 작성 가능하며, 상영종료된 영화의 관람평은 작성 불가합니다.</li>
							<li>작성하신 관람평은 마이페이지 &gt; MY무비로그 &gt; 내가 본 영화에서 확인하실 수 있습니다.
							</li>
							<li>관람 평점은 롯데시네마에서 실제 관람한 회원의 평점 입니다.</li>
						</ul>
					</div>
				</div></li>
			<!-- 여기까지 성범이 끝 -->
		</ul>
	</div>



	<div id="layerRegReview" class="layer_wrap layer_reg_review"></div>
	<div id="layerInforPeople" class="layer_wrap ty2 layer_infor_people"></div>


	<script
		src="/NLCHS/Scripts/Dist/MovieDetailView.bundle.js?v= 2021040604"></script>

	<div id="banner_reserve_section" class="banner_reserve_wrap"></div>
	<div id="footer_section" class="footer">
		<div class="inner">

			<ul class="f_menu">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/MemberClause"
					title="회원약관" target="_self">회원약관</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/IndividualInfomationHandlingPolicy"
					title="개인정보처리방침" target="_self"><strong>개인정보처리방침</strong></a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/EmailCollectionRefusal"
					title="이메일무단수집거부" target="_self">이메일무단수집거부</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/ElectronicManagementPolicy"
					title="영상정보처리기기 운영 및 관리방침" target="_self">영상정보처리기기 운영 및 관리방침</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point"
					title="L.POINT회원안내" target="_self">L.POINT회원안내</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/AssignStandard"
					title="배정기준" target="_self">배정기준</a></li>
				<li><a
					href="http://www.lottecinema.co.kr/LCCS/Contents/employ/individuals.aspx"
					title="채용안내" target="_blank">채용안내</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/LCCS/Contents/ad/advertinquiry.aspx"
					title="광고/임대문의" target="_blank">광고/임대문의</a></li>
				<li><a
					href="http://www.lottecinema.co.kr/LCCS/Contents/ethical/ethicsintroduce.aspx"
					title="윤리경영" target="_self">윤리경영</a></li>
				<li><a href="http://www.lottecinema.co.kr/LCCS/index.aspx"
					title="기업정보" target="_blank">기업정보</a></li>
			</ul>
			<div class="bx_address">
				<address>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</address>
				<span class="bar">고객센터 1544-8855</span><br> <span>대표이사
					기원규</span><span class="bar">사업자등록번호 313-87-00979</span><span class="bar">통신판매업신고번호
					제1184호</span><span class="bar">개인정보 보호 최고 책임자 김무성</span>
			</div>
			<p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p>
		</div>
	</div>
	<!-- 모달 -->
	<div id="ex1" class="modal">
		<video height="100%" width="100%" src="/test/${map.movieimgdto.trailervideo1 }" controls
			autoplay muted></video>
	</div>
	<div id="ex2" class="modal">
		<video height="100%" width="100%" src="/test/${map.movieimgdto.trailervideo2 }" controls
			autoplay muted></video>
	</div>
	<div id="ex3" class="modal">
		<video height="100%" width="100%" src="/test/${map.movieimgdto.trailervideo3 }" controls
			autoplay muted></video>
	</div>


</body>

</html>