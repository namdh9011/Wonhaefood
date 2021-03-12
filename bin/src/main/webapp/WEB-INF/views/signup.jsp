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

/* Add padding to container elements */
.container {
	font-family: 'Sunflower', sans-serif;
	padding: 16px;
	width: 50%;
}

.container2 {
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
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}

.form-group {
	display: inline-block;
}
</style>
<body>
	<center>
	<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
		<div class="container">

			<form action="signup.food" method="post" style="border: 1px solid #ccc" enctype="multipart/form-data">
				<div class="container2">
					<h1>
						회원가입 <img width="50px" height="50px"
							src="resources/img/animat-pencil-color.gif">
					</h1>
					<hr>
					<label for="file"><b>프로필 사진</b></label>
					<br><br>
					<input type="file" name="files">
					<br><br>
					<label for="id" style="font-family: 'Sunflower', sans-serif;"><b>아이디</b></label> <input type="text" placeholder="Enter id" name="id" required>
					<label for="pass"><b>비밀번호</b></label> <input type="password" placeholder="Enter Password" name="pw" required> 
					<label for="name"><b>이 름</b></label> <input type="text" placeholder="Enter Name" name="name" required> 
					<label for="phone"><b>전화 번호</b></label> <input type="text" placeholder="Phone Number" name="phone" required> 
					<label for="allergy"><h4>알러지 정보</h4></label>

					<div class="form-group">
						<div class="col-sm-2 control-label">
							<label id="allergy"></label>
						</div>
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='대두' />대두
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='땅콩' />땅콩
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='우유' />우유
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-2 control-label">
							<label id="allergy"> </label>
						</div>
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='게' />게
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='새우' />새우
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='참치' />참치
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-2 control-label">
							<label id="allergy"> </label>
						</div>
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='연어' />연어
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='쑥' />쑥
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='소고기' />소고기
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-2 control-label">
							<label id="allergy"> </label>
						</div>
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='닭고기' />닭고기
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='돼지고기' />돼지고기
						</div>
						&nbsp;
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='복숭아' />복숭아
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2 control-label">
							<label id="allergy"> </label>
						</div>
						<div class="col-sm-2">
							<input type='checkbox' name='allergy' value='민들레' />민들레
						</div>
					</div>
					
					<br> <br>


					<div class="clearfix">
						<button type="submit" class="signupbtn"
							onclick="location.href='main.food' ">회원가입</button>
						<button type="button" class="cancelbtn"
							onclick="location.href='login.food' ">취 소</button>
					</div>
				</div>
			</form>
		</div>
</body>
</html>