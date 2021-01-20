<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="top.jsp"%>
<script>
<%if(session.getAttribute("getMember")==null){%>
 window.location.href("login.do")
 <%}%>
 
</script>
<table width="100%" border="1">
 <tr>
  <td>
   <table>
    <tr>
     <td>
     <br>
      ${sessionScope.getMember.fname}${sessionScope.getMember.name}님
     </td>
    </tr>
    <tr>
     <td>
      친구
     </td>
    </tr>
    <tr>
     <td>
      메세지
     </td>
    </tr>
   </table>
  </td>
  
  
  
  
  
  <td>
   메인 뉴스피드<br>
   <table align="center">
   <tr>
    <td>
  프로필이미지 <input type="text" value="${sessionScope.getMember.name}님 무슨생각을 하고 계신가요?" readonly
   onclick="window.open('member_input.do','', 'width=570, height=350, resizable = no, scrollbars = no')">
    </td>
  </tr>
   <tr>
    <td>
     사진/동영상
    </td>
    <td>
     기분/활동
    </td>
   </tr>
  </table>
  </td>
  
  
  
  
  
  
  <td>
   광고판
  </td>
 </tr>
</table>
<%@ include file="bottom.jsp"%>