<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>영화검색페이지</title>

<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/owl.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/swiper.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/jquery.mCustomScrollbar.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/common.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/content.css?v=202104060314">
<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/dev.css?v=202104060314">
<!-- jquery 최신버전 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- 여기서부터 영화검색 테이블 css와 javascript -->
<link rel="alternate" href="http://m.cgv.co.kr" />
    <!-- <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" /> -->
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />    
   
    
  

    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
	<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
	<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />

    <!-- 각페이지 Header Start--> 
    
    <!--/각페이지 Header End--> 

    <script type="text/javascript" src="https://nsso.cjone.com/findCookieSecured.jsp?cjssoq=vJxajJ2njzZSI6oBjYXVVq98KxqNpAq%2bPtD7EZvaV%2bgn3QlojTaxw6APpUVbeCaFYQj3CCJVuBoHYUhTx3OCFk85bXFob3hkcGgyVmtFL2x2NE9JYnVIblFYd1VSeU5lcDBlWVJ1NmJ2a0JLaWNneUlzN0FtQVczNEFqaFV2Mk0%3d"></script>		
		<script type="text/javascript">
//<![CDATA[
    (function ($) {
            $(function () {

                $('#slider').visualMotion({ limit: 1, duration: 500, term: 500, autoStart: true });

                $('#all_genre').checkboxGroup({
                    parent: function () { return this.closest('ul'); },
                    selector: 'input[name=genre]'
                });
                $('#all_national_code').checkboxGroup({
                    parent: function () { return this.closest('ul'); },
                    selector: 'input[name=national-code]'
                });

                $('#all_grade').checkboxGroup({
                    parent: function () { return this.closest('ul'); },
                    selector: 'input[name=grade]'
                });

                $('#slider-range').rangeSlider({
					
                    'start': $("#year_start"),
                    'end': $("#year_end")
					
                });
				
				/* 충스크립트 */
				function rangehandle(){
				 $('#slider-range').find('.ui-slider-handle').eq(0).attr('title','좌,우 키보드 조절가능').text('시작년도').next().attr('title','좌,우 키보드 조절가능').text('종료년도');
				};
				rangehandle();				
				
							
				
                //default check/////
                $('#all_genre').click();$('#all_national_code').click();$('#all_grade').click();
                ///////////////////////////////////

                /* $('#btn_reset').on('click', function () {
                    location = "finder.aspx";
                    return false;
                }); */

                // novalidate version.

                
                 function searchMovie() {
                    // 초기화
                    $('#s').val('');
                    $('#kt').val('');
                    $('#searchtxt').val('');
                    $('#genre').val('');
                    $('#indi').val('');
                    $('#national').val('');
                    $('#grade').val('');
                    $('#sdate').val('');
                    $('#edate').val('');
					
                    //장르체크
                    var genre;
                    if($('#all_genre').is(":checked") || $(":checkbox[name='genre']:checked").length == 0) {
                        genre = "";
                    } else {
                        genre = $(":checkbox[name='genre']:checked").map(function() { return this.value; }).get();
                    }
                    $('#genre').val(genre);

                    //제작국가
                    var national;
                    if($('#all_national_code').is(":checked") || $(":checkbox[name='national-code']:checked").length == 0) {
                        national = "";
                    } else {
                        national = $(":checkbox[name='national-code']:checked").map(function() { return this.value; }).get();
                    }
                    $('#national').val(national);

                    //등급
                    var grade;
                    if($('#all_grade').is(":checked") || $(":checkbox[name='grade']:checked").length == 0) {
                        grade = "";
                    } else {
                        grade = $(":checkbox[name='grade']:checked").map(function() { return this.value; }).get();
                    }
                    $('#grade').val(grade);

                    $('#s').val('true');
                    if($("#keyword").val().trim() != ''){
                        $('#kt').val($("#keyword_type option:selected").val())
                        $('#searchtxt').val($("#keyword").val().trim());
                    }
                    if($('#is_indi').is(":checked")){
                        $('#indi').val('true');
                    }else {
                        $('#indi').val('false');
                    }

                    $('#sdate').val(escape($("#year_start").val()))
                    $('#edate').val(escape($("#year_end").val()));

                    goSearch(1);
                }


            });
        })(jQuery);

        function goSearch(page) {
            if(page > 1) {
                $('#page').val(page); 
            } else {
				$('#page').val(1); 
			}

            $('#frm').submit();
        }
