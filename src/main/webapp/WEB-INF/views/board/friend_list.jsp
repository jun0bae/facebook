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
   ģ��<br>
   <c:forEach var="dto" items="${friend_list}">
   <a href="friend_list.do?fnum=${dto.fnum}">${dto.fnum}</a>
   </c:forEach>
  </td>
  <td>
  <c:if test="${funum==null}">
  �������� �� ����� Ŭ�����ּ���
  </c:if>
  <c:if test="${funum=null}">
  <%@ include file="../board/profile.jsp"%>
  </c:if>
  </td>
 </tr>
</table>
</body>
</html>