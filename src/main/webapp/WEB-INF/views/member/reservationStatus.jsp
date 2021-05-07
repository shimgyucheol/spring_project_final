<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<%if(session.getAttribute("login_flag")!="succes"){%>
	<script type="text/javascript">
		alert('로그인이 되어있지 않습니다');
		location.href="/login"
	</script>
	<%}%>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원관리</title>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <link rel="stylesheet" href="../css/notice_list.css">
  <link rel="stylesheet" type="text/css" href="css/layout.css?v=Y" />
  <link rel="stylesheet" type="text/css" href="css/content.css?v=Y" />
  <style type="text/css">  

	#absol{position:absolute; width:100%; z-index: 2; 
	height:225px;
	background-color:transparent;
	background:linear-gradient(to bottom, rgba(29,29,31,1) 0%,
	rgba(0,0,0,0) 100%);
	}
	
	ul{list-style: none;}
</style>



  
</head>
<script type="text/javascript">
	function go_back(){
		history.back();
	}
	
	function member_quit(){
		var con_test = confirm("정말로 회원을 탈퇴하실건가요?");
		
		if(con_test == true){
			location.href="/member_quit"
		}else if(con_test == false){
			return false;
		}
	}
</script>
<body>
<h2 style="margin: 10px 10px 10px 10px; display: inline-block;">MY PAGE</h2>
		<div id="header" style="margin: 0 auto;">
			<div id="snbBox" style="text-align: center; width: 620px; margin: 0 auto;">
				<div id="quickmenu" style="width: 620px; margin: 0 auto;">
				<ul style="text-align: center; margin-top: 10px; ">
					<li><a href="/main">MAIN</a></li>
					<li><a href="/login">LOGIN</a></li>
					<li><a href="/logout">LOGOUT</a></li>
					<li><a href="/join">JOIN</a></li>
					<li><a href="#">RESERVATION</a></li>
					<li><a href="/ifo_modify">EDIT</a></li>
					<li><a href="#" onclick="member_quit()">QUIT FROM LOTTE</a></li>
					<li><a href="#" onclick="go_back()">BACK WINDOW</a></li>
					<c:if test="${sessionScope.user_id eq 'admin'}">
						<li><a href="/adminMenu">관리자 메뉴</a></li>
					</c:if> 
				</ul>

			</div>
		</div>
	</div>
<section>
    <h1>예매현황</h1>
    
    <table style="margin-top: 10px;">
      <colgroup>
        <col width="11%">
        <col width="11%">
        <col width="11%">
        <col width="21%">
        <col width="35%">
        <col width="11%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>예약번호</th>
        <th>이름</th>
        <th>아이디</th>
        <th>예약 영화</th>
        <th>예매일</th>
        <th>예매 좌석</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach var="dto" items="${list }">
      <tr>
        <td>${dto.rid }</td>
        <td>${dto.name }</td>
        <td>${dto.id }</td>
        <td>${dto.mname }</td>
        <td><fmt:formatDate pattern="yyyy-MM-dd (E)" value="${dto.reservedate}"/></td>
        <td>${dto.seat }</td>
		<td></td>
      </tr>
      </c:forEach>
    </table>
    
  </section>
</body>
</html>