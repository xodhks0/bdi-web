<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	request.setCharacterEncoding("UTF-8");
	String[] hobbies = request.getParameterValues("hobby");
	String hobby = "";
	for(int i=0;i<hobbies.length;i++){
	hobby += hobbies[i] + ",";
	}
	hobby = hobby.substring(0,hobby.length()-1);
	out.println(hobby);//체크박스를 만드는 방법
	String ui_id = request.getParameter("ui_id");
	String ui_pwd = request.getParameter("ui_pwd");
	String ui_name = request.getParameter("ui_name");
	String ui_age = request.getParameter("ui_age");
	String ui_etc = request.getParameter("ui_etc");

	Connection con = DBCon.getCon();
	String sql = "insert into user_info(ui_num, ui_id, ui_pwd, ui_name, ui_age, ui_etc, hobby)" +
			" values(seq_ui_num.nextval,?,?,?,?,?,?) ";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,ui_id);
	ps.setString(2,ui_pwd);
	ps.setString(3,ui_name);
	ps.setString(4,ui_age);
	ps.setString(5,ui_etc);
	ps.setString(6,hobby);	
	
	int result = ps.executeUpdate();
	if (result == 1) {
		out.println("회원가입완료");
	}
	con.commit();
%>
<a href="/bdi-web/jsp/user/login.jsp">로그인 화면으로 돌아가기</a>

