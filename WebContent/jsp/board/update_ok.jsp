<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String bi_num = request.getParameter("bi_num");
	String bi_title = request.getParameter("bi_title");
	String bi_user = request.getParameter("bi_user");
	String bi_content = request.getParameter("bi_content");
	String bi_moddat = request.getParameter("bi_moddat");
	String bi_modtim = request.getParameter("bi_modtim");

	String sql = " update board_info ";
	sql += "set bi_title=?,";
	sql += "bi_user=?,";
	sql += "bi_content=?,";
	sql += "bi_moddat=to_char(sysdate,'YYYYMMDD'),";
	sql += "bi_modtim=to_char(sysdate,'hh24miss')";
	sql += " where bi_num=?";
	System.out.println(sql);

	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, bi_title);
	ps.setString(2, bi_user);
	ps.setString(3, bi_content);
	ps.setString(4, bi_num);
	int result = ps.executeUpdate();
	System.out.println(sql);
	if (result == 1) {
		out.println("글 수정 완료");
		con.commit();
	} else {
		out.println("오류");
	}
	con.commit();
%>
<a href="/bdi-web/jsp/board/board.jsp"><button>돌아가기</button></a>