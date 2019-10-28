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
<form action="/bdi-web/jsp/user/signup-update_ok.jsp">
<%
	Connection con = DBCon.getCon();
	String sql = "select * from movie_info";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>비고</th>
	</tr>
	<%
	String ui_num = request.getParameter("ui_num");
	String ui_id = request.getParameter("ui_id");
	String ui_pwd = request.getParameter("ui_pwd");
	String ui_name = request.getParameter("ui_name");
	String ui_age = request.getParameter("ui_age");
	String ui_etc = request.getParameter("ui_etc");
			out.println("<tr>");
			out.println("<td>" + "<input type=\"number\" name=\"ui_num\" value=\""+ ui_num + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"ui_id\" value=\""+ ui_id + "\">" + "</td>");
			out.println("<td>" + "<input type=\"password\" name=\"ui_pwd\" value=\""+ ui_pwd + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"ui_name\" value=\""+ ui_name + "\">" + "</td>");
			out.println("<td>" + "<input type=\"number\" name=\"ui_age\" value=\""+ ui_age + "\">" + "</td>");
			out.println("<td>" + "<input type=\"text\" name=\"ui_etc\" value=\""+ ui_etc + "\">" + "</td>");
			out.println("</tr>");
			
		
	%>
</table>
<a href = "/bdi-web/jsp/user/signup-update_ok.jsp"><button>확인</button></a>
</form>
<a href = "/bdi-web/jsp/user/signup-list.jsp"><button>돌아가기</button></a>
</body>
</html>