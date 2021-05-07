<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">

<head>
	<%if(session.getAttribute("login_flag")=="succes"){%>
		<script type="text/javascript">
			alert('로그인 중입니다');
			location.href="/login"
		</script>
	<%}%>
    <meta charset="UTF-8">
    <title>회원가입</title>
	
	<link rel="stylesheet"
	href="https://www.lottecinema.co.kr/NLCHS/Content/css/common.css?v=202104060355">
	<!-- 폰트 -->
    
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
		.loader {
        	border: 16px solid #f3f3f3; /* Light grey */
       	 	border-top: 16px solid tomato; /* Blue */
        	border-radius: 50%;
       		width: 120px;
        	height: 120px;
        	animation: spin 2s linear infinite;
        	position: fixed;
          	top: 40%;
          	left: 46.5%;
          	transform:translate(-50%,-50%);
      }

      @keyframes spin {
           0% { transform: rotate(0deg); }
           100% { transform: rotate(360deg); }
      }

    </style>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!--다음 스크립트 로딩-->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- 모달 -->      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- 모달 -->      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- 모달 -->      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	<script type="text/javascript">
			var idoverlap=-1;
			var random_cer_num;
		function join_chk(){
			var idCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //아이디
			var nameCheck = /^[가-힣]{2,4}$/; //이름
			var emailCheck = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i; //이메일
			var pwCheck = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; //비밀번호
			
			//인증번호 체크
			if($("#email_cer").val()==random_cer_num){
				alert('인증되었습니다');
				$("#email_cer").attr('readonly', true);
				$("#email").attr('readonly', true);
			}else{
				alert('인증에 실패하였습니다');
				return false;
			}
			
			//인증번호 공백확인
			if($("#email_cer").val() == ""){
		        alert("인증번호 입력바람");
		        $("#email_cer").focus();
		        return false;
		      }
			
			//아이디 공백확인
			if($("#id").val() == ""){
		        alert("아이디 입력바람");
		        $("#id").focus();
		        return false;
		      }
			
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
			
			//이메일 공백확인			
			if($("#email").val() == ""){
		        alert("이메일 입력바람");
		        $("#email").focus();
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
			
			//생년월일 공백
			if($("#date").val() == ""){
		        alert("생년월일 입력바람");
		        $("#date").focus();
		        return false;
		      }
			
			//성별 체크 확인
			if($("input[name=gender]:radio:checked").length == 0){
	             alert('성별을 선택해주세요');
	             return false;
	           }
			
			//아이디의 유효성 검사
		      if(!idCheck.test($("#id").val())){
		        alert("아이디형식에 맞게 입력해주세요");
		        $("#id").val("");
		        $("#id").focus();
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
			
			//이메일 유효성검사
			 if(!emailCheck.test($("#email").val())){
			        alert("이메일형식에 맞게 입력해주세요");
			        $("#email").val("");
			        $("#email").focus();
			        return false;
			   }
			
			//아이디 중복검사
			if(idoverlap==-1){
	            alert('아이디 중복체크를 해주세요');
	            return false;
	        }
			
			 $('#join_form').submit();
		}//유효성 검사
		
		//아이디 중복확인		
		function id_check(){
			if($("#id").val() == ""){
		        alert("아이디 입력바람");
		        $("#id").focus();
		        return false;
		      }
			$.ajax({
				url:"/idCheck",
                 type:"get",
                 data:{
                    	id:$("#id").val()
                    },
                 contentType:"application/json",
                 success:function(data){
						if(data==1){
							alert('중복된아이디입니다');		
							$("#id").val("");
							return false;
						}else{
							alert('사용가능한 아이디 입니다');		
							$("#id").attr('readonly', true);
							idoverlap=1;
						}
                 },
                 error:function(){
                	 alert('에러');		
                 }
              }); 
		}
		
		//이메일 인증
		function email_check(){
			//이메일 공백확인         
	         if($("#email").val() == ""){
	              alert("이메일 입력바람");
	              $("#email").focus();
	              return false;
	            }
	         
	         $('body').append("<div class='loader'></div>");
			
			$.ajax({
				url:"/email_cer",
				type:"get",
				data:{
					emailAdr:$("#email").val()
				},
				success:function(data){
					$('.loader').fadeOut(0);
					$("#cer_text").text("※인증번호가 발송되었습니다");
					random_cer_num=data.randomNum;
					$("#email").attr('readonly', true);
				},
				error:function(){
					$("#cer_text").text("※인증번호 발송에 실패했습니다");
				}
			
			})
		}
		</script>
</head>

<body>
    <div class="container">
        <div class="py-5 text-center" style=" width: 700px;border-bottom:0.1px solid #dedede">
            <a href="/main"><img class="d-block mx-auto mb-4" src="http://localhost:8000/images/logo/logo123.png" alt="" width="72" height="72"></a>
            <h2 class="lead">회원가입</h2>
            <br>
            <p class="lead">롯데시네마에 회원가입을 하시면 좀더 다양한 혜택을 받으실수 있습니다</p>
            <br>
        </div>
        <br>
        <div class="col-md-12 order-md-1">
            <form action="/joinChk" method="post" id="join_form" name="join_form">
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; text-align: left;">
                    <label for="username">아이디</label>
                        <input type="text" id="id" name="id" placeholder="영대소문자와 숫자를 이용해 4~12자리의 아이디를 만드세요" 
                        style="width: 400px; height: 30px; margin-left: 90px;">
                      	<button type="button" onclick="id_check()" id="IDCHK_btn">중복체크</button>
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
                     style="width: 500px; height: 30px; margin-left: 100px;">
                </div>
				<br>
                <div class="mb-3" style="border-bottom:0.1px solid #dedede;text-align: left; height: 100px;">
                    <label for="email">이메일</label>
                    <input type="email" id="email" name="email" placeholder="이메일 형식 예)lotte@naver.com" 
                    style="width: 400px; height: 30px; margin-left: 80px;">
                    <button type="button" onclick="email_check()" id="emailchk_btn">인증번호 받기</button><br>
                    <input type="tel" id="email_cer" name="email_cer" placeholder="인증번호" 
                    style="width: 200px; height: 30px; margin-left: 132px; margin-top: 5px;" required="required">
                     <br><span id="cer_text" style="color: red; font-size: 10px; margin-left: 130px;"></span>
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
                <div class="mb-3" style="border-bottom:0.1px solid #dedede; text-align: left">
                    <label for="address">생년월일</label>
                    <input type="date" id="birthday" name="birthday"
                    style="width: 500px; height: 30px; margin-left: 65px;">
                </div>
				<br>
				<div class="gender" style="border-bottom:0.1px solid #dedede; width: 700px; text-align: left;" >
					<label style="text-align: left;">성별</label>
					<LABEL style="margin-left: 100PX;" for="gender1" class="gender_label">남성</LABEL><input type="radio" class="gender" value="남성" name="gender" id="gender1">
					<label style="margin-left: 20px;" for="gender2" class="gender_label">여성</label><input type="radio" class="gender" value="여성" name="gender" id="gender2">
					<br>
					<br>
				</div>
				<br>			
                <div style="margin: 0 auto; width: 700px; height: 70px;">
                <button type="button" id="mb-button" class="mb_button" style="width: 200px; height: 35px; background-color:#4aa8d8; border-radius: 5px; border:0; outline:0; color: white; margin-right: 30px; margin-left: 140px;" onclick="join_chk()">
                가입하기
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