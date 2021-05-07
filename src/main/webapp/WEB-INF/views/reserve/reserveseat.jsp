<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/owl.css">
<link rel="stylesheet" href="/css/swiper.css">
<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/content1.css">
<link rel="stylesheet" href="/css/dev.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="/js/moment.js"></script>
<script type="text/javascript">
	moment.locale('ko', {
	    weekdays: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
	    weekdaysShort: ["일","월","화","수","목","금","토"],
	});
	
	
	</script>
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

</head>
<body>
	<div id="contents" class="contents_full contents_reserve" style="margin-top: 120px;">

		<div class="wrap_reserve">
			<h2 class="hidden">예매하기</h2>
			<div id="PersonSeatHeader" class="section_step_tit">
				<ul>
					<li class="step01 prev"><a href="#reserveStep01">
							<strong class="tit"><span>01</span><br>상영시간</strong>
							<div class="bx_con">
								<dl>
									<dt>선택한 영화 제목</dt>
									<dd>${allinfo.mname}</dd>
									<dt>선택한 상영관</dt>
									<dd>${allinfo.locB}</dd>
									<dt>선택한 상영 날짜</dt>
									<dd><fmt:formatDate pattern="yyyy-MM-dd (E)" value="${allinfo.starttime}"/></dd>
									<dt>선택한 시간</dt>
									<dd><fmt:formatDate pattern="hh:mm" value="${allinfo.starttime}"/> ~ <fmt:formatDate pattern="hh:mm" value="${allinfo.endtime}"/></dd>
									
								</dl>
							</div>
						</a></li>
					<li class="step02 active"><a href="#reserveStep02">
							<strong class="tit"><span>02</span><br>인원/좌석</strong>
							<div class="bx_con">
								<dl>
									<dt>선택한 인원</dt>
									<dd>
										<span id="preview_person_info"></span>
									</dd>
									<dt>선택한 좌석</dt>
									<dd class="seat_list">
										<span id="preview_seat_info"></span>
									</dd>
								</dl>
							</div>
						</a></li>
					<li class="step03"><a style="cursor: default;">
							<strong class="tit"><span>03</span><br>결제</strong>
							<div class="bx_con">
								<dl>
									<dt>티켓금액</dt>
									<dd>0원</dd>
									<dt>할인금액</dt>
									<dd>0원</dd>
									<dt>총합계</dt>
									<dd>0원</dd>
								</dl>
							</div>
						</a></li>
					<li><a style="cursor: default;">
							<strong class="tit"><span>04</span><br>결제완료</strong>
						</a></li>
				</ul>
			</div>




			<div id="reserveStep01" class="section_step_con step01">
				<h3 class="hidden">상영시간</h3>

			</div>



			<div id="reserveStep02" class="section_step_con step02 active">
				<h3 class="hidden">인원/좌석</h3>
				<!--<div id="PersonSeatHeader"></div>-->

				<div class="article article_seat">
					<div class="group_top">
						<h4 class="tit">인원/좌석 선택</h4>
						<p class="txt">인원은 최대 8명까지 선택 가능합니다.</p>
					</div>
					<div class="inner">

						<div id="PersonSeatCount">
							<div class="select_num_people_wrap">
								<h5 class="hidden">인원선택</h5>
								<div class="movie_infor">
									<h6 class="hidden">예매 정보</h6>
									<span class="thm"><img src="/images/movie_info/${allinfo.poster}"></span>
									<div class="group_infor">
										<div class="bx_tit">
											<span class="ic_grade gr_${allinfo.age}">관람가</span><strong>${allinfo.mname}</strong>
										</div>
										<dl>
											<dt>일시</dt>
											<dd class="sub_info1">
												<fmt:formatDate pattern="yy.MM.dd (E)" value="${allinfo.starttime}"/><span class="time"><fmt:formatDate pattern="hh:mm" value="${allinfo.starttime}"/> ~ <fmt:formatDate pattern="hh:mm" value="${allinfo.endtime}"/></span>
											</dd>
											<dt>영화관</dt>
											<dd class="sub_info1">${allinfo.locB} · ${allinfo.hall}관</dd>
										</dl>
									</div>
								</div>
								<div class="count_people">
									<h6 class="hidden">인원선택</h6>
									<ul>
										<li id="person_10" data-code="10" data-people="성인" data-count="0">
											<strong class="tit">성인</strong> <span class="bx_num">
												<button class="btn_mins" id="Minus|10">감소</button>
												<div class="txt_num">0</div>
											<button class="btn_plus" id="Plus|10">증가</button>
										</span></li>
										<li id="person_20" data-code="20" data-peple="청소년" data-count="0"><strong class="tit">청소년</strong><span class="bx_num"><button class="btn_mins" id="Minus|20">감소</button>
												<div class="txt_num">0</div>
												<button class="btn_plus" id="Plus|20">증가</button></span></li>
										<li id="person_12" data-code="12" data-peple="시니어" data-count="0"><strong class="tit">시니어</strong><span class="bx_num"><button class="btn_mins" id="Minus|12">감소</button>
												<div class="txt_num">0</div>
												<button class="btn_plus" id="Plus|12">증가</button></span></li>
										
									</ul>
								</div>
							</div>
							
						</div>
						<script>
							
							
							
							
							    

						</script>


						<div class="select_seat_wrap">
							<h5 class="hidden">좌석선택</h5>
							<div class="top_txt_info">
								<p id="ticketMessageInfo">${seat.seat}</p>
							</div>
							<div id="PersonSeatSelect"></div>
							
											
							<div id="container" class="seat_wrap">
								<article class="mseat_wrap">
									<div class="mseat_inner">

										<div class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
											<div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
												<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0; left: 0;" dir="ltr">
													<div class="meat_door_pos" id="scrollWrap">
														<div class="mseat_hidden">

															<span class="title_screen1">SCREEN</span>

															<div class="showMap">
															
																<div class="floor_bx seatSet1">
																	<span class="floor_tit" style="display: none;">10F</span>
																	<div class="seat_area" style="margin-top: 30px; width: 308.2px; height: 358px;">
																													
																	</div>
																	<span data-y="25px" data-x="38px" class="w_center" style="top: 25px; left: 469px;">상영관 출입문 입니다.</span>
																	
																	
																</div>
																
																
															</div>
														
															
															
														</div>
													</div>
												</div>
											</div>
											
											
											<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
														<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>


									</div>

									<div class="seat_btm_box">

										<div class="seat_type_box">
											<div class="top_info">
												<span class="seat_type1">선택좌석</span> <span class="seat_type2">선택가능</span> <span class="seat_type3">예매완료</span> <span class="seat_type4">선택불가</span>
											</div>
											<div class="btm_info">
												<span class="seat_type12">거리두기석</span> <span class="seat_type5">스위트스팟</span> <span class="seat_type6">씨네커플</span> <span class="seat_type7">씨네패밀리</span> <span class="seat_type8">리클라이너석</span> <span class="seat_type9">장애인석</span> <span class="seat_type10">발받침</span> <span class="seat_type11">출입문</span>
											</div>
										</div>


										<div class="notice_box" style="display: none;">
											<h6 class="tit_info">이용안내</h6>
											<ul class="list_txt ty3">
												<li>12세 미만의 고객님(영,유아 포함)은 부모님 또는 보호자를 동반하여도 관람이 불가합니다.</li>
												<li>영화 관람 시, 신분증을 지참하여 주시기 바랍니다.</li>
											</ul>
										</div>

									</div>
								</article>
							</div>

						</div>
											

						
						<div id="PersonSeatSummery">
							<div class="select_seat_result">
								<div class="group_lft">
									<dl class="total_price">
										
									</dl>
								</div>
									
								<form action ="/reserve/add" name="reserveForm" method="post">		
									<div class="group_rgt">
										<input type="hidden" class="sid" name="sid"> 
										<input type="hidden" class="selectedTheater" name="selectedTheater"> 
										<input type="hidden" class="reserveDate" name="reserveDate">
										<input type="hidden" class="reserveTimestamp" name="reserveTimestamp"> 
										<input type="hidden" class="runningTime" name="runningTime"> 
										<input type="hidden" class="movieAge" name="movieAge">
										<input type="hidden" class="ticketNumber" name="ticketNumber">
										<input type="hidden" class="selectedSeat" name="seat">
										<input type="hidden" class="remainSeat" name="remainseat">
										<input type="hidden" class="payMoney" name="payMoney">
										<a href="javascript:void(0);" class="btn_col1" id="link_rpay">예매하기</a>									
									</div>
								</form>
							</div>
						</div>
						
					</div>
				</div>

			</div>
	


			<div id="reserveStep03" class="section_step_con step03 ">
				<h3 class="hidden">결제</h3>

			</div>



			<div id="reserveStep04" class="section_step_con step04 ">
				<h3 class="hidden">결제완료</h3>

			</div>

		</div>
		<script>
															
															let test = [];
															let clicked = "";
															let div = "";
															let count=0;
															let allnum=0;
															let nNum=0;
															let seatsArray = new Array();
															const selectedSeats = document.querySelector('.selected-seats');
															const allSeat = document.querySelector('.all-seats');
															const remainSeat = document.querySelector('.remainSeat');
															const reserveNumber = document.querySelector('.reserve-number');
															var n=document.querySelector("#person_10");
															var t=document.querySelector("#person_20");
															var o=document.querySelector("#person_12");
															const seatForm = document.querySelector('.seatForm');
															const reserveButton = document.querySelector('.reserve-button');
															const sid = document.querySelector('.sid');
															const selectedTheater = document.querySelector('.selectedTheater');
															const reserveDate = document.querySelector('.reserveDate');
															const reserveTimestamp = document.querySelector('.reserveTimestamp');
															const runningTime = document.querySelector('.runningTime');
															const ticketNumber = document.querySelector('.ticketNumber');
															const selectedSeat = document.querySelector('.selectedSeat');
															
															
															
															
															
															$(document).on("click",".btn_plus", function(e){

																
																if($(this).parent().siblings('strong').text()=="성인"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())+1;
																	console.log(num);
																	
																	n.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	allnum= nNum +tNum + oNum;
																	if(allnum>8){
																		alert("최대 8명까지 가능합니다.");
																		e.preventDefault();
																		n.dataset.count=num-1;
																		allnum=allnum-1;
																		
																		console.log(n.dataset);
																		console.log("allnum:"+ allnum);
																	}else{ 
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(nNum);
																	
																	
																	console.log(n.dataset);
																	console.log("allnum:"+ allnum);
																	}
																	
																}
																	
																else if($(this).parent().siblings('strong').text()=="청소년"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())+1;
																	console.log(num);
																	
																	t.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	allnum= nNum +tNum + oNum;
																	if(allnum>8){
																		alert("최대 8명까지 가능합니다.");
																		e.preventDefault();
																		t.dataset.count=num-1;
																		allnum=allnum-1;
																		
																		console.log(t.dataset);
																		console.log("allnum:"+ allnum);
																	}else{
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(tNum);
// 																	
																	
																	console.log(t.dataset);
																	console.log("allnum:"+ allnum);
																	}
																}else if($(this).parent().siblings('strong').text()=="시니어"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())+1;
																	o.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	
																	allnum= nNum +tNum + oNum;
																	if(allnum>8){
																		alert("최대 8명까지 가능합니다.");
																		e.preventDefault();
																		o.dataset.count=num-1;
																		allnum=allnum-1;
																		
																		console.log(t.dataset);
																		console.log("allnum:"+ allnum);
																	}else{
																	
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(oNum);
																	console.log(o.dataset);
																	console.log("allnum:"+ allnum);
																	}
																}
																
