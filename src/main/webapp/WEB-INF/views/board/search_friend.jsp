<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ģ��</title>
</head>
<body>
<table border="1" width="100%">
 <tr>
  <td>
   �˻����<br>
   <c:forEach var="dto" items="${searchList}">
   
   <a href="profile.do?unum=${dto.unum}&search=${dto.name}">${dto.fname}${dto.name}</a><button type="button" onclick="location.href('friend_add.do')">ģ���߰�</button>
   <br>
   
   </c:forEach>
  </td>
  <td>
  <c:if test="${getMemberProfile==null}">
  �������� �� ����� Ŭ�����ּ���
  </c:if>
  <c:if test="${getMemberProfile!=null}">
  <%@ include file="../board/profile.jsp"%>
  </c:if>
  </td>
 </tr>
</table>
</body>
</html>