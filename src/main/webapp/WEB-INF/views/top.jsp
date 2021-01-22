<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="100%">
 <tr>
 <form name="f" action="search_friend.do" method="post">
  <td>
   <a href="home.do">FACEBOOK</a>
   검색
   <input type="text" name="search">
   <input type="submit" value="검색">
  </td>
  </form>
  <td align="right">
   ${getMember.fname}${getMember.name}님 <a href="logout.do">로그아웃</a>
  </td>
 </tr>