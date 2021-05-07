<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>예매 - 롯데시네마</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	
	<meta id="description"
		content="Happy Memories 롯데시네마는 최상의 관람 환경과 양질의 켄텐츠로 영화를 통해 고객에게 행복한 기억을 선물합니다.">
	<meta id="Keywords"
		content="롯데시네마, LOTTE CINEMA, 롯시, 시네마, CINEMA, 영화, 영화관, 극장, 티켓, 박스오피스, Movie, Theater, 예매, 현재상영작, 상영예정작, 개봉영화, 영화예매, 영화예매순위, 영화순위, 상영시간표" />
	<link href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1"
		rel="shortcut icon" type="image/x-icon" />
	<script type="text/javascript">
		var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android',
				'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson',
				'Windows Phone');
	
		for ( var word in mobileKeyWords) {
	
			if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
	
				location.href = "/NLCMW/";
	
				break;
			}
		}
	</script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	
	<link rel="stylesheet" href="/css/default.css">
	<link rel="stylesheet" href="/css/owl.css">
	<link rel="stylesheet" href="/css/swiper.css">
	<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/content1.css">
	<link rel="stylesheet" href="/css/dev.css">
	
<!-- 	<script src="/js/common.js"></script> -->
<!-- 	<script src="/js/lcga.js"></script> -->
<!-- 	<script src="/js/lccommon.js"></script> -->
<!-- 	<script src="/js/plugin.js"></script> -->
<!-- 	<script src="/js/util.js"></script> -->
<!-- 	<script src="/js/member.js"></script> -->
	<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/js/moment.js"></script>
	<script src="/js/owl.carousel.js"></script>
	
	<!-- Google Tag Manager -->
	
	
	<!-- Google Tag Manager -->
	<script type="text/javascript">
	moment.locale('ko', {
	    weekdays: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
	    weekdaysShort: ["일","월","화","수","목","금","토"],
	});
	
	
	</script>

</head>

