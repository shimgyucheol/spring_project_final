<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%if(session.getAttribute("login_flag")!="succes"){%>
	<script type="text/javascript">
		alert('로그인이 되어있지 않습니다');
		location.href="/login"
	</script>
		
	<%}%>
<% session.invalidate(); %>
<script type="text/javascript">
	alert('로그아웃 되었습니다');
	location.href="/main"
</script>
</head>
<body>

</body>
</html>