<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<%if((int)request.getAttribute("chk")==1){%>
			<%session.invalidate(); %>
			<script type="text/javascript">
				alert('회원정보가 수정되었습니다 다시 로그인 해주세요');
				location.href="/login"
			</script>
		<%}else{%>
			<script type="text/javascript">
				alert('회원정보 수정에 실패하였습니다');
				location.href="ifo_modify";
			</script>
		<%} %>
	</head>
	<body>
	
	</body>
</html>