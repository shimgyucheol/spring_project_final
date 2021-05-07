<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.thm{display: block; overflow:hidden; width:90px; height:90px; border-radius: 50%;}
		</style>
		<style>
			.thm img{width:100%;}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<c:if test="${chk==1 }">
		<script>
			$(document).ready(function() {
				alert("영화관계자 정보가 수정되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk!=1 && chk!=null && chk!='' }">
		<script>
			$(document).ready(function() {
				alert("영화관계자 정보가 수정되지 않았습니다.");
			});
		</script>
		</c:if>
		
	</head>
	<body>
		<h3>영화관계자정보수정</h3>
		<form action="modifymovieperson" method="post" name="form1" enctype="multipart/form-data">
		<input type="hidden" name="savename" value="${dto.name}">
		<label>관계자이름:</label>
		<input type="text" name="name" value="${dto.name }"><br>
		<label>기존관계자이미지파일이름:</label>
		<input type="text" name="img" value="${dto.img }"><br>
		<span class="thm"><img src="${dto.img }"></span>
		<label>수정할관계자이미지파일:</label>
		<input type="file" name="file"><br>
		<label>감독및역할:</label>
		<input type="text" name="director" value="${dto.director }"><br>
		<button type="submit">수정</button>
	</form>
	</body>
</html>