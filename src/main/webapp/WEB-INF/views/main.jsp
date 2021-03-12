<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="banner.jsp"%>

		<!-- 검색창 -->
		<div class="site-section mt-5">
			<div class="container">

				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

					<a class="navbar-brand" href="#" style="font-family: 'Sunflower', sans-serif;">식품검색</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
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
						<form method="post" action="search.food"
							class="form-inline my-2 my-lg-0">
							<select name="condition" class="custom-select" style="font-family: 'Sunflower', sans-serif;">
								<option value="name">이름</option>
								<option value="maker">제조사</option>
							</select> <span></span> <input class="form-control mr-sm-2" type="text" placeholder="" name="word">
							<button class="btn btn-secondary my-2 my-sm-0" type="submit" style="font-family: 'Sunflower', sans-serif;">검색</button>
						</form>
					</div>
				</nav>
				<br> <br> <br> <br>

				<!-- 검색창 끝 -->
				<%
					ArrayList<Food> list = (ArrayList<Food>) request.getAttribute("list");
				%>
				<div class="row" style="font-family: 'Sunflower', sans-serif;">
					<%
						for (int i = 0; i < 3; i++) {
					%>
					<div class="col-lg-4 mb-5 col-md-6">

						<div class="wine_v_1 text-center pb-4">
							<a href="read.food?code=<%=list.get(i).getCode()%>" class="thumbnail d-block mb-4">
							<% String img = list.get(i).getImg();
								if(img==null){
									img = "로고.png";
								}
							%>
							<img src="/resources/<%=img%>" alt="Image" class="img-fluid"></a>
							<div>
								<h3 class="heading mb-1">
									<a href="#"><%=list.get(i).getName()%></a>
								</h3>
							</div>


							<div class="wine-actions">
								<h3 class="heading-2">
									<a href="#"><%=list.get(i).getName()%></a>
								</h3>

								<div class="rating">
									<span>알러지성분 : <%=list.get(i).getAllergy()%></span>

								</div>

								<a href="read.food?code=<%=list.get(i).getCode() %>" class="btn add"></span>추가</a>
							</div>
						</div>

					</div>
					<%
						}
					%>

				</div>
			</div>
		</div>


		<%@ include file="footer.jsp"%>
</body>

</html>