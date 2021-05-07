<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<%String admin="admin";
      if(admin.equals(session.getAttribute("user_id"))){%>
         <script type="text/javascript">
            alert('관리자 메뉴에 접근합니다');
         </script>
      <%}else{%>
         <script type="text/javascript">
            alert('허용된 접근이 아닙니다');
            location.href="/main"
         </script>
      <%} %>
		<meta charset="UTF-8">
		<title>관리자 메뉴</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
         function changeIframeUrl(url){
            $('#iframe_admin').attr('src', url);
         }
      </script>

      <link rel="stylesheet" type="text/css" href="css/admin_menu.css?v=Y" />      
      <script type="text/javascript">
         function memberDelete(){
            alert('회원삭제')
         }
      </script>
   </head>
   <body>
      <h2><a href="/main">메인</a>/관리자 메뉴</h2>
       <div id=top_banner>
         <ul id="admin_menu">
            <li><h3><A onclick="changeIframeUrl('/memberControl')">회원관리</A></h3></li>
            <li><h3><A onclick="changeIframeUrl('/moviedeleteinfo')">영화관리</A></h3></li>
            <li><h3><A onclick="changeIframeUrl('/movieinsertall')">영화등록</A></h3></li>
            <li><h3><A onclick="changeIframeUrl('/dec_list')">신고명단</A></h3></li>
            <li><h3><A onclick="changeIframeUrl('/moviepersonlist')">영화관계자</A></h3></li>
            <li><h3><A onclick="changeIframeUrl('/moviepersonform')">관계자등록</A></h3></li>
         </ul>
      </div>
      <div id="iframe">
         <iframe src="" width="1750px;" height="2000px;" id="iframe_admin"></iframe>
      </div> 
   </body>
</html>