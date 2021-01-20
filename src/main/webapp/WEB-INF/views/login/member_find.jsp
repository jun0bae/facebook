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
   이메일<br>
   <input type="text" name="email"><br> 
  </td>
  <td>
   비밀번호<br>
   <input type="password" name="password"><br>
   <a href="member_find.do">계정을 잊으셨나요?</a>
  </td>
  <td>
  <input type="submit" value="로그인">
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
  계정 찾기
  </td>
 </tr>
 <tr>
  <td>
   <input type="text" name="email">
  </td>
 </tr>
 <tr>
  <td align="right">
   <input type="submit" value="검색">
   <button type="button" onclick="history.back()">취소</button>
  </td>
  </tr>
</table>
</div>
</form>
</body>
</html>