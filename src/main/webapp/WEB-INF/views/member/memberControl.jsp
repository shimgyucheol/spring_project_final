<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원관리</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="../css/notice_list.css">
  <style type="text/css">
     td{height: 50px;}
  </style>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript">
     function del_member(id){
        $.ajax({
         url:"/member_del",
           type:"get",
           data:{
              id:id
              },
           contentType:"application/json",
           success:function(data){
            if(data==1){
               alert('정상적으로 삭제하였습니다');
               window.location.reload();
            }else{
               alert('삭제에 실패하였습니다');
            }
           },
           error:function(){
              alert("에러");
           }
        }); 
   }
  </script>
</head>
<body>
<section>
    <h1>회원관리</h1>
    <table>
      <colgroup>
        <col width="5%">
        <col width="5%">
        <col width="7%">
        <col width="10%">
        <col width="10%">
        <col width="5%">
        <col width="10%">
        <col width="15%">
        <col width="23%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>이름</th>
        <th>아이디</th>
        <th>패스워드</th>
        <th>이메일</th>
        <th>생년월일</th>
        <th>성별</th>
        <th>우편번호</th>
        <th>주소</th>
        <th>상세주소</th>
        <th>기능</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach var="dto" items="${map.list }">
      <tr>
        <td>${dto.name }</td>
        <td>${dto.id }</td>
        <td>${dto.pw }</td>
        <td>${dto.email }</td>
        <td>${dto.birthday }</td>
        <td>${dto.gender }</td>
        <td>${dto.post }</td>
        <td>${dto.addr1 }</td>
        <td>${dto.addr2 }</td>
      <td><button onclick="del_member('${dto.id }')" style="margin: 0 auto;">삭제</button></td>
      </tr>
      </c:forEach>
    </table>
  </section>
</body>
</html>