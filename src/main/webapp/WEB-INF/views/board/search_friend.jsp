<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>친구</title>
</head>
<body>
<table border="1" width="100%">
 <tr>
  <td>
   검색결과<br>
   <c:forEach var="dto" items="${searchList}">
   
   <a href="profile.do?unum=${dto.unum}&search=${dto.name}">${dto.fname}${dto.name}</a><button type="button" onclick="location.href('friend_add.do')">친구추가</button>
   <br>
   
   </c:forEach>
  </td>
  <td>
  <c:if test="${getMemberProfile==null}">
  프로필을 볼 사람을 클릭해주세요
  </c:if>
  <c:if test="${getMemberProfile!=null}">
  <%@ include file="../board/profile.jsp"%>
  </c:if>
  </td>
 </tr>
</table>
</body>
</html>