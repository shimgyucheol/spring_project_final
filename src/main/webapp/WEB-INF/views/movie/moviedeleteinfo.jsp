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
		     function delmovie(mid){
		    	 if (confirm("정말 삭제하시겠습니까?") == true){
		    		 $.ajax({
				         url:"/moviedelete",
				           type:"get",
				           data:{
				              mid:mid
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
		
	</head>
	<body>
	<h1>영화관리</h1>
    <table>
      <colgroup>
        <col width="20%">
        <col width="35%">
        <col width="35%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>영화이름</th>
        <th>개봉일</th>
        <th>상영종료일</th>
        <th>기능</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach var="dto" items="${list }">
      <tr>
        <td>${dto.mname }</td>
        <td><fmt:formatDate value="${dto.openingdate }" pattern="YYYY-MM-dd"/></td>
        <td><fmt:formatDate value="${dto.endingdate }" pattern="YYYY-MM-dd"/></td>
      <td>
      <button style="margin: 0 auto;"><a href="moviemodifyview?mid=${dto.mid }">수정</a></button>
      <button class="cursor" onclick="delmovie('${dto.mid }')" style="margin: 0 auto;">삭제</button>
      </td>
      </tr>
      </c:forEach>
    </table>
	
	
	
	
	</body>
</html>