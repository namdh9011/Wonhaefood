<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>

<body style="font-family: 'Sunflower', sans-serif;">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">게시글 수정<img width="80px" height="80px"
							src="resources/img/animat-checkmark-color.gif"></h2><p>&nbsp;</p>
        <form action="updatelist.food" method="post">
        <input type="hidden" name='num' value="${cc.num }">
            <div class="table table-responsive">
                      <table class="table table-striped">
            <tr>
                <td>ID</td>
                <td><input type=input name='id' size=42 value=${cc.id } readonly="readonly"></td>
            </tr>
            
            <tr>
                <td>작성시간</td>
                <td><input type=input name='wdate' size=42 value=${cc.wdate } readonly="readonly"></td>
            </tr>
            
            <tr>
                <td>제목</td>
                <td colspan="3"><input type=input name='title' value=${cc.title } size=42></td>
            </tr>

            <tr>
                <td>글내용</td>
                <td colspan="3"><textarea name="content" style="width: 100%; height: 200px">${cc.content }</textarea></td>
            </tr>
             <br><br>
            <tr>  
                <td colspan="4"  class="text-center">
                    <input type="submit" value="수정" class="btn btn-warning">
                    <input type="button"  class="btn btn-primary" onclick="location.href='boardlist.food'" value="전체글보기">
                </td>
            </tr>
          </table>
         
     
            </div>
        </form>   
    </div>
</div>
 

<script>
CKEDITOR.replace('content', {
         
    width:'100%',
    height:'350'
         
});
 
</script>
<%@ include file="footer.jsp"%>
</body>
</html>