<body>
	<div id="loading" class="loader loader-bouncing is-active hidden"></div>
	<div id="skip_nav_section" class="skip_nav"></div>
	<div id="main_top_of_top_banner" class="banner_top_wrap banner_type01"></div>
	<div id="header_section" class="header"></div>
	<div id="contents" class="contents_full contents_reserve">
		<div class="wrap_reserve">
			<h2 class="hidden">예매하기</h2>
			<div class="section_step_tit">
				<ul>
					<li class="active step01">
					<a href="#reserveStep01">
						<strong	class="tit"><span>01</span><br>상영시간</strong>
							<div class="bx_con">
								<dl>
									<dt>선택한 영화 제목</dt>
										<dd>어른들은 몰라요</dd>
									<dt>선택한 상영관</dt>
										<dd>구리아울렛 </dd>
									<dt>선택한 상영 날짜</dt>
										<dd>2021-04-17(토)</dd>
									<dt>선택한 시간</dt>
									<dd></dd>
								</dl>						
							</div>
						</a>
					</li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>02</span><br>인원/좌석</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>03</span><br>결제</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>04</span><br>결제완료</strong></a></li>
				</ul>
			</div>
			<div id="reserveStep01" class="section_step_con step01 active">
				<h3 class="hidden">상영시간</h3>
				<div class="article article_cinema">
					<div class="group_top">
						<h4 class="tit">가양</h4>
					</div>
					<div class="inner">
						<ul class="tab_wrap outer">
							<li class="active"><button type="button" class="tab_tit"
									style="width: 50%; left: 0%;">
									<span>전체</span>
								</button>
								<div class="tab_con">
									<h5 class="hidden">전체</h5>
									<div class="cinema_select_wrap cinemaSelect basicCinema">
										<ul>
											<li class="depth1"><a href="#none">MY 영화관<em>(0)</em></a>
												<div class="depth2" style="display: none;">
													<div
														class="mCustomScrollbar _mCS_10 mCS-autoHide mCS_no_scrollbar"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_10"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: 753px;" tabindex="0">
															<div id="mCSB_10_container"
																class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<div class="bx_notice">
																	<p class="txt">

																		MY 영화관을 등록 후<br>이용해 주세요.
																	</p>
																	<a
																		href="https://www.lottecinema.co.kr/NLCHS/MyCinema/TicketingOrderList?mTab=1&amp;sTab=1&amp;vType=0"
																		class="btn_col3 ty3 rnd">MY 영화관 설정</a>
																</div>
															</div>
														</div>
														<div id="mCSB_10_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_10_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_10_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; top: 0px; height: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
											<li class="depth1"><a href="#none" title="선택됨">서울<em>(24)</em></a>
												<div class="depth2" style="display: none;">
													<div
														class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_1"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_1_container" class="mCSB_container"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																	<li class=""><a href="#none">가산디지털</a></li>
																	<li class=""><a href="#none">가양</a></li>
																	<li class=""><a href="#none">강동</a></li>
																	<li class=""><a href="#none">건대입구</a></li>
																	<li class=""><a href="#none">김포공항</a></li>
																	<li class=""><a href="#none">노원</a></li>

																</ul>
															</div>
														</div>
														<div id="mCSB_1_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: block;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; display: block; height: 602px; max-height: 719px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
											<li class="depth1"><a href="#none">경기/인천<em>(39)</em></a>
												<div class="depth2" style="display: block;">
													<div
														class="mCustomScrollbar basicCinemaScroll _mCS_2 mCS-autoHide mCS_no_scrollbar"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_2"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: 753px;" tabindex="0">
															<div id="mCSB_2_container"
																class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																style="position: relative; top: 0px; left: 0px;"
																dir="ltr">
																<ul>
																	<li class=""><a href="#none">광교아울렛</a></li>
																	<li class=""><a href="#none">광명(광명사거리)</a></li>
																	<li class=""><a href="#none">광명아울렛</a></li>
																	<li class=""><a href="#none">광주터미널</a></li>
																	<li class=""><a href="#none">구리아울렛</a></li>

																</ul>
															</div>
														</div>
														<div id="mCSB_2_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; top: 0px; display: block; height: 361px; max-height: 719px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>

						</ul>
					</div>
				</div>
			
				
				<div class="article article_movie">
					<div class="group_top">
						<h4 class="tit movie_name">고질라 VS. 콩</h4>
					</div>
					<div class="inner">
						<div class="list_filter">
							<select title="영화 정렬 방법 선택">
								<option value="A">예매순</option>
								<option value="B">관객순</option>
								<option value="C">평점순</option>
								<option value="D">예정작</option>
							</select>
							<div class="bx_btn_view">
								<span class="hidden">목록 보기 방식</span>
								<ul>
									<li><button type="button"
											class="btn_view_txt viewTxt active">텍스트형</button></li>
									<li><button type="button" class="btn_view_thm viewThm">썸네일형</button></li>
								</ul>
							</div>
						</div>
						<div class="movie_select_wrap list movieSelect">
							<div class="mCustomScrollbar movieScroll _mCS_9 mCS-autoHide"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_9"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									tabindex="0" style="max-height: none;">
									<div id="mCSB_9_container" class="mCSB_container"
										style="position: relative; top: -200px; left: 0px;" dir="ltr">
										<ul>
											<li class=""><a href="#none"><div
														class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>1</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202012/16557_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_15">15세 관람가</span><strong
																class="tit">서복</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>21.5%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>0.0</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.04.15</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div
														class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>2</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202104/17215_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_18">18세 관람가</span><strong
																class="tit">어른들은 몰라요</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>18.9%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>0.0</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.04.15</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div
														class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>3</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202104/17188_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_12">12세 관람가</span><strong
																class="tit">명탐정 코난: 비색의 탄환</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>13.7%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>0.0</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.04.16</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>4</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202102/16756_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_12">12세 관람가</span><strong
																class="tit">자산어보</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>7.7%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>9.2</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.03.31</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>5</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202101/16908_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_15">15세 관람가</span><strong
																class="tit">극장판 귀멸의 칼날: 무한열차편</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>6.4%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>9.1</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.02.03</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div
														class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>6</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202103/17057_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_12">12세 관람가</span><strong
																class="tit">고질라 VS. 콩</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>4.1%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>8.3</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.03.25</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div
														class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>7</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202104/17071_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_all">0세 관람가</span><strong
																class="tit">당신의 사월</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>3.9%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>10.0</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.04.01</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											<li class=""><a href="#none"><div class="bx_thm">
														<span class="rank"><span class="hidden">순위</span><strong>8</strong></span><img
															src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202103/16888_101_1.jpg"
															alt="포스터" class="mCS_img_loaded">
													</div>
													<div class="group_infor">
														<div class="bx_tit">
															<span class="ic_grade gr_12">12세 관람가</span><strong
																class="tit">미나리</strong>
														</div>
														<dl>
															<dt>예매율</dt>
															<dd>
																<strong>3.5%</strong>
															</dd>
															<dt class="side">
																<span class="txt_ic_score ty1"><em>평점</em></span>
															</dt>
															<dd>
																<span class="txt_ic_score ty1"><strong>8.4</strong></span>
															</dd>
															<dt>개봉일</dt>
															<dd>2021.03.03</dd>
															<dt class="side day">d -day</dt>
															<dd>
																<strong class="expired"></strong>
															</dd>
														</dl>
													</div></a></li>
											</ul>
									</div>
								</div>
								<div id="mCSB_9_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_9_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: block;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; display: block; height: 202px; max-height: 720px; top: 53px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					<script>
					var BB="";
					$(".depth1").click(	function() {
										$(this).addClass(' active');
										$(this).siblings('li').removeClass('active');
										$(this).find(".depth2").css('display',
												'block');
										$(this).siblings('li').find(".depth2")
												.css('display', 'none');
										$(this).siblings('li').find(".depth2")
												.find('li').removeClass('active');
										// 						$(this).toggleClass('active');
										// 						$(".depth1").toggleClass('active');
										// 						$(this).siblings('li').toggleClass('active');
									});
					
					$(".depth2").find('li').click(function() {
						$(this).addClass(' active');
						$(this).siblings('li').removeClass('active');
						locB = $(".depth2").find(".active").text();
						
						return locB;
// 			  			alert(locB);
// 						var a = '';
// 						a += '<dl>';
// 						a += '<dt>' + '선택한 영화 제목' + '</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '<dt>선택한 상영관</dt>';
// 						a += '<dd>' + locB + '</dd>';
// 						a += '<dt>선택한 상영날짜</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '<dt>선택한 시간</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '</dl>'
// 						$(".bx_con").html(a);
					});
					
					
					
				
					$(".mCSB_container").find('li').click(function(){
// 						alert($(this).html())
						$(this).addClass(' active');
						$(this).siblings('li').removeClass('active');
						mName = $(this).find(".tit").text();
// 						var a = '';
// 						a += '<dl>';
// 						a += '<dt>' + '선택한 영화 제목' + '</dt>';
// 						a += '<dd>' + mName + '</dd>';
// 						a += '<dt>선택한 상영관</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '<dt>선택한 상영날짜</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '<dt>선택한 시간</dt>';
// 						a += '<dd>' +  + '</dd>';
// 						a += '</dl>'
// 						$(".bx_con").html(a);
					});
					
					var BB = $(".depth2").find(".active").text();
						
					if(BB != ""){
					alert(BB);
					}
					
					 
					// 					if(locB != ""){
						
					var a = '';
					a += '<dl>';
					a += '<dt>' + '선택한 영화 제목' + '</dt>';
					a += '<dd>' +"" + '</dd>';
					a += '<dt>선택한 상영관</dt>';
					a += '<dd>' + "" + '</dd>';
					a += '<dt>선택한 상영날짜</dt>';
					a += '<dd>' +  + '</dd>';
					a += '<dt>선택한 시간</dt>';
					a += '<dd>' +  + '</dd>';
					a += '</dl>'
					$(".bx_con").html(a);
