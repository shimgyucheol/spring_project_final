<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원탈퇴</title>
		<%if((int)request.getAttribute("chk")==1){
			session.invalidate();%>
			<script type="text/javascript">
				alert('회원이 정상적으로 삭제되었습니다');
				location.href="/main"
			</script>
		<%}else{%>
			<script type="text/javascript">
				alert('회원탈퇴에 실패하였습니다');
				location.href="/main";
			</script>
		<%} %>
	</head>
	<body>
	
	</body>
</html>