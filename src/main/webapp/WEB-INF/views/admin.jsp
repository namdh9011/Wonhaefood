<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
		<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		
			<h1 style="font-family: 'Sunflower', sans-serif;">관리자 페이지<img width="80px" height="80px"
							src="resources/img/animat-lightbulb-color.gif"></h1>	
		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" >
		  <tr>
		<th style="width:50px; background-color:#e3fced; color:#000000; font-size:1em">번호</th>
		<th style="width:50px; background-color:#e3fced; color:#000000; font-size:1em">Code</th>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">ID</th>
		<th style="width:150px; background-color:#e3fced; color:#000000; font-size:1em">제조사</th>
		<th style="width:400px; background-color:#e3fced; color:#000000; font-size:1em">재료</th>
		<th style="width:400px; background-color:#e3fced; color:#000000; font-size:1em">내용</th>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">img</th>
		<th style="width:50px; background-color:#e3fced; color:#000000; font-size:1em">추가</th>
		<th style="width:50px; background-color:#e3fced; color:#000000; font-size:1em">삭제</th>
      </tr>

	  <c:forEach var="row" items="${list}">
	  	<form action="adminupdate.food" method="post">
	    <tr>
		   <td align=center>&nbsp;<font size=2>${row.num }</td>
	       
	      <td align=center>&nbsp;<font size=2><a href="read.food?code=${row.code}">${row.code }</td>
	      
	      <td align=center>&nbsp;<font size=2>${row.id }</td>
	       
	      <td align=center>&nbsp;<font size=2><input type="text" name="maker" value="${row.maker}"></td>
	       
	      <td align=center>&nbsp;<font size=2><input type="text" name="material" style="width:400px;" value="${row.material}"></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.comment }</td>
	      
	      <td align=center>&nbsp;<font size=2><a href="http://70.12.108.209:8080/resources/${row.img }">${row.img }</a></td>
	       
	  	<input type="hidden" name="num" value="${row.num}"></input>
	  	<input type="hidden" name="code" value="${row.code}"></input>
	  	<input type="hidden" name="maker" value="${row.maker}"></input>
	  	<input type="hidden" name="img" value="${row.img}"></input>
	      <td align=center>&nbsp;<font size=2><input type="submit" value="O"></a></td>
	  	</form>
	      <td align=center>&nbsp;<font size=2><a href="admindelete.food?num=${row.num}">X</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br>
<br>
		<form action="fortuneinsert.food" method="post">
			<input type="text" style="width:400px;" name="fortune"><button type="submit">운세입력</button>
		</form>
<br></br>
	<%@ include file="footer.jsp"%>
</body>

</html>