<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
		<link rel="stylesheet" href="../css/notice_list.css">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style type="text/css">
		   td{height: 50px;}
		</style>
		<style>
			*{text-align: center;}
		</style>
		<style>
			a{text-decoration: none; color: white; }
		</style>
		<style>
			.cursor{cursor: pointer;}
		</style>
		<style>
			.thm{display: block; overflow:hidden; width:90px; height:90px; border-radius: 50%;}
		</style>
		<style>
			.thm img{width:100%;}
		</style>
		<script>
			$(document).ready(function(){
				$("input[name=pid]").click(function(){
					if($("input:checkbox[name=pid]:checked").length==2){
						alert("한개만 체크가능합니다.");
						$(this).attr("checked",false);
					}
				})
			});
		</script>
		<script>
			function confirm(){
					if($("input:checkbox[name=pid]:checked").length==0){
						alert("체크를 하세요");
						return false;
					}else{
						document.form.submit();
					}
			}
		</script>
	</head>
	<body>
	<h1>영화관계자리스트</h1>
    <table>
      <colgroup>
        <col width="20%">
        <col width="30%">
        <col width="30%">
        <col width="10%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>사진</th>
        <th>이름</th>
        <th>감독및역할</th>
        <th>선택</th>
        <th>전송</th>
      </tr>
      <!-- 내용부분 -->
      <form action="modifydirectorpersonsave" method="post" name="form">
      <input type="hidden" name="mid" id="mid" value="${moviedto.mid }">
      <input type="hidden" name="mname" id="mname" value="${moviedto.mname }">
      <input type="hidden" name="genre" id="genre" value="${moviedto.genre }">
      <input type="hidden" name="grade" id="grade" value="${moviedto.grade }">
      <input type="hidden" name="info" id="info" value="${moviedto.info }">
      <input type="hidden" name="director" id="director" value="${moviedto.director }">
      <input type="hidden" name="actor" id="actor" value="${moviedto.actor }">
      <input type="hidden" name="poster" id="poster" value="${moviedto.poster }">
      <input type="hidden" name="mrate" id="mrate" value="${moviedto.mrate }">
      <input type="hidden" name="attendance" id="attendance" value="${moviedto.attendance }">
      <input type="hidden" name="age" id="age" value="${moviedto.age }">
      <input type="hidden" name="playtime" id="playtime" value="${moviedto.playtime }">
      <input type="hidden" name="openingdate" id="openingdate" value="${moviedto.openingdate }">
      <input type="hidden" name="endingdate" id="endingdate" value="${moviedto.endingdate }">
      <input type="hidden" name="openingdate2" id="openingdate2" value="${moviedto.openingdate2 }">
      <input type="hidden" name="endingdate2" id="endingdate2" value="${moviedto.endingdate2 }">
      <input type="hidden" name="dsavepid" id="dsavepid" value="${moviedto.dsavepid }">
      <input type="hidden" name="asavepid" id="asavepid" value="${moviedto.asavepid }">
      <input type="hidden" name="dsavepidmodify" id="dsavepidmodify" value="${dsavepidmodify }">
      <input type="hidden" name="asavepidmodify" id="asavepidmodify" value="${asavepidmodify }">
      <input type="hidden" name="modifydirector" id="modifydirector" value="${modifydirector }">
      <input type="hidden" name="modifyactor" id="modifyactor" value="${modifyactor }">
      
      <c:forEach var="dto" items="${list}">
      <tr>
        <td><span class="thm" style="margin: 0 auto;"><img src="${dto.img }"></span></td>
        <td>${dto.name }</td>
        <td>${dto.director }</td>
      <td>
      <input type="checkbox" name="pid" id="pid" value="${dto.pid }">
      </td>
      <td><button type="button" style="margin: 0 auto; cursor: pointer;" onclick="confirm()">등록</button></td>
      </tr>
      </c:forEach>
    </table>
		</form>
	</body>
</html>