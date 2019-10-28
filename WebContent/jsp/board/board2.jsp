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
<form>
	<select name="search">
		<option value="1">글 제목</option>
		<option value="2">글 내용</option>
		<option value="3">작성자</option>
		<option value="4">제목+내용</option>
		<option value="5">제목+내용+사용자</option>
	</select> : <input type="text" name="searchStr">
	<button>검색</button>
</form>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>작성한 날짜</th>
			<th>작성한 시간</th>

		</tr>
		<%
			String search = request.getParameter("search");
			String searchStr = request.getParameter("searchStr");
			String bi_title = request.getParameter("bi_title");
			String sql = "select * from board_info ";
			Connection con = DBCon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			if (search != null) {
				if ("1".equals(search)) {
					sql += "where bi_title like ? ";
				} else if ("2".equals(search)) {
					sql += "where bi_content like ? ";
				} else if ("3".equals(search)) {
					sql += "where bi_user like ?";
				} else if ("4".equals(search)) {
					sql += "WHERE bi_content like ? or bi_title like ? ";
					ps.setString(1, "%" + searchStr + "%");
					ps.setString(2, "%" + searchStr + "%");
				} else if ("5".equals(search)) {
					sql += "WHERE bi_content like ? or bi_title like ? or bi_user like ? ";
					ps.setString(1, "%" + searchStr + "%");
					ps.setString(2, "%" + searchStr + "%");
					ps.setString(3, "%" + searchStr + "%");
				}
			}
			


			if (search != null) {

				if ("1".equals(search) || "2".equals(search) || "3".equals(search)) {
					ps.setString(1, "%" + searchStr + "%");
					sql += " order by bi_num desc";
				}else
					sql += " order by bi_num desc";

			}
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("bi_num")%></td>
			<td><a
				href="/bdi-web/jsp/board/view.jsp?
				bi_num=<%=rs.getString("bi_num")%>
				&bi_title=<%=bi_title%>
				&bi_user=<%=rs.getString("bi_user")%>
				&bi_content=<%=rs.getString("bi_content")%>">
					<%=rs.getString("bi_title")%>
			</a></td>
			<td><%=rs.getString("bi_user")%></td>
			<td><%=rs.getString("bi_content")%></td>
			<td><%=rs.getString("bi_credat")%></td>
			<td><%=rs.getString("bi_cretim")%></td>
			<td><a
				href="/bdi-web/jsp/board/delete.jsp?bi_num=<%=rs.getString("bi_num")%>
				&bi_title=<%=bi_title%>"><button>삭제</button></a></td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="/bdi-web/jsp/board/write.jsp"><button>글쓰기</button></a>
</body>
</html>