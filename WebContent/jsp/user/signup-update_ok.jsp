<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String ui_num = request.getParameter("ui_num");
	String ui_id = request.getParameter("ui_id");
	String ui_pwd = request.getParameter("ui_pwd");
	String ui_name = request.getParameter("ui_name");
	String ui_age = request.getParameter("ui_age");
	String ui_etc = request.getParameter("ui_etc");
	String[] hobbies = request.getParameterValues("hobby");
	String hobby = "";
	for(int i=0;i<hobbies.length;i++){
	hobby += hobbies[i] + ",";
	}
	hobby = hobby.substring(0,hobby.length()-1);
	out.println(hobby);//체크박스를 만드는 방법

	String sql = " update user_info";
	sql += " set ui_id=?,";
	sql += "ui_pwd=?,";
	sql += "ui_name=?,";
	sql += "ui_age=?,";
	sql += "ui_etc=?,";
	sql += "hobby=?";
	sql += " where ui_num=?";
	System.out.println(sql);

	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, ui_id);
	ps.setString(2, ui_pwd);
	ps.setString(3, ui_name);
	ps.setString(4, ui_age);
	ps.setString(5, ui_etc);
	ps.setString(6, hobby);
	ps.setString(7, ui_num);
	int result = ps.executeUpdate();
	System.out.println(sql);
	if (result == 1) {
		out.println("목록 수정 완료");
		con.commit();
	} else {
		out.println("오류");
	}
	con.commit();
%>
<a href="/bdi-web/jsp/user/signup-list1.jsp"><button>돌아가기</button></a>