<%@page import="java.sql.Statement"%>
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
<form action="/bdi-web/jsp/movie/movie-update_ok.jsp">
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
	</tr>
	<%
	String mi_num = request.getParameter("mi_num");
	String mi_name = request.getParameter("mi_name");
	String mi_price = request.getParameter("mi_price");
	String mi_date = request.getParameter("mi_date");
	String mi_desc = request.getParameter("mi_desc");
	String mi_age = request.getParameter("mi_age");
	String mi_star_rate = request.getParameter("mi_star_rate");
			out.println("<tr>");
			out.println("<td>" + "<input type=\"number\" name=\"mi_num\" value=\""+ mi_num + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"mi_name\" value=\""+ mi_name + "\">" + "</td>");
			out.println("<td>" + "<input type=\"number\" name=\"mi_price\" value=\""+ mi_price + "\">" + "</td>");
			out.println("<td>" + "<input type=\"date\" name=\"mi_date\" value=\""+ mi_date + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"mi_desc\" value=\""+ mi_desc + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"mi_age\" value=\""+ mi_age + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"mi_star_rate\" value=\""+ mi_star_rate + "\">" + "</td>");
			out.println("</tr>");
			
		
	%>
</table>
<a href = "/bdi-web/jsp/movie/movie-update_ok.jsp"><button>확인</button></a>
<a href = "/bdi-web/jsp/movie/movie-list.jsp"><button>돌아가기</button></a>
</form>
</body>
</html>