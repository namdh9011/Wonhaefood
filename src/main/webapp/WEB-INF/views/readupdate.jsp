<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<%@ include file="banner.jsp"%>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    </script>
		<form action="adminrequest.food" method="post" enctype="multipart/form-data">
		<div class="site-section mt-5"
			style="font-family: 'Sunflower', sans-serif;">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
					사진: <input type="file" name="files">
						<img src="resources/${b.img }" alt="Image" class="img-fluid"> <br>
						<input type="hidden" name = "img" value = "${b.img}">
						<input type="hidden" name = "id" value = "${id}">
						<input type="hidden" name = "code" value = "${b.code}">
						<table class="table" style="font-family: 'Sunflower', sans-serif;">
							<tr>
								<th>이름</th>
								<th><input name="name" type="text" value="${b.name }" readonly="readonly"></th>
							</tr>
							<tr>
								<th>제조사</th>
								<th><input name="maker" type="text" value="${b.maker }"></th>
							</tr>
							<tr>
								<th>원재료</th>
								<th><textarea name="material" style="width: 100%; height: 100px">${b.material }</textarea></th>
							</tr>
							<tr>
								<th>내용
								</th>
								<th><textarea name="comment" style="width: 100%; height: 100px"></textarea>
								</th>
							</tr>
						</table>
						<button class="btn btn-outline-primary" type="submit">등록 요청하기</button>
					</form>
					</div>
					<div class="col-lg-6 ml-auto">
						<table class="table table-bordered"
							style="font-family: 'Sunflower', sans-serif;">
							<thead>
								<tr>
									<th>영양분</th>
									<th>함량</th>
								</tr>
							</thead>
							<tr>
								<td>총 용량</td>
								<td>${b.supportpereat }</td>
							</tr>
							<tr>
								<td>칼로리</td>
								<td>${b.calory }</td>
							</tr>
							<tr>
								<td>탄수화물</td>
								<td>${b.carbo }</td>
							</tr>
							<tr>
								<td>단백질</td>
								<td>${b.protein }</td>
							</tr>
							<tr>
								<td>지방</td>
								<td>${b.fat }</td>
							</tr>
							<tr>
								<td>당류</td>
								<td>${b.chole }</td>
							</tr>
							<tr>
								<td>나트륨</td>
								<td>${b.natrium }</td>
							</tr>
							<tr>
								<td>포화 지방산</td>
								<td>${b.fattyacid }</td>
							</tr>
							<tr>
								<td>트렌스지방</td>
								<td>${b.transfat }</td>
							</tr>
						</table>
						</p>
					</div>
				</div>
			</div>
		</div>
	<%@ include file="footer.jsp"%>
</body>

</html>