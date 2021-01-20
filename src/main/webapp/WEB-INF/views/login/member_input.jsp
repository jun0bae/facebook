<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
     function input(){
    	alert("계정생성완료!")
    	document.f.submit()
			window.close()
     }
    </script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="f" action="member_input_ok.do" method="post">
<table>
 <tr>
  <td>
  <input type="text" name="fname" placeholder="성" required>  <input type="text" name="name" placeholder="이름" required><br>
  <input type="text" name="email" placeholder="이메일" required><br>
  <input type="password" name="password" placeholder="비밀번호" required><br>
  생일<br>
  <select name="byear">
  <c:forEach var="i" begin="1" end="120">
   <option>${2022-i}</option>
   </c:forEach>
  </select>
  <select name="bmonth">
  <c:forEach var="i" begin="1" end="12">
   <option>${i}</option>
   </c:forEach>
  </select>
  <select name="bday">
  <c:forEach var="i" begin="1" end="31">
   <option>${i}</option>
   </c:forEach>
  </select><br>
  <select name="sex">
   <option>남성</option>
   <option>여성</option>
  </select><br>
  <button type="button" onclick="input()">계정생성</button>
  </td>
 </tr>
</table>
</form>
</body>
</html>