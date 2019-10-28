<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String bi_title = request.getParameter("bi_title");
	String bi_user = request.getParameter("bi_user");
	String bi_content = request.getParameter("bi_content");

	if (bi_title == null || bi_content == null) {
		out.println("제목이나 내용이 비었습니다 다시 작성해주시기 바랍니다");
	}

	String sql = "insert into board_info(bi_num, bi_title, bi_user, bi_content,bi_credat,bi_cretim,bi_moddat,bi_modtim)";

	sql += " values(seq_ui_num.nextval, ? , ? , ? ,to_char(sysdate,'YYYYMMDD'),to_char(sysdate,'hh24miss'),to_char(sysdate,'YYYYMMDD'),to_char(sysdate,'hh24miss'))";

	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, bi_title);
	ps.setString(2, bi_user);
	ps.setString(3, bi_content);
	int result = ps.executeUpdate();
	if (result == 1) {
		out.println("작성이 완료되었습니다");
	}
	con.commit();
%>
<a href="/bdi-web/jsp/board/board.jsp"><button>돌아가기</button></a>