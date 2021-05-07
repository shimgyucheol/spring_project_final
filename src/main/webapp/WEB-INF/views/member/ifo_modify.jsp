<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<head>
	<%if(session.getAttribute("login_flag")!="succes"){%>
		<script type="text/javascript">
			alert('로그인이 되어있지 않습니다');
			location.href="/login"
		</script>
	<%}%>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
	
	<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/common.css?v=202104060355">
	<!-- 폰트 -->
    <%System.out.println(session.getAttribute("user_id")); %>
    <%System.out.println(session.getAttribute("user_email")); %>
    <style type="text/css">
    	body{background-color: rgb(245,245,245);}
    	#form{margin: 0 auto; text-align: center;}
    	.lead{text-align: center; }
    	img{display: block; margin: 0 auto; width:100px ;height:100px; margin-top: 50px;}
    	.mb-3{margin: 0 auto; width: 700px; height: 70px; ;}
    	.mb-input{border-radius: 5px; border: 1px solid #dedede; }
    	div{margin: 0 auto;}
    	ul{list-style: none; padding: 0; margin: 0 auto;}
    	li{ display: inline-block; margin: 0 auto; color: black;}
    	a:link {text-decoration: none; color: black;}
		a:visited {text-decoration: none; color: black;}
		a:active {text-decoration: none; color: black;}
		a:hover {text-decoration: none; color: black;}
		#email_cer:link {text-decoration: none; color: black;}
		#email_cer:visited {text-decoration: none; color: black;}
		#email_cer:active {text-decoration: none; color: black;}
		#email_cer:hover {text-decoration: none; color: black;}
		.mb_button:hover{cursor: pointer;}
		.gender:hover{cursor: pointer;}
		label{text-align: left; }
		#address_btn{ width: 200px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white; }
		#address_btn:hover{cursor: pointer;}
		.gender_label:hover{cursor: pointer;}
		.mb_button{margin: 0 auto;}
		#IDCHK_btn:hover{cursor: pointer;}
		#emailchk_sub:hover{cursor: pointer;}
		#emailchk_btn{cursor: pointer;}
		#IDCHK_btn{margin-left: 15px; width: 70px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white;}
		#emailchk_btn{margin-left: 5px; width: 100px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white;}
		#emailchk_sub{width: 45px; height: 35px; background-color:#FFA500; border-radius: 5px; border:0; outline:0; color: white;}
		#emailchkcer_btn{margin-left: 5px; width: 70px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white; margin-top: 5px;}
		#emailchkcer_btn:hover{cursor: pointer;}
    </style>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!--다음 스크립트 로딩-->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		function modify_chk(){
			var nameCheck = /^[가-힣]{2,4}$/; //이름
			var pwCheck = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; //비밀번호
			
			//비밀번호 공백
			if($("#pw").val() == ""){
		        alert("비밀번호 입력바람");
		        $("#pw").focus();
		        return false;
		     }
			
			//비밀번호 일치 검사
			if($("#pw").val() != ($("#pw2").val())){ 
			      alert("비밀번호가 틀렸습니다");
			      $("#pw").focus();
			      return false;
			 }

			//이름 공백 확인
			if($("#name").val() == ""){
		        alert("이름 입력바람");
		        $("#name").focus();
		        return false;
		      }
			
			//우편번호 공백
			if($("#addr1").val() == ""){
		        alert("우편번호 입력바람");
		        $("#addr1").focus();
		        return false;
		      }
			
			//상세주소 공백
			if($("#addr2").val() == ""){
		        alert("상세주소 입력바람");
		        $("#addr2").focus();
		        return false;
		      }
			
			//비밀번호 유효성검사
			if(!pwCheck.test($("#pw").val())){
		        alert("비밀번호형식에 맞게 입력해주세요");
		        $("#pw").val("");
		        $("#pw").focus();
		        return false;
		      }
			
			//이름 유효성검사
			if(!nameCheck.test($("#name").val())){
		        alert("이름형식에 맞게 입력해주세요");
		        $("#name").val("");
		        $("#name").focus();
		        return false;
		      }
			$('#modify_form').submit();
			}
		</script>
</head>

<body>
    <div class="container">
        <div class="py-5 text-center" style=" width: 700px;border-bottom:0.1px solid #dedede">
            <a href="/main"><img class="d-block mx-auto mb-4" src="http://localhost:8000/images/logo/logo123.png" alt="" width="72" height="72"></a>
            <h2 class="lead">회원정보수정</h2>
            <br>
            <!-- <p class="lead">롯데시네마에 회원가입을 하시면 좀더 다양한 혜택을 받으실수 있습니다</p> -->
            <br>
        </div>
        <br>
        <div class="col-md-12 order-md-1">
            <form action="/modifyChk" method="post" id="modify_form" name="modify_form">
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; text-align: left;">
                    <label for="username">아이디</label>
                        <input type="text" id="id" name="id" placeholder="영대소문자와 숫자를 이용해 4~12자리의 아이디를 만드세요" 
                        style="width: 400px; height: 30px; margin-left: 90px;" value="${sessionScope.user_id }" readonly="readonly">
                </div>
				<br>	                
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; text-align: left; height: 100px;">
                    <label>비밀번호</label>
                    <input type="password" id="pw" name="pw" placeholder="영대소문자와 숫자를 이용해 6~20자리 비밀번호를 만드세요"
                     style="width: 500px; height: 30px; margin-left: 70px;"><br>
                     <label>비밀번호 확인</label>
                    <input type="password" id="pw2" name="pw2" placeholder="비밀번호와 일치하게 입력해주세요" 
                     style="width: 500px; height: 30px; margin-left: 30px; margin-top: 10px;">
                </div>
				<br>
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; text-align: left;">
                    <label for="firstName">이름</label>
                    <input type="text" id="name" name="name" placeholder="이름"
                     style="width: 500px; height: 30px; margin-left: 100px;"
                     value="${sessionScope.user_name }">
                </div>
				<br>
                <div class="mb-3" style="border-bottom:0.1px solid #dedede;text-align: left; height: 70px;">
                    <label for="email">이메일</label>
                    <input type="email" id="email" name="email" style="width: 400px; height: 30px; margin-left: 80px;"
                    value="${sessionScope.user_email }" readonly="readonly">
                </div>
               
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; height: 180px; text-align: left;">
                    <br>
                    <label>우편번호</label>
                    <input type="text" id="zip" name="post" 
                    style="width: 70px; height: 30px;  margin-left: 65px;" readonly="readonly" placeholder="우편번호 5자리" >
                    <button type="button" style="width:60px; height:32px;" onclick="openZipSearch()" id="address_btn">검색</button><br><br>
                    주소<input type="text" id="addr1" name="addr1" style="width:500px; height:30px; margin-left: 100px;" placeholder="주소"/><br><br>
					상세주소<input type="text" id="addr2" name="addr2" style="width:500px; height:30px; margin-left: 70px;" placeholder="상세한 주소를 입력해주세요"/><br><br>
				<script>
					function openZipSearch() {
						new daum.Postcode({
						oncomplete: function(data) {
						$('[name=post]').val(data.zonecode); // 우편번호 (5자리)
						$('[name=addr1]').val(data.address);
						$('[name=addr2]').val(data.buildingName);
						}
						}).open();
					}
				 </script>		
                </div>
               	<br>
                <div style="margin: 0 auto; width: 700px; height: 70px;">
                <button type="button" id="mb-button" class="mb_button" style="width: 200px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white; margin-right: 30px; margin-left: 140px;" onclick="modify_chk()">
                수정하기
                </button>
                <button type="reset" class="mb_button" style="width: 200px; height: 35px; background-color:#FFA500; border-radius: 5px; border:0; outline:0; color: white;">
                취소하기
                </button>
                </div>
            </form>
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