//]]>
</script>
<!-- 영화검색 테이블 css와 javascript 끝 -->
<script>
	function textcontent(){
		/* if($("#keyword").val()==""){
			alert("검색어를 입력해 주세요.");
			return false;
		} */
		var chk = false;
		$("input[name=genre]:checked").each(function(){
			chk=true;
		});
		if(!chk){
			alert("장르를 선택해 주세요.");
			return false;
		}
		document.form.submit();
	}
</script>

<style>
	a, a:link{color:#000;}
</style>
<style>
	#contents{margin: 50px auto; padding:0 0 0 0;}
</style>
<style>
	#title{color:white; font-size: 15.21px; font-weight: 500;}
</style>
<style>
	#fweight{font-weight:300; color: cornflowerblue;}
</style>
<style>
	.none{display: none;}
</style>
<c:if test="${map.search!=null && map.search!=''}">
<style>
	.block{display: block;}
</style>
</c:if>
<style>
	#button1{border:1px solid black; background: none; float:right;
	margin: 10px 0 0 0; width:70px;
	}
</style>
<script>
	function movieinsert(){
		location.href="/movieform";
	}
</script>
<script>
	function movieperson(){
		location.href="/moviepersonform";
	}
</script>


</head>
<body>
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


	<!-- 영화정보윗부분 시작 -->
	<script src="/NLCHS/Scripts/common/aes.js"></script>
	<script src="/NLCHS/Scripts/common/sso.js?v=202104060439"></script>
	<script src="/NLCHS/Scripts/common/LcCommon.js?v=202104060439"></script>
	<script
		src="/NLCHS/Scripts/common/crossDomainStorage.js?v=202104060439"></script>





	


	<div id="layerRegReview" class="layer_wrap layer_reg_review"></div>
	<div id="layerInforPeople" class="layer_wrap ty2 layer_infor_people"></div>


	<script
		src="/NLCHS/Scripts/Dist/MovieDetailView.bundle.js?v= 2021040604"></script>