// 														
																
																
															});
															$(".btn_mins").click(function(e){
																	
																on = document.querySelectorAll('.on');
																
																if(allnum<=on.length){
																	
																	$(".sel").hasClass('on').removeClass('on');
																}
																if($(this).parent().siblings('strong').text()=="성인"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())-1;
																	console.log(num);
																	
																	n.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	if($(this).parent().find(".txt_num").text()==0){
																		
																		
																		e.preventDefault();
																	}else{
																	allnum= nNum +tNum + oNum;
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(nNum);

																	console.log($(this).parent().parent("#person_10").data());
																	console.log(n.dataset);
																	console.log("allnum:"+ allnum);
																	}
																	
																	
																}else if($(this).parent().siblings('strong').text()=="청소년"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())-1;
																	console.log(num);
																	
																	t.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	if($(this).parent().find(".txt_num").text()==0){
																		
																		
																		e.preventDefault();
																	}else{
																	allnum= nNum +tNum + oNum;
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(tNum);

																	console.log($(this).parent().parent("#person_10").data());
																	console.log(t.dataset);
																	console.log("allnum:"+ allnum);
																	}
																}else if($(this).parent().siblings('strong').text()=="시니어"){
																	
																	var num=Number($(this).parent().find(".txt_num").text())-1;
																	o.dataset.count=num
																	nNum=Number(n.dataset.count);
																	tNum=Number(t.dataset.count);
																	oNum=Number(o.dataset.count);
																	
																	if($(this).parent().find(".txt_num").text()==0){
																		
																	
																		e.preventDefault();
																	}else{
																	
																	allnum= nNum +tNum + oNum;
																	$(this).parent().find(".txt_num").empty();
																	$(this).parent().find(".txt_num").append(oNum);
 																
																	console.log($(this).parent().parent("#person_12").data());
																	console.log(o.dataset);
																	console.log("allnum:"+ allnum);
																	}
																}
															
																
																
																
																
																
																
																
																});
																
																let seats1="${seat.seat}";
																console.log(seats1);
																
																var seats=(seats1).split(',')
																console.log(seats);
