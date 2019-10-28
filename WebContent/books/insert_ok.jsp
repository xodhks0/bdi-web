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
	<%
		request.setCharacterEncoding("UTF-8");
		String bi_title = request.getParameter("bi_title");
		String bi_type = request.getParameter("bi_type");
		String bi_star = request.getParameter("bi_star");
		String bi_credat = request.getParameter("bi_credat");
		String bi_desc = request.getParameter("bi_desc");

		if (bi_title == null || bi_credat == null || bi_desc == null) {
			out.println("제목이나 출판일자, 설명 중 내용이 비어있습니다. 다시 작성해주세요.");
		}

		String sql = "insert into books_info(bi_num,bi_image,bi_title,bi_type,bi_star,bi_credat,bi_desc)";
		sql +="values(seq_books_bi_num.nextval,'/imgs/img.JPG',?,?,?,?,?)";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bi_title);
		ps.setString(2, bi_type);
		ps.setString(3, bi_star);
		ps.setString(4, bi_credat);
		ps.setString(5, bi_desc);
		
		int result = ps.executeUpdate();
		if (result ==1) {
			con.commit();
			%>
		<script>
			alert('완료');
			location.href="<%=rootPath%>/books/list.jsp";
		</script>
		<%
		}
		
	%>
</body>
</html>