<!-- 영화검색테이블 -->	
<div id="contents" class="">
<div class="sect-common">
        
    <div class="sect-finder">
        <h3 id="title">좋아하는 영화, 찾고싶은 영화를<a id="fweight">LOTTE CINEMA</a>에서 찾아드립니다!"</h3>
        <form action="/searchpage" method="post" id="frmMovieSearch" name="form">
            <fieldset>
                <legend>무비파인더 - 좋아하는 영화, 찾고싶은 영화를 CGV에서 찾아드립니다!</legend>
                <!-- checkbox ID 값과 label for값을 똑같이 한다 -->
                <table cellpadding="0" cellspacing="" summary="무비파인터 영화이름, 장르, 제작국가, 관람등급, 제작년도 를 통해 검색할수 있습니다.">
                    <caption>무비파인더 검색 및 조건</caption>
                    <colgroup>
                        <col class="finder-col01" />
                        <col />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th class="searchtype" scope="row">영화검색</th>
                        <td>
                        	<label class="hidden" for="keyword_type">영화검색 목록</label>
                            <select name="category" title="영화검색 목록" id="keyword_type">
                                <option value="all" selected>전체</option>
                                <option value="title">영화제목</option>
                                <option value="actor">주연배우</option>
                                <option value="director">감독</option>
                            </select>
                            <input type="text" name="search" title="영화검색 키워드입력" id="keyword" minlength="2" maxlength="20" style="width:410px;" placeholder="키워드를 입력해 주세요"/>
                        </td>
                    </tr>
                    <tr>
                        <th class="genretype" scope="row">장르</th>
                        <td>
                            <ul>
        	                    <li><input type="checkbox" checked="checked" id="all_genre" name="all-genre" value="all" /><label for="all_genre">전체</label></li>
                                <li class="collage" style="visibility: hidden"><input type="checkbox" name="indi_genre" id="is_indi" value="1" /><label for="is_indi">아트하우스</label></li>
                            

                                
                                    <li><input type="checkbox" id="genre226" name="genre" 
                                        
                                    /><label 
                                        for="genre226">가족</label></li>
                                
                                    <li><input type="checkbox" id="genre217" name="genre" 
                                        
                                    /><label 
                                        for="genre217">공포/호러</label></li>
                                
                                    <li><input type="checkbox" id="genre723" name="genre" 
                                        
                                    value="드라마" /><label 
                                        for="genre723">드라마</label></li>
                                
                                    <li><input type="checkbox" id="genre721" name="genre" 
                                        
                                     /><label 
                                        for="genre721">SF</label></li>
                                
                                    <li><input type="checkbox" id="genre1228" name="genre" 
                                        
                                     /><label 
                                        for="genre1228">멜로/로맨스</label></li>
                                
                                    <li><input type="checkbox" id="genre732" name="genre" 
                                        
                                     /><label 
                                        for="genre732">코미디</label></li>
                                
                                    <li><input type="checkbox" id="genre727" name="genre" 
                                        
                                    /><label 
                                        for="genre727">애니메이션</label></li>
                                
                                    <li><input type="checkbox" id="genre228" name="genre" 
                                        
                                    /><label 
                                        for="genre228">느와르</label></li>
                                
                                    <li><input type="checkbox" id="genre223" name="genre" 
                                        
                                     /><label 
                                        for="genre223">단편</label></li>
                                
                                    <li><input type="checkbox" id="genre722" name="genre" 
                                        
                                    /><label 
                                        for="genre722">다큐멘터리</label></li>
                                
                                    <li><input type="checkbox" id="genre1883" name="genre" 
                                        
                                     /><label 
                                        for="genre1883">로드무비</label></li>
                                
                                    <li><input type="checkbox" id="genre724" name="genre" 
                                        
                                     /><label 
                                        for="genre724">무협</label></li>
                                
                                    <li><input type="checkbox" id="genre218" name="genre" 
                                        
                                     /><label 
                                        for="genre218">뮤지컬</label></li>
                                
                                    <li><input type="checkbox" id="genre1884" name="genre" 
                                        
                                     /><label 
                                        for="genre1884">뮤직</label></li>
                                
                                    <li><input type="checkbox" id="genre219" name="genre" 
                                        
                                     /><label 
                                        for="genre219">미스터리</label></li>
                                
                                    <li><input type="checkbox" id="genre222" name="genre" 
                                        
                                     /><label 
                                        for="genre222">범죄</label></li>
                                
                                    <li><input type="checkbox" id="genre1885" name="genre" 
                                        
                                    /><label 
                                        for="genre1885">옴니버스</label></li>
                                
                                    <li><input type="checkbox" id="genre1886" name="genre" 
                                        
                                     /><label 
                                        for="genre1886">서부</label></li>
                                
                                    <li><input type="checkbox" id="genre725" name="genre" 
                                        
                                    /><label 
                                        for="genre725">스릴러</label></li>
                                
                                    <li><input type="checkbox" id="genre1887" name="genre" 
                                        
                                     /><label 
                                        for="genre1887">스포츠</label></li>
                                
                                    <li><input type="checkbox" id="genre726" name="genre" 
                                        
                                    value="사극" /><label 
                                        for="genre726">시대극/사극</label></li>
                                
                                    <li><input type="checkbox" id="genre225" name="genre" 
                                        
                                     /><label 
                                        for="genre225">아동</label></li>
                                
                                    <li><input type="checkbox" id="genre224" name="genre" 
                                        
                                     /><label 
                                        for="genre224">액션</label></li>
                                
                                    <li><input type="checkbox" id="genre728" name="genre" 
                                        
                                     /><label 
                                        for="genre728">어드벤처</label></li>
                                
                                    <li><input type="checkbox" id="genre1888" name="genre" 
                                        
                                     /><label 
                                        for="genre1888">역사</label></li>
                                
                                    <li><input type="checkbox" id="genre1889" name="genre" 
                                        
                                     /><label 
                                        for="genre1889">전기</label></li>
                                
                                    <li><input type="checkbox" id="genre731" name="genre" 
                                        
                                     /><label 
                                        for="genre731">전쟁</label></li>
                                
                                    <li><input type="checkbox" id="genre1890" name="genre" 
                                        
                                    /><label 
                                        for="genre1890">종교</label></li>
                                
                                    <li><input type="checkbox" id="genre1891" name="genre" 
                                        
                                     /><label 
                                        for="genre1891">재난</label></li>
                                
                                    <li><input type="checkbox" id="genre1892" name="genre" 
                                        
                                    /><label 
                                        for="genre1892">청춘영화</label></li>
                                
                                    <li><input type="checkbox" id="genre1893" name="genre" 
                                        
                                    /><label 
                                        for="genre1893">퀴어</label></li>
                                
                                    <li><input type="checkbox" id="genre227" name="genre" 
                                        
                                    /><label 
                                        for="genre227">환타지</label></li>
                                
                                    <li><input type="checkbox" id="genre1894" name="genre" 
                                        
                                     /><label 
                                        for="genre1894">학원물</label></li>
                                
                                    <li><input type="checkbox" id="genre729" name="genre" 
                                        
                                     /><label 
                                        for="genre729">에로</label></li>
                                
                                    <li><input type="checkbox" id="genre1895" name="genre" 
                                        
                                     /><label 
                                        for="genre1895">없음</label></li>
                                
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="maketype" scope="row">제작국가</th>
                        <td>
                            <ul>
                                <li><input type="checkbox" name="all-national-code" id="all_national_code" /><label for="all_national_code">전체</label></li>
                                
                                    <li><input type="checkbox" id="national_code_164" name="national-code" 
                                        
                                    value="164" /><label 
                                        for="national_code_164">한국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_102" name="national-code" 
                                        
                                    value="102" /><label 
                                        for="national_code_102">미국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_141" name="national-code" 
                                        
                                    value="141" /><label 
                                        for="national_code_141">일본</label></li>
                                
                                    <li><input type="checkbox" id="national_code_143" name="national-code" 
                                        
                                    value="143" /><label 
                                        for="national_code_143">중국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_167" name="national-code" 
                                        
                                    value="167" /><label 
                                        for="national_code_167">홍콩</label></li>
                                
                                    <li><input type="checkbox" id="national_code_161" name="national-code" 
                                        
                                    value="161" /><label 
                                        for="national_code_161">프랑스</label></li>
                                
                                    <li><input type="checkbox" id="national_code_128" name="national-code" 
                                        
                                    value="128" /><label 
                                        for="national_code_128">영국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_93" name="national-code" 
                                        
                                    value="93" /><label 
                                        for="national_code_93">독일</label></li>
                                
                                    <li><input type="checkbox" id="national_code_139" name="national-code" 
                                        
                                    value="139" /><label 
                                        for="national_code_139">인도</label></li>
                                
                                    <li><input type="checkbox" id="national_code_1000" name="national-code" 
                                        
                                    value="1000" /><label 
                                        for="national_code_1000">기타</label></li>
                                
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="gradetype" scope="row">관람등급</th>
                        <td>
                            <ul>
                                <li><input type="checkbox" id="all_grade" name="all-grade" value="233" /><label for="all_grade">전체</label></li>
                                
                                    <li><input type="checkbox" id="grade233" name="grade" 
                                        
                                    value="233" /><label 
                                        for="grade233">전체관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade230" name="grade" 
                                        
                                    value="230" /><label 
                                        for="grade230">12세 관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade231" name="grade" 
                                        
                                    value="231" /><label 
                                        for="grade231">15세 관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade232" name="grade" 
                                        
                                    value="232" /><label 
                                        for="grade232">청소년 관람불가</label></li>
                                
                                    <li><input type="checkbox" id="grade919" name="grade" 
                                        
                                    value="919" /><label 
                                        for="grade919">미정</label></li>
                                
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="yeartype" scope="row"><label for="amount1">제작년도</label></th>
                        <td>
                            <div class="slider-range" id="slider-range">
                                <ul>
                                    <li></li>
                                    <li>1960</li>
                                    <li>1970</li>
                                    <li>1980</li>
                                    <li>1990</li>
                                    <li>2000</li>
                                    <li>2010</li>
                                    <li>2020</li>
                                    <li></li>
                                </ul>
                            </div>
                            <input type="text" id="year_start" style="width:118px;" value="1960" maxlength="4" placeholder="시작년도 입력해주세요." title="시작년도 입력해주세요." number="number" /> - 
                            <input type="text" id="year_end" style="width:118px;" value="2020" maxlength="4" placeholder="시작년도 입력해주세요." title="시작년도 입력해주세요." number="number" />  년
                        </td>
                    </tr>
                    </tbody>
                </table>
                    <div class="wrap-submit">
                    <button type="button" class="round inred" id="btn_submit" onclick="textcontent()"><span>검색</span></button>
                    <button type="reset" class="round red" id="btn_reset"><span>초기화</span></button>
                </div>
            </fieldset>
        </form>
    </div>
