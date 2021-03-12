<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  -->
	<c:if test="${not empty id }">
	<img style="
	border-image-slice:;
	border-radius: 100px;
	-moz-border-radius: 100px;
	-khtml-border-radius: 100px;
	-webkit-border-radius: 100px;
	width: 40px;
	height:40px;
	"
		src="${img }"/>&nbsp;&nbsp;
	<span style="color:white; font-family: 'Sunflower'">${name } 님 환영합니다!</span>&nbsp;&nbsp;
		<c:if test="${id=='admin'}">
		<button class="btn btn-secondary my-2 my-sm-0" style="font-family: 'Sunflower', sans-serif;"><a href="admin.food" style="color: white">관리자</a></button>&nbsp;&nbsp;
	</c:if>
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'updateForm.food'" style="font-family: 'Sunflower', sans-serif;">마이페이지</button>
&nbsp;&nbsp;
<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'logout.food'" style="font-family: 'Sunflower', sans-serif;">로그아웃</button>
	</c:if>

	<c:if test="${empty id}">
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'login.food'" style="font-family: 'Sunflower', sans-serif;">로그인</button>
	</c:if>
</body>
</html>