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
	String sql = "select * from movie_info";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>영화제목</th>
		<th>티켓가격</th>
		<th>개봉일</th>
		<th>영화설명</th>
		<th>연령등급</th>
		<th>별점</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
		while (rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getString("mi_num")+ "</td>");
			out.println("<td>" + rs.getString("mi_name")+ "</td>");
			out.println("<td>" + rs.getString("mi_price")+ "</td>");
			out.println("<td>" + rs.getString("mi_date")+ "</td>");
			out.println("<td>" + rs.getString("mi_desc")+ "</td>");
			out.println("<td>" + rs.getString("mi_age")+ "</td>");
			out.println("<td>" + rs.getString("mi_star_rate")+ "</td>");
			out.println("<td><a href = \"/bdi-web/jsp/movie/movie-update.jsp?mi_num=" + rs.getString("mi_num")
			+"&mi_name="+ rs.getString("mi_name") +"&mi_price="+ rs.getString("mi_price") 
			+"&mi_date="+ rs.getString("mi_date") +"&mi_desc="+ rs.getString("mi_desc") 
			+"&mi_age="+ rs.getString("mi_age") +"&mi_star_rate="+ rs.getString("mi_star_rate") + "\">");
			out.println("<button>수정</button></a></td>");
			out.println("<td><a href = \"/bdi-web/jsp/movie/movie-delete.jsp?mi_num=" + rs.getString("mi_num")
			+"&mi_name="+ rs.getString("mi_name") + "\">");
			out.println("<button>삭제</button></a></td>");
			
			out.println("</tr>");
		}
	%>
</table>
<a href = "/bdi-web/jsp/movie/movie-insert.jsp"><button>글쓰기</button></a>
</body>
</html>