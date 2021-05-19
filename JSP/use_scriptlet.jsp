<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

<!-- bootstrap -->
<link href="http://localhost/jsp_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
<%
	//Scriptlet : JSP에서 method안의 자바 코드를 작성할 때.
	int age = 20; //지역변수
	String name ="유경우";
%>
<a href="#"><%= name %><span class="badge"><%= age %></span></a>
<br/>
<button class="btn btn-primary" type="button">
 <%= name %><span class="badge"><%= age %></span>
</button>

<% 
	String na = name;
%><br/>
<%= na %>
<% for(int i=0; i< 6; i++){ %>
<h<%=i+1%>>안녕하세요?<small>오늘은 금요일</small></h<%=i+1%>>
<% }//end for %>

<%
String[][] data = {{"박기범","25","서울시 강남구"},{"강인섭","26","서울시 구로구"},{"곽범수","25","서울시 동대문구"}};
%>
<div style="width: 400px">
<table class="table table-striped">
 <tr>
 	<th style="width: 100px; text-align: center">이름</th>
 	<th style="width: 100px; text-align: center">나이</th>
 	<th style="width: 100px; text-align: center">주소</th>
</tr>
 <% for(int i = 0; i < data.length; i++){  %>
<tr>
 	<% for(int j =0; j < data[i].length; j++){  %>
 	<td><%= data[i][j] %></td>
 	<%} %>
<tr>
 <% } %>
</table>
</div>
<!-- 1~100까지읭 합을 출력 -->
<% int sum = 0; 
for(int i = 0; i < 101; i++){  
	 sum+= i;
 } %>	
<p>1~100까지의 합 : <strong> <%= sum %></strong></p>
<!-- 위의 이름과 나이를 input type = "text"에 value에 넣어 출력 -->
<input type="text" class = "form-control" value="<%= name %>" style="width: 250px"/>
<input type="text" class = "form-control"  value="<%= age %>" style="width: 250px"/>
</div>
</body>
</html>