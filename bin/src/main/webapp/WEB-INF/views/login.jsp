<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">



<style>
body {
	font-family: 'Sunflower', sans-serif;
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

container {
	padding: 50px;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	font-family: 'Sunflower', sans-serif;
	border-radius: 15px;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

.signupbtn2 {
	background-color: blue;
}
.signupbtn3 {
	background-color:maroon;
}

/* Add padding to container elements */
.container {
	padding: 16px;
	width: 50%;
}

.container2 {
	font-family: 'Sunflower', sans-serif;
	padding: 16px;
	text-align: left;
}
/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 150px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>

<body>
	<center>
		<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="container">

			<form action="loginProcess.food" style="border: 1px solid #ccc"
				method="post">
				<h1>
					로그인 페이지<img width="50px" height="50px"
						src="resources/img/animat-tent-color.gif">
				</h1>
				<p>아래 사항들을 적어주세요.</p>
				<hr>
				<div class="container2">
					<label for="id"><b>아이디</b></label> 
					<input type="text" placeholder="ID" name="id" required> <label for="psw"><b>비밀번호</b></label>
					<input type="password" placeholder="Password" name="pass" required>

					<!-- 
   <form action="loginProcess.cus" method="post" id="f">
		아이디:<input type="text" name="id"><br> 
		패스워드:<input type="password" name="pass"><br> 
		
			<input type="submit" value="확인">
			<input type="reset"value="취소"> 
	</form>
    -->

					<div class="clearfix">
						<button type="submit" class="signupbtn"> 로그인</a> </button>
						<button type="button" class="cancelbtn" onclick="location.href='main.food'">취소</button>
					</div>

					<div>
						<button type="button" class="signupbtn2" onclick="location.href='insertForm.food' "> 회원가입</a> 	</button>
					</div>
					<div>
						<button type="button" class="signupbtn3" onclick="location.href='findPW.food' "> 비밀번호 찾기</a> 	</button>
					</div>


				</div>
			</form>
		</div>
</body>
</html>
