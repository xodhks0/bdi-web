<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이미지</th>
			<th>제목</th>
			<th>타입</th>
			<th>평점</th>
			<th>출판일자</th>
			<th>설명</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>

		<%
			Connection con = DBCon.getCon();
			String sql = "select bi.BI_NUM,bi.BI_IMAGE,bi.BI_TITLE,bi.BI_STAR,bi.BI_CREDAT,bi.BI_DESC, ";
			sql += "(select bt.bt_name from books_type bt where bt.bt_num = bi.BI_TYPE) bi_type ";
			sql += "from books_info bi";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("bi_num")%></td>
			<td><img src="<%=rootPath + rs.getString("bi_image")%>"
				width="100px" height="100px"></td>
			<td><%=rs.getString("bi_title")%></td>
			<td><%=rs.getString("bi_type")%></td>
			<td><%=rs.getString("bi_star")%></td>
			<td><%=rs.getString("bi_credat")%></td>
			<td><%=rs.getString("bi_desc")%></td>
			<td><a href="<%=rootPath%>/books/update.jsp?bi_num=<%=rs.getString("bi_num") %>"><button>수정</button></a></td>
			<td><a href="<%=rootPath%>/books/delete.jsp?bi_num=<%=rs.getString("bi_num") %>"><button>삭제</button></a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>