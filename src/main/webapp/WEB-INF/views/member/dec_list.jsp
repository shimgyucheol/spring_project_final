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

</head>
<body>
<section>
    <h1>신고명단</h1>
    <table>
      <colgroup>
        <col width="10%">
        <col width="10%">
        <col width="20%">
        <col width="60%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>번호</th>
        <th>신고자</th>
        <th>ID</th>
        <th>사유</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach var="dto" items="${list }">
      <tr>
        <td>${dto.dec_number }</td>
        <td>${dto.id }</td>
        <td>${dto.dec_id }</td>
        <td>${dto.dec_reason }</td>
      </tr>
      </c:forEach>
    </table>
  </section>
</body>
</html>