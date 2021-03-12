<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="font-family: 'Sunflower', sans-serif;">
	<%@ include file="banner.jsp"%>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
    	  ['성분', '함량',{ role: "style" }],
          ['탄수화물', ${b.carbo},"#b87333"],
          ['단백질', ${b.protein},"silver"],
          ['지방',  ${b.fat},"gold"],
          ['당류', ${b.carbo},"color: #e5e4e2"],
          ['포화지방산', ${b.fattyacid},"red"']
    	  
      ]);
      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);
      var options = {
        title: "Density of Precious Metals, in g/cm^3",
        width: 1000,
        height: 500,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
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
    <div class="site-section  pb-0" >
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-7 section-title text-center mb-5">
            <h2 class="d-block" style="font-family: 'Sunflower', sans-serif;">섭취 정보</h2>
                <center>
	<button class="btn btn-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;"><a href="updateForm.food" style="color: white">회원 정보 수정</a></button>
	<c:if test="${id=='admin'}">
		<button class="btn btn-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;"><a href="admin.food" style="color: white">관리자</a></button>
	</c:if>
          </div>
        </div>
        <div class="row mb-5" style="font-family: 'Sunflower', sans-serif;">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">이미지</th>
                    <th class="product-name">이름</th>
                    <th class="product-quantity">수량</th>
                    <th class="product-total">알러지</th>
                    <th class="product-remove">제거</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="row" items="${list}">
                  <tr>
                    <td class="product-thumbnail">
                    <a href="read.food?code=${row.code }"><img src="resources/${row.img }" alt="Image" class="img-fluid"></a>
                    </td>
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black">${row.name }</h2>
                    </td>
                    <td>${row.count } </td>
                    <td><c:if test="${not empty row.check }" >
							<img src="resources/img/경고.PNG" alt="Image" class="img-fluid">
							</c:if>
                    </td>
                    <td><a href="deleteMyfood.food?id=${row.id }&code=${row.code}" class="btn btn-primary height-auto btn-sm">삭제</a></td>
                  </tr>
    			</c:forEach>
    			<tr>
    				<th style="text-align: center;font-size: 15pt;">총 칼로리</th>
    				<th colspan="4" style="text-align: center;font-size: 15pt;" >${total } kcal</th>
    			</tr>
                </tbody>
              </table>
            </div>
          </form>
              <div id="columnchart_values" style="width: 800px; height: 500px;"></div>
        </div>
      </div>
    </div>
<%@ include file="footer.jsp"%>
</body>
</html>