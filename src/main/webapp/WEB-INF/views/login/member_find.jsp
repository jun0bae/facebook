<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form name="h" action="login_ok.do" method="post">
<table width="70%">
 <tr>
  <td width="70%">
   FACEBOOK
  </td>
  <td>
   �̸���<br>
   <input type="text" name="email"><br> 
  </td>
  <td>
   ��й�ȣ<br>
   <input type="password" name="password"><br>
   <a href="member_find.do">������ �����̳���?</a>
  </td>
  <td>
  <input type="submit" value="�α���">
  </td>
 </tr>
</table>
</form>
</div>
<br><br><br><br><br>
<form name="f" action="member_find.do" method="post">
<div align="center">
<table>
 <tr>
  <td>
  ���� ã��
  </td>
 </tr>
 <tr>
  <td>
   <input type="text" name="email">
  </td>
 </tr>
 <tr>
  <td align="right">
   <input type="submit" value="�˻�">
   <button type="button" onclick="history.back()">���</button>
  </td>
  </tr>
</table>
</div>
</form>
</body>
</html>