<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			#div1{margin: 0 auto; width: 1150px;}
		</style>
		<style>
			.div2{border-top : 1px solid #d3d3d3; float: left; margin:0 10px 0 10px;}
		</style>
		<style>
			h1{margin-top:40px; margin-bottom:50px; font-size:40px; text-align: center;}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<c:if test="${map.chk==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 정보가 수정되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${map.chk!=1 && map.chk!=null && map.chk!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 정보가 수정되지 않았습니다.");
			});
		</script>
		</c:if>
		<c:if test="${map.chk2==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 이미지가 수정되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${map.chk2!=1 && map.chk2!=null && map.chk2!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 이미지가 수정되지 않았습니다.");
			});
		</script>
		</c:if>
		<c:if test="${map.chk3==1 }">
		<script>
			$(document).ready(function() {
				alert("영화 선호도가 수정되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${map.chk3!=1 && map.chk3!=null && map.chk3!='' }">
		<script>
			$(document).ready(function() {
				alert("영화 선호도가 수정되지 않았습니다.");
			});
		</script>
		</c:if>
		
		<script>
			function modifysavedata(){
				$("form").attr("action","/modifysavedata");
				document.form.submit();
			}
			
		</script>
		<script>
			function modifyactorsavedata(){
				$("form").attr("action","/modifyactorsavedata");
				document.form.submit();
			}
		</script>
	</head>
	<body>
		<!-- 영화정보 -->
		<div id="div1">
		
		<h1>영화수정</h1>
		<div class="div2">
		<form action="updatemovie" method="post" name="form" enctype="multipart/form-data">
		<h3>영화정보수정</h3>
		<input type="hidden" name="mid" id="mid" value="${map.moviedto.mid }">
		<input type="hidden" name="dsavepid" id="dsavepid" value="${map.moviedto.dsavepid }">
		<input type="hidden" name="asavepid" id="asavepid" value="${map.moviedto.asavepid }">
		<input type="hidden" name="dsavepidmodify" id="dsavepidmodify" value="${dsavepidmodify }">
		<input type="hidden" name="asavepidmodify" id="asavepidmodify" value="${asavepidmodify }">
		
		<label>영화이름:</label>
		<input type="text" name="mname" id="mname" value="${map.moviedto.mname }"><br>
		<label>장르:</label>
		<input type="text" name="genre" id="genre" value="${map.moviedto.genre }"><br>
		<label>평점:</label>
		<input type="text" name="grade" id="grade" value="${map.moviedto.grade }"><br>
		<label>영화정보:</label><br>
		<textarea rows="25" cols="50" name="info" id="info">${map.moviedto.info }</textarea><br>
		<label>저장된감독이름:</label>
		<input type="text" name="director" id="director" value="${map.moviedto.director }" readonly><br>
		<label>저장된출연배우:</label>
		<input type="text" name="actor" id="actor" value="${map.moviedto.actor }" readonly><br>
		<label>수정할감독이름:</label>
		<input type="text" name="modifydirector" id="modifydirector" value="${modifydirector }" readonly>
		<button type="button" onclick="modifysavedata()" style="cursor: pointer;">감독검색</button>
		<br>
		<label>수정할출연배우:</label>
		<input type="text" name="modifyactor" id="modifyactor" value="${modifyactor }" readonly>
		<button type="button" onclick="modifyactorsavedata()" style="cursor: pointer;">배우검색</button>
		<br>
		<label>기존포스터:</label>
		<input type="text" name="poster" id="poster" value="${map.moviedto.poster }" readonly><br>
		<label>수정할포스터:</label>
		<input type="file" name="file"><br>
		<label>예매율:</label>
		<input type="text" name="mrate" id="mrate" value="${map.moviedto.mrate }"><br>
		<label>관객수:</label>
		<input type="text" name="attendance" id="attendance" value="${map.moviedto.attendance }"><br>
		<label>영화나이제한:</label>
		<input type="text" name="age" id="age" value="${map.moviedto.age }"><br>
		<label>상영시간:</label>
		<input type="number" name="playtime" id="playtime" value="${map.moviedto.playtime }"><br>
		<label>기존오프닝날짜:</label>
		<input type="hidden" name="openingdate" id="openingdate" value="${map.moviedto.openingdate }" readonly>
		<input type="text" name="" id="" value="<fmt:formatDate value='${map.moviedto.openingdate }' pattern="YYYY-MM-dd" />" readonly><br>
		<label>수정할오프닝날짜:</label>
		<input type="date" name="openingdate2" id="openingdate2"><br>
		<label>기존마감날짜:</label>
		<input type="hidden" name="endingdate" id="endingdate" value="${map.moviedto.endingdate }" readonly>
		<input type="text" name="" id="" value="<fmt:formatDate value='${map.moviedto.endingdate }' pattern="YYYY-MM-dd" />" readonly><br>
		<label>수정할마감날짜:</label>
		<input type="date" name="endingdate2" id="endingdate2"><br>
		<button type="submit">전송</button>
	</form>
	</div>
	<!-- 영화이미지 -->
	<div class="div2">
		<form action="updatemovieimg" method="post" name="form1" enctype="multipart/form-data">
		<h3>영화이미지수정</h3>
		<input type="hidden" name="mid" value="${map.moviedto.mid }">
		<label>영화이름:</label>
		<input type="text" name="mname" value="${map.moviedto.mname }" readonly><br>
		
		<label>저장된스와이퍼이미지1:</label>
		<input type="text" name="swiperimg1" value="${map.movieimgdto.swiperimg1 }" readonly><br>
		<label>수정할스와이퍼이미지1:</label>
		<input type="file" name="swiperimg11"><br>
		<label>저장된스와이퍼이미지2:</label>
		<input type="text" name="swiperimg2" value="${map.movieimgdto.swiperimg2 }" readonly><br>
		<label>수정할스와이퍼이미지2:</label>
		<input type="file" name="swiperimg22"><br>
		<label>저장된스와이퍼이미지3:</label>
		<input type="text" name="swiperimg3" value="${map.movieimgdto.swiperimg3 }" readonly><br>
		<label>수정할스와이퍼이미지3:</label>
		<input type="file" name="swiperimg33"><br>
		<label>저장된트레일러이미지1:</label>
		<input type="text" name="trailer1" value="${map.movieimgdto.trailer1 }" readonly><br>
		<label>수정할트레일러이미지1:</label>
		<input type="file" name="trailer11"><br>
		<label>저장된트레일러이미지2:</label>
		<input type="text" name="trailer2" value="${map.movieimgdto.trailer2 }" readonly><br>
		<label>수정할트레일러이미지2:</label>
		<input type="file" name="trailer22"><br>
		<label>저장된트레일러이미지3:</label>
		<input type="text" name="trailer3" value="${map.movieimgdto.trailer3 }" readonly><br>
		<label>수정할트레일러이미지3:</label>
		<input type="file" name="trailer33"><br>
		<label>저장된포스터이미지1:</label>
		<input type="text" name="poster1" value="${map.movieimgdto.poster1 }" readonly><br>
		<label>수정할포스터이미지1:</label>
		<input type="file" name="poster11"><br>
		<label>저장된포스터이미지2:</label>
		<input type="text" name="poster2" value="${map.movieimgdto.poster2 }" readonly><br>
		<label>수정할포스터이미지2:</label>
		<input type="file" name="poster22"><br>
		<label>저장된포스터이미지3:</label>
		<input type="text" name="poster3" value="${map.movieimgdto.poster3 }" readonly><br>
		<label>수정할포스터이미지3:</label>
		<input type="file" name="poster33"><br>
		<label>저장된포스터이미지4:</label>
		<input type="text" name="poster4" value="${map.movieimgdto.poster4 }" readonly><br>
		<label>수정할포스터이미지4:</label>
		<input type="file" name="poster44"><br>
		
		<label>저장된트레일러동영상1:</label>
		<input type="text" name="trailervideo1" value="${map.movieimgdto.trailervideo1 }" readonly><br>
		<label>수정할트레일러동영상1:</label>
		<input type="file" name="trailervideo11"><br>
		<label>저장된트레일러동영상2:</label>
		<input type="text" name="trailervideo2" value="${map.movieimgdto.trailervideo2 }" readonly><br>
		<label>수정할트레일러동영상2:</label>
		<input type="file" name="trailervideo22"><br>
		<label>저장된트레일러동영상3:</label>
		<input type="text" name="trailervideo3" value="${map.movieimgdto.trailervideo3 }" readonly><br>
		<label>수정할트레일러동영상3:</label>
		<input type="file" name="trailervideo33"><br>
		
		<button type="submit">전송</button>
		</form>
		</div>
	<!-- 영화 선호도 -->
	<div class="div2">
		<form action="updatemoviepreference" method="post" name="form2">
		<h3>선호도수정</h3>
		<input type="hidden" name="mid" value="${map.moviedto.mid }">
		<label>영화이름:</label>
		<input type="text" name="mname" value="${map.moviedto.mname }" readonly><br>
		
		<label>남성선호도:</label>
		<input type="number" name="man" step="0.01" value="${map.predto.man }"><br>
		<label>여성선호도:</label>
		<input type="number" name="woman" step="0.01" value="${map.predto.woman }"><br>
		<label>10대선호도:</label>
		<input type="number" name="age10" step="0.01" value="${map.predto.age10 }"><br>
		<label>20대선호도:</label>
		<input type="number" name="age20" step="0.01" value="${map.predto.age20 }"><br>
		<label>30대선호도:</label>
		<input type="number" name="age30" step="0.01" value="${map.predto.age30 }"><br>
		<label>40대선호도:</label>
		<input type="number" name="age40" step="0.01" value="${map.predto.age40 }"><br>
		
		<button type="submit">전송</button>
		</form>
		</div>
		</div>
	
	</body>
</html>