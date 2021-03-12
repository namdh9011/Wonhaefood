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
          ['단백질', ${b.protein},"sky"],
          ['지방',  ${b.fat},"gold"],
          ['당류', ${b.sugar},"color: #e5e4e2"],
          ['포화지방산', ${b.fattyacid},"green"],
          ['트랜스지방', ${b.transfat},"red"]
      ]);
      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);
      var options = {
        title: "나의 섭취 영양성분",
        width: 1200,
        height:600,
        bar: {groupWidth: "70%"},
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
                <center>
                <h1 style="font-family: 'Sunflower', sans-serif;">섭취 정보<img width="60px" height="60px"
							src="resources/img/nyam.png"></h1>	
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
    				<th rowspan="2" style="text-align: center;font-size: 13pt;"><br>총 칼로리</th>
    				<th rowspan="2" colspan="2" style="text-align: center;font-size: 13pt;" ><br>${b.calory } kcal</th>
    				<th style="text-align: center;font-size: 12pt;">남성 하루 권장 칼로리</th>
    				<th style="text-align: center;font-size: 12pt;" >2,700 kcal</th>
    			</tr>
    			<tr>
    				<th style="text-align: center;font-size: 12pt;">여성 하루 권장 칼로리</th>
    				<th style="text-align: center;font-size: 12pt;" >2,000 kcal</th>
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