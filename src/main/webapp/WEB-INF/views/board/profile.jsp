<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${getMemberProfile.fname}${getMemberProfile.name}
<a href="profile.do?unum=${getMemberProfile.unum}&search=${search}">
하하하</a>
</body>
</html>