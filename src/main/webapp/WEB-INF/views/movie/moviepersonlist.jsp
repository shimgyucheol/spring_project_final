<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
		<link rel="stylesheet" href="../css/notice_list.css">
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
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		     function delmovieperson(pid){
		    	 if (confirm("정말 삭제하시겠습니까?") == true){
		    		 $.ajax({
				         url:"/moviepersondelete",
				           type:"get",
				           data:{
				              pid:pid
				              },
				           contentType:"application/json",
				           success:function(data){
				            if(data==1){
				               alert('삭제에 성공하였습니다');
				               window.location.reload();
				            }else{
				               alert('삭제에 실패하였습니다');
				            }
				           },
				           error:function(){
				              alert("에러");
				           }
				        }); 
		    		    

		    		}else{   //취소

		    		    return;

		    		}	 
		   }
		</script>
		<style>
			.thm{display: block; overflow:hidden; width:90px; height:90px; border-radius: 50%;}
		</style>
		<style>
			.thm img{width:100%;}
		</style>
	</head>
	<body>
	<h1>영화관계자관리</h1>
    <table>
      <colgroup>
        <col width="20%">
        <col width="35%">
        <col width="35%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>사진</th>
        <th>이름</th>
        <th>감독및역할</th>
        <th>기능</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach var="dto" items="${list }">
      <tr>
        <td><span class="thm" style="margin: 0 auto;"><img src="${dto.img }"></span></td>
        <td>${dto.name }</td>
        <td>${dto.director }</td>
      <td>
      <button style="margin: 0 auto;"><a href="moviepersonmodifyview?pid=${dto.pid }">수정</a></button>
      <button class="cursor" onclick="delmovieperson('${dto.pid }')" style="margin: 0 auto;">삭제</button>
      </td>
      </tr>
      </c:forEach>
    </table>
	
	
	
	
	</body>
</html>