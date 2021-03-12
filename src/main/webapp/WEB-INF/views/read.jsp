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
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['성분', '함량'],
          ['탄수화물', ${b.carbo}],
          ['단백질', ${b.protein}],
          ['지방',  ${b.fat}],
          ['당류', ${b.sugar}],
          ['포화지방산', ${b.fattyacid}],
          ['트랜스지방', ${b.transfat}]
        ]);

        var options = {
          title: '영양성분표',
          pieHole: 0.5,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
      
      $(document).ready(function(){
    	  $('#add').click(function(){
    		 var count = $('#count').val();
    		 var code = $('#code').val();
    		 $.ajax({
    			url:"safefood/addfood.food",
    			data:{
    				code:code,
    				count:count
    			},
    		 	success:function(result, status, xhr){
    		 		alert("추가되었습니다.");
    		 	}
    			
    		 });
    		  
    	  });
      });
      
      
    </script>
		<div class="site-section mt-5"
			style="font-family: 'Sunflower', sans-serif;">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<img src="resources/${b.img }" alt="Image" class="img-fluid"> <br>
						<c:if test="${b.img=='img/noimg.jpg'}"><button class="btn btn-outline-primary"><a href="readupdate.food?code=${b.code}">이미지 등록 요청하기</a></button></c:if>
						<table class="table" style="font-family: 'Sunflower', sans-serif;">
							<tr>
								<th>이름</th>
								<th>${b.name }</th>
							</tr>
							<tr>
								<th>제조사</th>
								<th>${b.maker }<c:if test="${b.maker==''}"><button class="btn btn-outline-primary"><a href="readupdate.food?code=${b.code}">등록 요청하기</a></button></c:if></th>
							</tr>
							<tr>
								<th>원재료</th>
								<th>${b.material }<c:if test="${b.material==''}"><button class="btn btn-outline-primary"><a href="readupdate.food?code=${b.code}">등록 요청하기</a></button></c:if></th>
							</tr>
							<tr>
								<th>알러지 성분
								</th>
								<th>${b.allergy }
								</th>
							</tr>
						</table>

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

						<div class="mb-5">
							<div class="input-group mb-3" style="max-width: 200px;">
								<div class="input-group-prepend">
									<button class="btn btn-outline-primary js-btn-minus"
										type="button">&minus;</button>
								</div>
								<input type="text" id ="count" class="form-control text-center border mr-0" value="1" placeholder="" 
								aria-label="Example text with button addon" aria-describedby="button-addon1">
								<div class="input-group-append">
									<button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
								</div>
							</div>

						</div>
						<p>
						<c:if test="${not empty id }" >
							<button id="add" class="btn btn-outline-primary">추가하기</button>
							</c:if>
							<input type="hidden" id="code" value="${b.code }"/>
							
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">성분표 보기</button>
							<button class="btn btn-outline-primary"><a href="readupdate.food?code=${b.code}">정보 수정 요청하기</a></button>
							<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Sunflower', sans-serif;">${b.name } 성분표</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<div id="donutchart" style="width: 900px; height: 300px;"></div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>

						</p>
					</div>
				</div>
			</div>
		</div>
	<%@ include file="footer.jsp"%>
</body>

</html>