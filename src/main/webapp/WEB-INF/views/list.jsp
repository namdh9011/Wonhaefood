<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
		<h1 style="font-family: 'Sunflower', sans-serif;">공지사항<img width="80px" height="80px"
							src="resources/img/animat-lightbulb-color.gif"></h1>	
		<br>
		<form method="post" action="listsearch.food" style="font-family: 'Sunflower', sans-serif;">
			<select name="search" style="width: 80px; height: 30px;">
				<option value="id">ID</option>
				<option value="title">제목</option>
			</select>
			<input type="text" name="searchtext" style="width: 150px; height: 30px"/>
			<input type="submit" value="검색" style="width: 100px; height: 30px"/>
		</form>
		<br><br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" >
		  <tr>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">번호</th>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">ID</th>
		<th style="width:200px; background-color:#e3fced; color:#000000; font-size:1em">제목</th>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">글쓴이</th>
		<th style="width:150px; background-color:#e3fced; color:#000000; font-size:1em">날짜</th>
		<th style="width:100px; background-color:#e3fced; color:#000000; font-size:1em">조회수</th>
      </tr>

	  <c:forEach var="row" items="${list}">
	    <tr>
		   <td align=center>&nbsp;<font size=2>${row.num }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.id }</td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="listread.food?num=${row.num }">${row.title }</a></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.name }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.wdate }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.count }</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<c:if test="${id=='admin'}">
<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#e3fced"><a href=listinsert.food>새글쓰기</a></button>
</c:if>
<%@ include file="footer.jsp"%>
</body></html>