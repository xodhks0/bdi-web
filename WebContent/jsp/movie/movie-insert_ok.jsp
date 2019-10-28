<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String mi_num = request.getParameter("mi_num");
		String mi_name = request.getParameter("mi_name");
		String mi_price = request.getParameter("mi_price");
		String mi_date = request.getParameter("mi_date");
		mi_date = mi_date.replace("-","");
		String mi_desc = request.getParameter("mi_desc");
		String mi_age = request.getParameter("mi_age");
		String mi_star_rate = request.getParameter("mi_star_rate");
		if (mi_num != null) {
			
			String sql = "insert into MOVIE_INFO(mi_num, mi_name, mi_price, mi_date, mi_desc, mi_age, mi_star_rate)";
			sql += " values('" + mi_num + "','" + mi_name + "','" + mi_price + "','" + mi_date + "','"
					+ mi_desc + "','" + mi_age + "','" + mi_star_rate + "')";
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			int result = stmt.executeUpdate(sql);
			out.println(sql);
			if (result == 1) {
				out.println("영화 작성 완료");
			}else{
				out.println("오류");
			}
			con.commit();
		}
	%>
	<a href="/bdi-web/jsp/movie/movie-list.jsp"><button>돌아가기</button></a>