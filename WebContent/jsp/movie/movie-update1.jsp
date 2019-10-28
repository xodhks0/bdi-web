<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = DBCon.getCon();
String sql ="select * from movie_info";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
%>
<form method="get" action="/bdi-web/jsp/movie/movie-insert_ok.jsp">
<table border="1">
	<tr>
		<th>번호</th>
		<td><input type="number" name="mi_num"></td>	
	</tr>	
	<tr>
		<th>영화 제목</th>
		<td><input type="text" name="mi_name"></td>
	</tr>
	<tr>
		<th>티켓 가격</th>
		<td><input type="text" name="mi_price"></td>
	</tr>	
	<tr>
		<th>개봉일</th>
		<td><input type="date" name="mi_date"></td>
	</tr>
	<tr>
		<th>영화 설명</th>
		<td><input type="text" name="mi_desc"></td>
	</tr>	
	<tr>	
		<th>관람 등급</th>
		<td><input type="text" name="mi_age"></td>
	</tr>
	<tr>
		<th>영화 별점</th>
		<td><input type=text name="mi_star_rate"></td>
	</tr>
	<tr>
	<th><button>입력</button></th>
	</tr>
	
</table> 
</form>

</body>
</html>