// 																for(i=0; i<seats.length; i++){
// 																	var seatsreal${i}= seats[i];
// 																	console.log(seatsreal${i});
// 																}
																
															
		 										        		
															    for (let i = 0; i < 9; i++) {
															       
															        for (let j = 0; j < 10 ; j++) {
															        	var row="";
															        	var a="";
															        	let left= 21 + (j * 25.52);
															        	let top = 26 + (i * 26);
															        	if (i === 0) {
																            row = "A";
																        } else if (i === 1) {
																        	row =  "B" ;
																        } else if (i === 2) {
																        	row =  "C" ;
																        } else if (i === 3) {
																        	row =  "D" ;
																        } else if (i === 4) {
																        	row =  "E" ;
																        } else if (i === 5) {
																        	row =  "F" ;
																        } else if (i === 6) {
																        	row =  "G" ;
																        } else if (i === 7) {
																        	row =  "H" ;
																        } else if (i === 8) {
																        	row =  "I" ;
																        } else if (i === 9) {
																        	row =  "J" ;
																        }
															        	if(j==0){
															        		a+='<span class="seat_tit" style="left: -30px; top:'+top+'px">'+row+'</span>';
															        	}else{
					 										        		var setS = row+j;
					 										        		
					 										        		if(seats.find(element => element == setS) != null){
															        		a+='<a href="javascript:void(0);" alt="좌석 번호:'+row+j + '일반석" class="sel completed" block-code="p0" data-seat="'+setS+'"'; 
															        		a+='style="left: '+left+'px; top: '+top+'px;"><span class=" f1 bland" style="top: 0px;">'+j+'</span>';
																			a+='</a>'
					 										        		}else{
					 										        			a+='<a href="javascript:void(0);" alt="좌석 번호:'+row+j + '일반석" class="sel " block-code="p0" data-seat="'+setS+'"'; 
																        		a+='style="left: '+left+'px; top: '+top+'px;"><span class=" f1" style="top: 0px;">'+j+'</span>';
																				a+='</a>'
					 										        		}
															        	}
															        	$('.seat_area').append(a);
															        	
															        	sel=document.querySelectorAll(".sel");
	// 															        remainSeat.innerHTML = sel.length;
	// 															        allSeat.innerHTML = sel.length;	
	
															        }
															        
															    }
																$(document).on("click",".sel", function(e){
																	console.log("---"+allnum);
																	var seat= $(this).data("seat");
																	seatsArray = seatsArray.filter(
																            (element, index) => seatsArray.indexOf(element) != index
																        );
																	if($(this).hasClass('completed')){
																		alert("이미 예약된 좌석입니다.");
																		return;
																	}else if($(this).hasClass('on')){
																		$(this).removeClass('on');
																		on = document.querySelectorAll('.on');
																		var seat= $(this).data("seat");
																		seatsArray.splice(seatsArray.indexOf(seat), 1);
// 																		 for(i=0; i<on.length; i++){
// 																			 console.log(on[i].dataset.seat);
// 																			 seatsArray.push(on[i].dataset.seat);
// 																		 }
															            console.log(seatsArray+"aaa");
																		$(this).removeClass('no_select');
																		$(this).siblings().removeClass('no_select');
																	}else{
																		
																		on = document.querySelectorAll('.on');
																		if(allnum==0){
																			alert("인원을 선택해주세요");
																			$(this).removeClass('on');
																			
																			return;
																		}
																		else{ 
																																			
																		$(this).addClass(' on');
																		console.log(seat+"bbbb");
																		
																		on = document.querySelectorAll('.on');
																		
	// 																	seatsArray.push(seat);
	// 																	alert(seatsArray.length);
	// 																     alert(seatsArray);
																			if(on.length==allnum && allnum != 0){
																			on = document.querySelectorAll('.on');
																			noton = document.querySelectorAll('.seat_area> a:not(.on)') 
// 																			var a=document.querySelectorAll('a');
// 																			for(i=0; i<noton.length; i++){
// 																			noton[i].classList = 'sel no_select';
																			 
// 																			}
																			$('.seat_area').children().not('li .on').addClass('no_select');
// 																			$(this).sibsling().not(".completed").addClass('')
																			
// 																			$('.sel').addClass('no_select');
																			
// 																			alert(on[0].dataset.seat +"//"+on[1].dataset.seat);
	// 																		alert(a);
	// 																		alert(on.forEach.data+"qwe")
																			 for(i=0; i<on.length; i++){
																				 console.log(on[i].dataset.seat);
																				 seatsArray.push(on[i].dataset.seat);
																			 }
																			
// 																			 alert(seatsArray.length);
// 																		     alert(seatsArray);
	// 																	        //좌석번호의 innerHTML 설정
	// 																	        selectedSeats.innerHTML = seatsArray;
	// 																	        reserveNumber.innerHTML = seatsArray.length;
	// 																	        remainSeat.innerHTML = seat.length - seatsArray.length;
																																						
																			}
																			if(on.length>allnum){
																				alert("최대 인원을 선택했습니다.");
																				$(this).removeClass('on');
																				
																				console.log(seat+"eeeee");
																				return;
																			}
																		
																		}
// 																		else if(on.length>allnum){
// 																			alert("최대 인원을 선택했습니다.");
// 																			$(this).removeClass('on');
																			
// 																			console.log(seat+"eeeee");
// 																			return;
																		}
																		
																		
																			
																		
																		
																		
																	
																	
																       
																	
																	
																});
																
																$(".btn_col1").click("on",function(){
																	 var timeStampInMs = window.performance && 
												                        window.performance.now && 
												                        window.performance.timing && 
												                        window.performance.timing.navigationStart ? window.performance.now() + 
												                        window.performance.timing.navigationStart : Date.now();
																	console.log(seatsArray.length);
																	
																	var mname = "${allinfo.mname}";
																	sid.value = ${allinfo.sid};
																	selectedSeat.value = seatsArray;
																	remainSeat.value = (${allinfo.remainseat} - seatsArray.length);
																	reserveTimestamp.value = Number(timeStampInMs);
																	reserveDate.value = Date();
																	var resd = moment().format("YYYY-MM-DD ddd hh분 mm시")
																	console.log(remainSeat.value);
																	alert("예약된영화이름:"+mname+" 좌석: "+selectedSeat.value + "  예약시간: "+ resd + "  예약스탬프: "+reserveTimestamp.value
																			+"남은좌석"+remainSeat.value+"sid"+sid.value);
																	alert("결제창으로 이동");
																	reserveForm.submit();
																});
																
															
						</script>
	</div>
</body>
</html>