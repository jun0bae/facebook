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
      ${sessionScope.getMember.fname}${sessionScope.getMember.name}��
     </td>
    </tr>
    <tr>
     <td>
      ģ��
     </td>
    </tr>
    <tr>
     <td>
      �޼���
     </td>
    </tr>
   </table>
  </td>
  
  
  
  
  
  <td>
   ���� �����ǵ�<br>
   <table align="center">
   <tr>
    <td>
  �������̹��� <input type="text" value="${sessionScope.getMember.name}�� ���������� �ϰ� ��Ű���?" readonly
   onclick="window.open('member_input.do','', 'width=570, height=350, resizable = no, scrollbars = no')">
    </td>
  </tr>
   <tr>
    <td>
     ����/������
    </td>
    <td>
     ���/Ȱ��
    </td>
   </tr>
  </table>
  </td>
  
  
  
  
  
  
  <td>
   ������
  </td>
 </tr>
</table>
<%@ include file="bottom.jsp"%>