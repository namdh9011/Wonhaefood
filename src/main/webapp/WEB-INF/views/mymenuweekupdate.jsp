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

	<form action="mmwupdate.food" method="post">
		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>Meal</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>월</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>화</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>수</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>목</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>금</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>토</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>일</th>
	    <tr>
	    	 <tr>
	    <c:if test="${m.meal==1}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	아침</td>
	    </c:if>
	    <c:if test="${m.meal==2}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	점심</td>
	    </c:if>
	    <c:if test="${m.meal==3}">
	      <td height=100 align=center>&nbsp;<font size=2>
	       	저녁</td>
	    </c:if>
	    	<input type="hidden" name='num' value="${m.num }">
	    	<input type="hidden" name='meal' value="${m.meal }">
	    	<input type="hidden" name='month' value="${m.month }">
	    	<input type="hidden" name='week' value="${m.week }">
	      <td height=100 align=center><font size=2>
	      <textarea name="mon" style="width: 100%; height: 150px">${m.mon}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="tue"style="width: 100%; height: 150px">${m.tue}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="wed" style="width: 100%; height: 150px">${m.wed}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="thu" style="width: 100%; height: 150px">${m.thu}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="fri" style="width: 100%; height: 150px">${m.fri}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="sat" style="width: 100%; height: 150px">${m.sat}</textarea>
	      <td height=100 align=center><font size=2>
	      <textarea name="sun" style="width: 100%; height: 150px">${m.sun}</textarea>
	    </tr>
	</table>
	<br></br>
	<button type="submit" style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced">식단 수정</button>
</form>
<br></br>
<%@ include file="footer.jsp"%>
</body></html>