<%@page import="java.sql.Statement"%>
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
당신이 삭제할 책 제목 : <%=request.getParameter("bi_num") %>
<%
String bi_num = request.getParameter("bi_num");
String sql = "delete from books_info where bi_num =";
sql += bi_num;
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
int result = stmt.executeUpdate(sql);
if (result == 1) {
	con.commit();
	%>
		<script>
		alert('삭제 완료');
		location.href="<%=rootPath%>/books/list.jsp";
		</script>
	<%

}
%>

</body>
</html>