<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<style>
			#div1{margin: 0 auto; width: 1084px;}
		</style>
		<style>
			.div2{border-top : 1px solid #d3d3d3; float: left; margin:0 10px 0 10px;}
		</style>
		<style>
			h1{margin-top:40px; margin-bottom:50px; font-size:40px; text-align: center;}
		</style>
		<c:if test="${chk==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 정보가 저장되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk!=1 && chk!=null && chk!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 정보가 저장되지 않았습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk2==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 이미지가 저장되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk2!=1 && chk2!=null && chk2!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 이미지가 저장되지 않았습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk3==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 선호도가 저장되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk3!=1 && chk3!=null && chk3!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 선호도가 저장되지 않았습니다.");
			});
		</script>
		</c:if>
		<script>
			function savedata(){
				$("form").attr("action","/savedata");
				document.form.submit();
				/* var mname = $('#mname').val();
				var genre = $('#genre').val();
				var grade = $('#grade').val();
				var info =  $('#info').val();
				var director = $('#director').val();
				var dsavepid = $('#dsavepid').val();
				var actor = $('#actor').val();
				var asavepid = $('#asavepid').val();
				location.href="/savedata?mname="+mname+"&genre="+genre+"&grade="+grade+"&info="+info+"&director="+director+"&dsavepid="+dsavepid+"&actor="+actor+"&asavepid="+asavepid */
			}
			
		</script>
		<script>
			function actorsavedata(){
				$("form").attr("action","/actorsavedata");
				document.form.submit();
				/* var mname = $('#mname').val();
				var genre = $('#genre').val();
				var grade = $('#grade').val();
				var info =  $('#info').val();
				var director = $('#director').val();
				var dsavepid = $('#dsavepid').val();
				var actor = $('#actor').val();
				var asavepid = $('#asavepid').val();
				location.href="/actorsavedata?mname="+mname+"&genre="+genre+"&grade="+grade+"&info="+info+"&director="+director+"&dsavepid="+dsavepid+"&actor="+actor+"&asavepid="+asavepid */
			}
			
		</script>
	</head>
	<body>
		<!-- 영화정보 -->
		<div id="div1">
		
		<h1>영화등록</h1>
		<div class="div2">
		<form action="insertmovie" method="post" name="form" enctype="multipart/form-data">
		
		<input type="hidden" name="dsavepid" id="dsavepid" value="${dto.dsavepid}">
		<input type="hidden" name="asavepid" id="asavepid" value="${dto.asavepid}">
		<h3>영화정보등록</h3>
		<label>영화이름:</label>
		<input type="text" name="mname" id="mname" value="${dto.mname}"><br>
		<label>장르:</label>
		<input type="text" name="genre" id="genre" value="${dto.genre}"><br>
		<label>평점:</label>
		<input type="text" name="grade" id="grade" value="${dto.grade}"><br>
		<label>영화정보:</label><br>
		<textarea rows="25" cols="50" name="info" id="info">${dto.info}</textarea><br>
		<label>감독이름:</label>
		<input type="text" name="director" id="director" value="${dto.director }" readonly>
		<button type="button" onclick="savedata()" style="cursor: pointer;">감독검색</button>
		<br>
		<label>출연배우:</label>
		<input type="text" name="actor" id="actor" value="${dto.actor}" readonly>
		<button type="button" onclick="actorsavedata()" style="cursor: pointer;">배우검색</button>
		<br>
		<label>포스터:</label>
		<input type="file" name="file"><br>
		<label>예매율:</label>
		<input type="text" name="mrate" value="${dto.mrate}"><br>
		<label>관객수:</label>
		<input type="text" name="attendance" value="${dto.attendance}"><br>
		<label>영화나이제한:</label>
		<input type="text" name="age" value="${dto.age}"><br>
		<label>상영시간:</label>
		<input type="number" name="playtime" value="${dto.playtime}"><br>
		<label>오프닝날짜:</label>
		<input type="date" name="openingdate2"><br>
		<label>마감날짜:</label>
		<input type="date" name="endingdate2"><br>
		<button type="submit">전송</button>
	</form>
	</div>
	<!-- 영화이미지 -->
	<div class="div2">
		<form action="insertmovieimg" method="post" name="form1" enctype="multipart/form-data">
		<h3>영화이미지등록</h3>
		<label>영화이름:</label>
		<input type="text" name="mname" value="${mname}" readonly><br>
		
		<label>스와이퍼이미지1:</label>
		<input type="file" name="swiperimg1"><br>
		<label>스와이퍼이미지2:</label>
		<input type="file" name="swiperimg2"><br>
		<label>스와이퍼이미지3:</label>
		<input type="file" name="swiperimg3"><br>
		<label>트레일러이미지1:</label>
		<input type="file" name="trailer1"><br>
		<label>트레일러이미지2:</label>
		<input type="file" name="trailer2"><br>
		<label>트레일러이미지3:</label>
		<input type="file" name="trailer3"><br>
		<label>포스터이미지1:</label>
		<input type="file" name="poster1"><br>
		<label>포스터이미지2:</label>
		<input type="file" name="poster2"><br>
		<label>포스터이미지3:</label>
		<input type="file" name="poster3"><br>
		<label>포스터이미지4:</label>
		<input type="file" name="poster4"><br>
		<label>트레일러동영상1:</label>
		<input type="file" name="trailervideo1"><br>
		<label>트레일러동영상2:</label>
		<input type="file" name="trailervideo2"><br>
		<label>트레일러동영상3:</label>
		<input type="file" name="trailervideo3"><br>
		
		<button type="submit">전송</button>
		</form>
		</div>
	<!-- 영화 선호도 -->
	<div class="div2">
		<form action="insertmoviepreference" method="post" name="form2">
		<h3>선호도등록</h3>
		<label>영화이름:</label>
		<input type="text" name="mname" value="${mname}" readonly><br>
		
		<label>남성선호도:</label>
		<input type="number" name="man" step="0.01"><br>
		<label>여성선호도:</label>
		<input type="number" name="woman" step="0.01"><br>
		<label>10대선호도:</label>
		<input type="number" name="age10" step="0.01"><br>
		<label>20대선호도:</label>
		<input type="number" name="age20" step="0.01"><br>
		<label>30대선호도:</label>
		<input type="number" name="age30" step="0.01"><br>
		<label>40대선호도:</label>
		<input type="number" name="age40" step="0.01"><br>
		
		<button type="submit">전송</button>
		</form>
		</div>
		</div>
	
	</body>
</html>