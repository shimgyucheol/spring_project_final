<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<%if(session.getAttribute("login_flag")=="succes"){%>
	<script type="text/javascript">
		alert('로그인 중입니다');
		location.href="/login"
	</script>
	<%}%>
		<meta charset="UTF-8">
		<title>아이디/비밀번호 찾지</title>
		<link rel="stylesheet" href="https://www.lottecinema.co.kr/NLCHS/Content/css/common.css?v=202104060355">
		<style type="text/css">
			.id_pw_srh li .srh_box {padding:23px 41px 34px}
			.id_pw_srh li .or h2 {margin-bottom:10px;font-size:22px;font-weight:900;color:#da6700}
			.id_pw_srh li .br h2 {margin-bottom:10px;font-size:22px;font-weight:900;color:#816950}
			.id_pw_srh li .srh_box .srh_top {text-align:center;font-size:13px}
			.id_pw_srh li .srh_box .info {margin-top:24px;padding-top:20px;border-top:1px dashed #d2d2d2}
			.id_pw_srh li .srh_box .info p input {width:167px;height:21px;border:1px solid #d4d6d6}
			.id_pw_srh li .or button {display:block;width:145px;margin:26px auto 0;padding:7px 0;border:1px solid #e1660b;background-color:#e27819;font-family:'Malgun Gothic','맑은 고딕';color:#FFFFFF}
			.id_pw_srh li .br button {display:block;width:145px;margin:26px auto 0;padding:7px 0;border:1px solid #6a5845;background-color:#82705e;font-family:'Malgun Gothic','맑은 고딕';color:#FFFFFF}
			ul{list-style:none;}
			a:link {text-decoration: none; color: black;}
			a:visited {text-decoration: none; color: black;}
			a:active {text-decoration: none; color: black;}
			a:hover {text-decoration: none; color: black;}
			.bottom_banner{list-style:none; margin:0; padding:0;}
			.top_menu{list-style:none; margin:0; padding:0;}
			.article_award{height: 10px;}
			#id_btn:hover{cursor: pointer;}
			#pw_btn:hover{cursor: pointer;}
			#pw_sar_btn{display:block;width:145px;margin:26px auto 0;padding:7px 0;border:1px solid #6a5845;background-color:#82705e;font-family:'Malgun Gothic','맑은 고딕';color:#FFFFFF}
			#pw_sar_btn:hover{cursor: pointer;}
		</style>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function id_search(){
				$.ajax({
					url:"/idsearch",
	                 type:"get",
	                 data:{
	                	 name:$("#name").val(),email:$("#id_mail").val(),
	                    },
	                 contentType:"application/json",
	                 success:function(data){
						 alert('아이디를 찾았습니다');
						 alert("아이디:"+data.memberDto.id);
	                 },
	                 error:function(){
	                    alert("가입된 아이디가 없습니다");
	                 }
	              }); 
			}
			

			function pw_search(){
				$.ajax({
					url:"/pwsearch",
	                 type:"get",
	                 data:{
	                	 id:$("#id").val(),pw_mail:$("#pw_mail").val(),
	                    },
	                 contentType:"application/json",
	                 success:function(data){
						 alert('회원정보를 찾았습니다. 비밀번호를 변경 시켜주세요');
						 $("#pw_form").append("<label>비밀번호 변경</label><br><input type='password' name='pw' id='pw' style='width:350px' placeholder='영대소문자와 숫자를 이용해 6~20자리 비밀번호를 만드세요'>");
						 $("#pw_form").append("<button type='button' onclick='pw_change()' id='pw_sar_btn'>비밀번호 변경</button>");
						 $("#id").attr('readonly', true);
						 $("#pw_mail").attr('readonly', true);
	                 },
	                 error:function(){
	                    alert("가입된 아이디가 없습니다");
	                 }
	              }); 
			}
			
			function pw_change(){
				var pwCheck = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
				
				//비밀번호 공백
				if($("#pw").val() == ""){
			        alert("비밀번호 입력바람");
			        $("#pw").focus();
			        return false;
			     }

				//비밀번호 유효성검사
				if(!pwCheck.test($("#pw").val())){
			        alert("비밀번호형식에 맞게 입력해주세요");
			        $("#pw").val("");
			        $("#pw").focus();
			        return false;
			      }
				
				$.ajax({
					url:"/pwchange",
	                 type:"get",
	                 data:{
	                	 id:$("#id").val(),pw:$("#pw").val(),
	                    },
	                 contentType:"application/json",
	                 success:function(data){
						if(data==1){
							alert('비밀번호 변경이 완료 되었습니다');
							location.href="/login"
						}else{
							alert('비밀번호 변경에 실패하였습니다');
						}
	                 },
	                 error:function(){
	                    alert("가입된 아이디가 없습니다");
	                 }
	              }); 
			}
			
		</script>
	</head>
	<body>
		<div id="wrap">
	<div class="sub_top" style="widows: 1000px;">
		<div class="location" style="float: left;"><!-- <a href="/main"><img src="http://localhost:8282/images/logo/logo123.png" style="width: 100px; height: 100px;"></a> -->
		<p><a href="/main">메인메뉴</a>/회원관리<strong>ID/비밀번호 찾기</strong></p></div>
	</div>
	<div class="content"><br>
		<div class="agree">
			<ul class="id_pw_srh">
				<li>
					<div class="srh_box or" style="widows: 100px;">
						<div class="srh_top">
							<h2>ID찾기</h2>
							내정보에 등록한 정보로<br /> 아이디를 찾을 수 있습니다.
						</div>
						<br>
						<div class="info" style="width: 300px; margin: 0 auto;">
							<form name="id_form" method="post" action="#">
									<p><label for="name" style="margin-left: 10px;">이름</label> <input type="text" name="name" id="name" style="margin-left: 30px;"></p>
									<p><label for="mail" style="margin-left: 10px;">이메일</label> <input type="text" name="id_mail" id="id_mail" style="margin-left: 15px;"></p>
									<button type="button" onclick="id_search()" id="id_btn">찾기</button>
							</form>
						</div>
					</div>
				</li>
				<br>
				<br>
				<br>
				<li>
					<div class="srh_box br">
						<div class="srh_top">
							<h2>비밀번호 찾기</h2>
							내정보에 등록한 정보로<br> 비밀번호를 재설정할 수 있습니다.
						</div>
						<br>
						<div class="info" style="width: 300px; margin: 0 auto;">
							<form name="pw_form" id="pw_form" method="post" >
									<p><label for="pw_name" style="margin-left: 10px;">ID</label> <input type="text" name="id" id="id" style="margin-left: 40px;"></p>
									<p><label for="pw_mail" style="margin-left: 10px;">이메일</label> <input type="text" name="pw_mail" id="pw_mail" style="margin-left: 10px;"></p>
									<button type="button" onclick="pw_search()" id="pw_btn">조회</button>
							</form>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

	<!-- 하단 배너 -->
	    <div id="footer_section" class="footer" style="position: relative; z-index:3;">
		<div class="inner" style="position: relative; z-index: 1;" >
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
				<span class="bar">고객센터 1544-8855</span><br><span>대표이사 기원규</span><span
					class="bar">사업자등록번호 313-87-00979</span><span class="bar">통신판매업신고번호 제1184호</span><span
					class="bar">개인정보 보호 최고 책임자 김무성</span>
			</div>
			<p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p>
		</div>
		
	</div>

	</body>
</html>