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
String bi_num = request.getParameter("bi_num");
String bi_title = request.getParameter("bi_title");
String bi_user = request.getParameter("bi_user");
String bi_content = request.getParameter("bi_content");
String bi_credat = request.getParameter("bi_credat");
String bi_cretim = request.getParameter("bi_cretim");
String sql = "select * from board_info where bi_num=?";
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,bi_num);
ResultSet rs = ps.executeQuery();
if(rs.next()){
%>
	<form method="post" action="/bdi-web/jsp/board/update.jsp?
				bi_num=<%=rs.getString("bi_num")%>
				&bi_title=<%=rs.getString("bi_title")%>
				&bi_user=<%=rs.getString("bi_user")%>
				&bi_content=<%=rs.getString("bi_content")%>">
		<table border="1">
			<tr>
				<th>글 제목</th>
				<td><%=rs.getString("bi_title")%></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><%=rs.getString("bi_content")%></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=rs.getString("bi_user")%></td>
			</tr>
			<tr>
				<th>작성한 날짜</th>
				<td><%=rs.getString("bi_credat")%></td>
			</tr>
			<tr>
				<th>작성한 시간</th>
				<td><%=rs.getString("bi_cretim")%></td>
			</tr>
						<tr>
				<th>수정한 날짜</th>
				<td><%=rs.getString("bi_moddat")%></td>
			</tr>
			<tr>
				<th>수정한 시간</th>
				<td><%=rs.getString("bi_modtim")%></td>
			</tr>
			<td><button>글 수정</button></td>
		</table>
		
	
	<%
}
	%>
	</form>
	<a href="/bdi-web/jsp/board/board.jsp"><button>돌아가기</button></a>
</body>
</html>