</div>
<!-- 영화검색테이블 끝-->


<!-- 영화검색리스트 시작 -->
<div class="wrap-movie">
    <div class="wrap-movie-finder">                	
        <div class="sect-search-chart" name="stop">
        	<div class="ad-finder">
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_980" width="980" height="90" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="SponsorBar_980" id="SponsorBar_980"></iframe>
            </div>
        
            <h3 class="sub">
                <img src="https://img.cgv.co.kr/R2014/images/title/h3_search_results.gif" alt="CGV TOP100">
                <!--<span style="display:none">2005년도 이후 영화 중 <strong>CGV 누적 평점 순으로 TOP100위</strong>의 영화입니다.</span>-->
                <span style="display:">아래의 선택조건에 해당하는 영화가 <strong>총 <i>${map.listCount }</i>건</strong> 검색되었습니다.</span>
            </h3>

            <!-- 위에 검색 조건을 넣어주세요  -->
            <div class="spec" style="display:">
                <dl>
                    <dt class="block none">키워드</dt>
                    <dd class="block none">${map.search }</dd>
                    <dt>장르</dt>
                    
                    <dd>
                    <!-- 처음에 들어갔을때 전체가 뜨게하는 구문 -->
                    <c:if test="${map.search==null && map.all_genre==null }">전체</c:if>
                    <!-- 여기까지 -->
                    <c:if test="${map.search!=null && map.all_genre!=null }">전체</c:if>
                    <c:if test="${map.search!=null && map.all_genre==null && map.hgenre==null && map.dgenre==null }">없음</c:if>
                    <c:if test="${map.all_genre==null }">
                    ${map.hgenre }
                    <c:if test="${map.hgenre!=null && map.dgenre!=null }">
                    ,
                    </c:if>
                    ${map.dgenre }
                    </c:if>
                    </dd>
                    <dt>제작국가</dt>
                    <dd>전체</dd>
                    <dt>관람등급</dt>
                    <dd>전체</dd>
                    <dt>제작년도</dt>
                    <dd>1960년 ~ 2020년</dd>
                </dl>
            </div>


            <ol class="list-more">
            
			<!-- 여기서부터 리스트 추가 -->
			<c:forEach var="dto" items="${map.list}">
				<li>
                    <div class="box-image">
                        <strong class="rank" style="display:none">No.5</strong>	
                        <a href="/movies/detail-view/?midx=84558">
                            <span class="thumb-image">
                                <img src="images/movie_info/${dto.poster }" alt="좋은 빛, 좋은 공기 포스터" onerror="errorImage(this)">
                                <span class="ico-grade grade-${dto.age}">12세 이상</span>
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=84558">
                            <strong class="title">${dto.mname }</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>${dto.mrate }%</span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
                            <div class="egg-gage small">
                                            <span class="sprite_preegg default"></span>
                                            <span class="percent">100%</span>
                                        </div>
                        </div>

                        <span class="txt-info">
                            <strong>
                            	<fmt:formatDate value="${dto.openingdate }" pattern="YYYY-MM-dd"/> 개봉
                                <em class="dday"></em>
                            </strong>
                        </span>
                        <span class="like"> 
                            
                        </span>
                    </div>    
                </li>
			</c:forEach>
            
            <li style="width:100%;text-align:center;padding:40px 0 40px 0;display:none">검색결과가 존재하지 않습니다.</li>
            </ol>
        </div>
    </div>

    <!--?xml version="1.0" encoding="utf-8"?-->
