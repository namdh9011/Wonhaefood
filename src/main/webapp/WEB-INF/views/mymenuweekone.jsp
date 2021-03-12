<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		<h1 style="font-family: 'Sunflower', sans-serif;">주간 다이어리 <img width="60px" height="60px"
							src="resources/img/menu.png"></h1>	
		<h6>${m.month}월 ${m.week}째주</h6>
		<br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>Meal</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>월</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>화</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>수</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>목</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>금</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>토</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>일</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>식단</th>
	    <c:forEach var="week" items="${list}" varStatus="status">
	    <tr>
	    <c:if test="${week.meal==1}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	아침</td>
	    </c:if>
	    <c:if test="${week.meal==2}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	점심</td>
	    </c:if>
	    <c:if test="${week.meal==3}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	저녁</td>
	    </c:if>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.mon}">${week.mon}</a></td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.tue}">${week.tue}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.wed}">${week.wed}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.thu}">${week.thu}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.fri}">${week.fri}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.sat}">${week.sat}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwsearch.food?word=${week.sun}">${week.sun}</a></td>
	      <td height=100 align=center>&nbsp;<font size=2>
	       <a href="/mmwupdate.food?num=${week.num}">추가</a></td>
	    </tr>
	  </c:forEach>
</table>
<br>
 <button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href="mmwselectmonthone.food?month=${m.month }">월간 식단</a></button>
<br></br>
<%@ include file="footer.jsp"%>
</body></html>