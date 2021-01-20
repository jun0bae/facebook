<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
</head>
<body>
<li><a href="home.do">facebook</a></li>
<form name="f" action="login_ok.do" method="post">
<table>
 <tr>
  <td>
   <input type="text" name="email"><br>
   <input type="password" name="password"><br>
   <input type="submit" value="로 그 인"><br>
   <a href="member_find.do">비밀번호를 잊어버리셨습니까?</a>
  </td>
 </tr>
 <tr>
  <td>
   <button type="button" onclick="window.open('member_input.do')">계정 만들기</button>
  </td>
 </tr>
</table>
</form>
</body>
</html>