<div class="paging">

<c:if test="${map.page==1}">
		<button class="btn-paging first" type="button">처음</button>
      </c:if>
      <c:if test="${map.page!=1}">
		<a href="searchpage?page=1">
		<button class="btn-paging first" type="button">
		처음
		</button>
		</a>
      </c:if>
      
      <c:choose>
      	<c:when test="${map.page<=1 }">
			<button class="btn-paging prev" type="button">이전</button>
      	</c:when>
      	<c:otherwise>
			<a href="searchpage?page=${map.page-1 }">
			<button class="btn-paging prev" type="button">
			이전
			</button>
			</a>
      	
      	</c:otherwise>
      </c:choose>
  <ul>
  <!-- searchpage -->
      <c:forEach var="nowpage" begin="${map.startpage }" end="${map.endpage }">
      	<c:choose>
    		<c:when test="${map.page==nowpage }">
			    <li>
			      <a>${nowpage }</a>
			    </li>
    		</c:when>
    		<c:otherwise>
			    <li>
			      <a href="searchpage?page=${nowpage }">${nowpage }</a>
			    </li>
    		</c:otherwise>  	
      	</c:choose>
      </c:forEach>  
  </ul>
  
     <c:choose>
      	<c:when test="${map.page>=map.maxpage }">
			<button class="btn-paging next" type="button">다음</button>
      	</c:when>
      	<c:otherwise>
      		<a href="searchpage?page=${map.page+1 }">
			<button class="btn-paging next" type="button">다음</button>
			</a>
      	</c:otherwise>
      </c:choose>
      
      <%-- page가 1인데 maxPage가 0인경우 --%>
      <c:if test="${map.page==map.maxpage}">
		  <button class="btn-paging end" type="button">끝</button>
      </c:if>
      <c:if test="${map.page!=map.maxpage}">
      		<a href="searchpage?page=${map.maxpage }">
		  		<button class="btn-paging end" type="button">끝</button>
			</a>
      </c:if>



  
  
  




