<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br>
	
<center>
		<h1 style="font-family: 'Sunflower', sans-serif;">나의 주간 식단<img width="60px" height="60px"
							src="resources/img/cutlery.png"></h1>	

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>Month</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>Week</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>식단</th>
		<th width=50 bgcolor=#e3fced><font color=#000000 size=2>삭제</th>
	   <c:forEach var="row" items="${list}">
	    <tr>
	      <td align=center>&nbsp;<font size=2>
	        <a href="mmwselectmonthone.food?month=${row.month }">${row.month }</a></td>
	      <td align=center>&nbsp;<font size=2>
	       <a>${row.week }</a></td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="mmwselectweekone.food?month=${row.month }&week=${row.week}">관리하기</a></td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="mmwdeleteone.food?month=${row.month }&week=${row.week}">삭제</a></td>
	    </tr>
	    </c:forEach>
	</table>
	    <br>
	    <form method="post" action="mmwinsert.food">
			<select name="month" style="font-family: 'Sunflower', sans-serif;">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
				월
			<select name="week" style="font-family: 'Sunflower', sans-serif;">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
			 주차
			 <button type="submit" style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced">추가 하기</button>
		</form>
<br></br>
<%@ include file="footer.jsp"%>
</body></html>