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
		//if (mi_num != null) {
			
			
			String sql = "UPDATE MOVIE_INFO set " +
			"mi_name" + "='" + mi_name + "'," +	"mi_price" + "='" + mi_price+ "'," +
			"mi_date" + "='" + mi_date+ "'," +	"mi_desc" + "='" + mi_desc+ "'," +
			"mi_age" + "='" + mi_age+ "'," + "mi_star_rate" + "='" + mi_star_rate +
			"' Where MI_NUM = "+ mi_num ;
			out.println(sql);

			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			 int result = stmt.executeUpdate(sql);
			System.out.println(sql);
			if (result == 1) {
				out.println("목록 수정 완료");
			}else{
				out.println("오류");
			}
			con.commit(); 
		//}
	%>
	<a href="/bdi-web/jsp/movie/movie-list.jsp"><button>돌아가기</button></a>