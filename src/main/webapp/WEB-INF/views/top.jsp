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
   �˻�
   <input type="text" name="search">
   <input type="submit" value="�˻�">
  </td>
  </form>
  <td align="right">
   ${getMember.fname}${getMember.name}�� <a href="logout.do">�α׾ƿ�</a>
  </td>
 </tr>