// 					}
					function dateslide(){
						
					};
					$(document).ready(function(){
					  
					
					var i;
					    var a='';
					for(i=0; i<20; i++){
						var setdate =moment().add(i,'d').format("YYYY-MM-DD ddd");
						var set =moment().add(i,'d');
						var month = set.format("M")+"월";
						var date = set.format("D");
						var day = set.format("ddd");
						if (day == moment().format("ddd")){
							day="오늘";
						}
						console.log(setdate);
						console.log(month+date+day);
				 		
				 		a+=	'<div class="owl-item active" style="width: 60px;">';
				 		a+=	'<li class="item"><strong class="month">'+month+'</strong>';
				 		a+=	'<span	class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y"';
				 		a+=	'data-playdate='+setdate+' data-isplaydate="Y"';
				 		a+=	'data-playweek='+day+' checked=""><strong>'+date+'</strong><em>'+day+'</em></label></span></li></div>';
				 		
// 						<div class="owl-item active" style="width: 52.5px;">
// 						<li class="item"><strong class="month">4월</strong>
// 						<span class="date"><label><input type="radio"
// 									name="radioDate1" data-displayyn="Y"
// 									data-playdate="2021-04-12" data-isplaydate="Y"
// 									data-playweek="오늘" checked=""><strong>12</strong><em>오늘</em></label></span></li>
// 						</div>
							
					};
					$(".owl-stage").append(a);
					  var owl = $('.owl-carousel');
					    
					    owl.owlCarousel({
					        items:7,                 // 한번에 보여줄 아이템 수
					        loop:false,               // 반복여부
					                   
					        autoplay:false,           // 자동재생 여부
					        autoplayTimeout:1800,    // 재생간격
					        autoplayHoverPause:true  //마우스오버시 멈출지 여부
					    });
					    $('.owl-next').click(function() {
					        owl.trigger('next.owl.carousel');
					    })
					    
					    $('.owl-prev').click(function() {
					        owl.trigger('prev.owl.carousel', [300]);
					    })
					});
					

					
					
					
                    
				</script>
				<div class="article article_time">
					<div class="group_top">
						<h4 class="tit">2021-04-12(오늘)</h4>
					</div>
					<div class="inner">
						<div class="date_select_wrap dateReserveWrap">
							<div class="slide_wrap slide_reserve_date">
								<ul class="owl-carousel owl-loaded owl-drag">
									<div class="owl-stage-outer">
										<div class="owl-stage"
											style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; ">
											

											
										</div>
									</div>
									<div class="owl-nav">
										<button type="button" role="presentation"
											class="owl-prev">
											<span aria-label="Previous">‹</span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span aria-label="Next">›</span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
								</ul>
							</div>
						</div>
						<ul class="tab_wrap outer sml">
							<li class="active"><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 0%;">
									<span>전체</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">전체</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_53 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_53"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_53_cont  ainer"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="group_time_select">
													<div class="time_select_tit">
														<span class="ic_grade gr_12">12</span><strong>고질라
															VS. 콩</strong>
													</div>
													<div class="time_select_wrap timeSelect">
														<ul class="list_hall">
															<li>2D</li>
														</ul>
														<ul class="list_time">
															<li class=""><a role="button"
																href="./seat?sid=8"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>10:00</strong>
																			<div class="tooltip">종료 11:53</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>예매마감</strong>
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">1관</dd>
																	</dl></a></li>
															<li class=""><a role="button" href="./seat?sid=14"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>12:00</strong>
																			<div class="tooltip">종료 13:53</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>예매마감</strong>
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">1관</dd>
																	</dl></a></li>
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>14:00</strong>
																			<div class="tooltip">종료 15:53</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>예매마감</strong>
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">1관</dd>
																	</dl></a></li>
																	
															<li class="full disable"><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>16:00</strong>
																			<div class="tooltip">종료 17:53</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>예매마감</strong>
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">1관</dd>
																	</dl></a></li>
																	<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>18:00</strong>
																			<div class="tooltip">종료 19:53</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>예매마감</strong>
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">1관</dd>
																	</dl></a></li>
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>19:55</strong>
																			<div class="tooltip">종료 21:58</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>138</strong> / 210
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">6관</dd>
																	</dl></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="mCSB_53_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_53_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_53_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 16.6667%;">
									<span>스페셜관</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">스페셜관</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_54 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_54"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_54_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>
											</div>
										</div>
										<div id="mCSB_54_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_54_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_54_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 33.3333%;">
									<span>Atmos</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">Atmos</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_55 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_55"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_55_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>
											</div>
										</div>
										<div id="mCSB_55_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_55_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_55_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 50%;">
									<span>13시간 이후</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">13시 이후</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_56 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_56"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_56_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="group_time_select">
													<div class="time_select_tit">
														<span class="ic_grade gr_12">12</span><strong>고질라
															VS. 콩</strong>
													</div>
													<div class="time_select_wrap timeSelect">
														<ul class="list_hall">
															<li>2D</li>
														</ul>
														<ul class="list_time">
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>15:10</strong>
																			<div class="tooltip">종료 17:13</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>135</strong> / 210
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">6관</dd>
																	</dl></a></li>
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>17:30</strong>
																			<div class="tooltip">종료 19:33</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>138</strong> / 210
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">6관</dd>
																	</dl></a></li>
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>19:55</strong>
																			<div class="tooltip">종료 21:58</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>138</strong> / 210
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">6관</dd>
																	</dl></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="mCSB_56_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_56_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_56_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 66.6667%;">
									<span>19시간 이후</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">19시 이후</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_57 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_57"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_57_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="group_time_select">
													<div class="time_select_tit">
														<span class="ic_grade gr_12">12</span><strong>고질라
															VS. 콩</strong>
													</div>
													<div class="time_select_wrap timeSelect">
														<ul class="list_hall">
															<li>2D</li>
														</ul>
														<ul class="list_time">
															<li class=""><a role="button" href="#none"><dl>
																		<dt>상영시간</dt>
																		<dd class="time">
																			<strong>19:55</strong>
																			<div class="tooltip">종료 21:58</div>
																		</dd>
																		<dt>잔여석</dt>
																		<dd class="seat">
																			<strong>138</strong> / 210
																		</dd>
																		<dt>상영관</dt>
																		<dd class="hall">6관</dd>
																	</dl></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="mCSB_57_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_57_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_57_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 83.3333%;">
									<span>심야</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">심야</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_58 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_58"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_58_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>
											</div>
										</div>
										<div id="mCSB_58_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_58_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_58_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- step01 -->


	<!-- //step01 -->


	<script type="text/javascript">
		function closeScreenLayer() {
			//$("#stepOnePopupMiniMap").empty();
			closeLayer();
			$(".tempZindex").css({
				"z-index" : "inherit"
			}).removeClass("tempZindex");
			if ($(this).hasClass("CloseLayerSaving") == true) {
				$(".article_payment_fin > .inner").animate({
					"margin-right" : "0"
				}, "fast", function() {
					$(".article_payment_fin").removeClass("side");
				});
			}
		}
	</script>






	<div id="banner_reserve_section" class="banner_reserve_wrap"></div>
	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="banner_section" class="banner_wrap"></div>
	<div id="footer_section" class="footer"></div>











	<script>
		if (document.readyState == "complete") {
			document.getElementById("loading").classList.remove('loader');
			document.getElementById("loading").classList
					.remove('loader-bouncing');
			document.getElementById("loading").classList.remove('is-active');
		}

		//document.addEventListener('readystatechange', event => {
		//    if (event.target.readyState === "complete") {
		//        document.getElementById("loading").classList.remove('loader');
		//        document.getElementById("loading").classList.remove('loader-bouncing');
		//        document.getElementById("loading").classList.remove('is-active');
		//    }
		//});
	</script>
</body>
</html>
