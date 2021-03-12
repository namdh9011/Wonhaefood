<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		<h1 style="font-family: 'Sunflower', sans-serif;">${m.month}월 다이어리<img width="60px" height="60px"
							src="resources/img/menu.png"></h1>	
		<br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=50 bgcolor=#e3fced><font color=#000000 size=2>month</th>
		<th width=50 bgcolor=#e3fced><font color=#000000 size=2>week</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>월</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>화</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>수</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>목</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>금</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>토</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>일</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>수정</th>
		<c:if test="${not empty list}">
 	<c:forEach var="i" begin="0" end="${list.size()-1}" step="3">
	    <tr>
	      <td height=100 align=center>&nbsp;<font size=2>
	      	 ${list[i].month}</td>
	      <td height=100 align=center>&nbsp;<font size=2>
	         ${list[i].week}</td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].mon}">${list[i].mon}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].mon}">${list[i+1].mon}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].mon}">${list[i+2].mon}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].tue}">${list[i].tue}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].tue}">${list[i+1].tue}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].tue}">${list[i+2].tue}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].wed}">${list[i].wed}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].wed}">${list[i+1].wed}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].wed}">${list[i+2].wed}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].thu}">${list[i].thu}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].thu}">${list[i+1].thu}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].thu}">${list[i+2].thu}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].fri}">${list[i].fri}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].fri}">${list[i+1].fri}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].fri}">${list[i+2].fri}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].sat}">${list[i].sat}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].sat}">${list[i+1].sat}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].sat}">${list[i+2].sat}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${list[i].sun}">${list[i].sun}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+1].sun}">${list[i+1].sun}</a><br>
	       <a href="/mmwsearch.food?word=${list[i+2].sun}">${list[i+2].sun}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       	<a href="mmwselectweekone.food?month=${list[i].month }&week=${list[i].week}">관리하기</a></td>
	    </tr>
	</c:forEach>
		</c:if>
</table>
<br>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=1">1</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=2">2</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=3">3</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=4">4</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=5">5</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=6">6</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=7">7</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=8">8</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=9">9</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=10">10</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=11">11</a></button>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=12">12</a></button>
	<br>
	<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselect.food">추가</a></button>
<br></br>
<%@ include file="footer.jsp"%>
</body></html>