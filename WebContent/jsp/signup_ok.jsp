<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String etc = request.getParameter("etc");
	if (id != null) {
		out.println("입력한 아이디 : " + id + "<br>");
		out.println("입력한 비밀번호 : " + pwd + "<br>");
		out.println("입력한 이름 : " + name + "<br>");
		out.println("입력한 나이 : " + age + "<br>");
		out.println("입력한 비고 : " + etc + "<br>");

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "insert into user_info(ui_id,ui_pwd, ui_name, ui_age, ui_etc)";
		sql += " values('" + id + "','" + pwd + "','" + name + "','" + age + "','" + etc + "')";
		int result = stmt.executeUpdate(sql);
		if (result == 1) {
			out.println("회원가입완료");
		}
		con.commit();
	}
%>
<a href="/bdi-web/jsp/signup.jsp">돌아가기</a>