<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="banner.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.collapse {
	padding-right: 100px;
}

#menu ul li {
	vertical-align: middle;
	text-align: center;
}

.contents img {
	width: 350px;
	height: 350px;
}

.drpt {
	overflow: scroll;
	height: 150px;
}
</style>

	<%
		ArrayList<Food> list = (ArrayList<Food>) request.getAttribute("list");
		int cnt = 3;
		String msg = (String) request.getAttribute("msg");
	%>
		<div class="site-section mt-5">
			<div class="container">
				<h2 class="d-block">${msg }</h2>

				<div class="row mb-5">
					<div class="col-12 section-title text-center mb-5">
						<p>

							<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
								<a class="navbar-brand" href="#"></a>
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarColor02"
									aria-controls="navbarColor02" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>



								<div class="collapse navbar-collapse" id="navbarColor02">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active"><a class="nav-link" href="#">
												<span class="sr-only">(current)</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
									</ul>
									<form method="post" action="chart.food" class="form-inline my-2 my-lg-0">
										<select name="condition" class="custom-select" style="font-family: 'Sunflower', sans-serif;">
											<option value="popular">인기순</option>
											<option value="best">권장식품</option>
											<option value="bad">비권장식품</option>
										</select> <span></span> &nbsp;
										<button class="btn btn-secondary my-2 my-sm-0" type="submit">검색</button>
									</form>
									&nbsp; <a href="random.food" button	class="btn btn-secondary my-2 my-sm-0">랜덤식품</a>
								</div>
							</nav>
						</p>
					</div>
				</div>


				<div class="contents" style="margin-bottom: 10px;">
					<%
						for (int i = 0; i < list.size(); i++) {
							if (cnt >= 3) {
								cnt = 0;
					%>

					<div class="row">

						<%
							}
						%>
						<div class="col-sm-4">
							<div class="wine_v_1 text-center pb-4">
								<a href="read.food?code=<%=list.get(i).getCode()%>" class="thumbnail d-block mb-4">
								<img src="resources/<%=list.get(i).getImg()%>" alt="Image" class="img-fluid"></a>
								<div>
									<h3 class="heading mb-1">
										<a href="#"><%=list.get(i).getName()%></a>
									</h3>
								</div>
								<div class="drpt"><%=list.get(i).getMaterial()%></div>
								<a href="read.food?code=<%=list.get(i).getCode()%>" class="btn btn-outline-primary">추가</a>
							</div>
						</div>

						<%
							cnt++;
								if (cnt >= 3) {
						%>
					</div>
					<%
						}
					%>

					<%
						}
					%>
				</div>

<%@ include file="footer.jsp"%>
</body>

</html>