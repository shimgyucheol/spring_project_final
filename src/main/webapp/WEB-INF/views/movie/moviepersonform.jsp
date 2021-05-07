<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<c:if test="${chk==1 }">
		<script>
			$(document).ready(function() {
				alert("영화관계자 정보가 저장되었습니다.");
			});
		</script>
		</c:if>
		<c:if test="${chk!=1 && chk!=null && chk!='' }">
		<script>
			$(document).ready(function() {
				alert("영화관계자 정보가 저장되지 않았습니다.");
			});
		</script>
		</c:if>
	</head>
<body>
	<h3>영화관계자정보등록</h3>
	<form action="insertmovieperson" method="post" name="form1" enctype="multipart/form-data">
		<label>관계자이름:</label>
		<input type="text" name="name"><br>
		<label>관계자이미지파일:</label>
		<input type="file" name="file"><br>
		<label>감독및역할:</label>
		<input type="text" name="director"><br>
		<button type="submit">등록</button>
	</form>
</body>
</html>