<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<%if(session.getAttribute("login_flag")=="succes"){%>
	<script type="text/javascript">
		alert('로그인 중입니다');
		location.href="/main"
	</script>
	<%}%>
		<meta charset="UTF-8">
		<title>login</title>
		<style type="text/css">
			*{
  margin: 0px;
  padding: 0px;
  text-decoration: none;
  font-family:sans-serif;

}

body {
  background-color: black;
	font-size: 12px;
}

.loginForm {
  position:absolute;
  width:300px;
  height:450px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.loginForm h2{
  text-align: center;
  margin: 30px;
}

.idForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.passForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.id:active{border-bottom: tomato}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:80%;
  height:40px;
  background: linear-gradient(125deg,#cd5c5c,tomato,#b22222);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

.btn:hover {
  background-position: right;
}

.bottomText {
  text-align: center;
}

#video {
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}
.loginForm{
	display: inline-block;
  	animation: fadein 5s;
  	-webkit-animation: fadein 3s; /* Safari and Chrome */
  	animation-fill-mode: forwards;
}



@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

</style>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function loginCheck(){
	     		$.ajax({
					url:"/loginCheck",
	                 type:"get",
	                 data:{
	                    	id:$("#id").val(),pw:$("#pw").val()
	                    },
	                 contentType:"application/json",
	                 success:function(data){
							alert("로그인이 성공하였습니다");
							location.href="/main";
	                 },
	                 error:function(){
	                    alert("에러");
	                 }
	              }); 
	     	}
		</script>
	</head>
	<body>
		<a href="/main"><video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
  		    <source src="http://localhost:8000/video/loginbackground.mp4">
		</video></a>
	    <form action="#" method="post" class="loginForm" name="loginForm" id="loginForm">
	      <h2 style="font-size: 30px; color: tomato">Login</h2>
	      <div class="idForm">
	        <input type="text" class="id" placeholder="ID" id="id" required="required">
	      </div>
	      <div class="passForm">
	        <input type="password" class="pw" placeholder="PW" id="pw" required="required">
	      </div>
	      <button type="button" class="btn" onclick="loginCheck()">
			LOG IN
	      </button>
	      <div class="bottomText">
	        아이디가 없을때 <a href="/join">회원가입</a><br><br>
	        아이디를 잃어버렸을때 <a href="/usersearch">아이디,비밀번호 찾기</a>
	      </div>
	    </form>
	</body>
</html>