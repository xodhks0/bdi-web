<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
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
	<table border="1">
		<tr>
			<th>회차</th>
			<th>첫번째 번호</th>
			<th>두번째 번호</th>
			<th>세번째 번호</th>
			<th>네번째 번호</th>
			<th>다섯번째 번호</th>
			<th>여섯번째 번호</th>
		</tr>
<body>
	<%
		String sql = "select * from lotto";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		con.commit();
		while (rs.next()) {
	%>

		<tr>
			<td><%=rs.getString("seq")%></td>
			<td><%=rs.getString("num1")%></td>
			<td><%=rs.getString("num2")%></td>
			<td><%=rs.getString("num3")%></td>
			<td><%=rs.getString("num4")%></td>
			<td><%=rs.getString("num5")%></td>
			<td><%=rs.getString("num6")%></td>
		</tr>



		<%
			}
		%>
	</table>
	<a href="/bdi-web/jsp/lotto/lotto2.jsp"><button>로또 자동생성기</button></a>
</body>
</html>