</div>
</div>
<!-- 영화검색리스트 끝 -->



</div>	






















	<!-- <div id="banner_section" class="banner_wrap">
		<div class="banner_01">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_34&amp;adgroupid=adg_lottecinema_20210323_16&amp;adid=adi_lottecinema_20210331_5"
				target=""><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2021/TheCourier/TheCourier_980180.jpg"
				alt="더 스파이 베네딕트 컴버배치 핵전쟁 위기, 인류를 구하라! 당신의 심장을 뛰게 할 예고편 4월 28일 대개봉 15세이상관람가"></a>
		</div>
		<div id="footerBanner" class="banner_type02"
			style="background-color: rgb(255, 219, 0); background-image: url(&quot;http://caching2.lottecinema.co.kr/lotte_image/2017/bg_01.jpg&quot;); background-repeat: repeat-x; background-position: 0px 0px;">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_36&amp;adgroupid=adg_lottecinema_20210326_89&amp;adid=adi_lottecinema_20210326_94"
				target="_blank"><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2021/Inbyu/0317/Inbyu_980240.png"
				alt="롯데시네마xINBYU kakao company 운전자 보험료 콜라 한 잔 값보다 더 내고 있다면? 비교하러 가기"></a>
		</div>
	</div> -->
		
	
	
	
	
	
	
	
	
	
	
	
	
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


</body>
</body>

</html>