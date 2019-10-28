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
<form>
아이디 : <input type = "text" name = "ui_id"><button>검색</button>
</form>
<table border="1">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>비고</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
	String ui_id = request.getParameter("ui_id");
	String sql= "select * from user_info ";
	if(ui_id!=null){
		sql += "where ui_id like ?";
	}
	sql +=" order by ui_num desc";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	if(ui_id!=null){
		ps.setString(1,"%"+ui_id+"%");
	}
	ResultSet rs = ps.executeQuery();
	
		while (rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getString("ui_num")+ "</td>");
			out.println("<td>" + rs.getString("ui_id")+ "</td>");
			out.println("<td>" + rs.getString("ui_pwd")+ "</td>");
			out.println("<td>" + rs.getString("ui_name")+ "</td>");
			out.println("<td>" + rs.getString("ui_age")+ "</td>");
			out.println("<td>" + rs.getString("ui_etc")+ "</td>");
			out.println("<td><a href = \"/bdi-web/jsp/user/signup-update.jsp?ui_num=" + rs.getString("ui_num")
			+"&ui_id="+ rs.getString("ui_id") +"&ui_pwd="+ rs.getString("ui_pwd") 
			+"&ui_name="+ rs.getString("ui_name") +"&ui_age="+ rs.getString("ui_age") 
			+"&ui_etc="+ rs.getString("ui_etc") + "\">");
			out.println("<button>수정</button></a></td>");
			out.println("<td><a href = \"/bdi-web/jsp/user/signup-delete.jsp?ui_num=" + rs.getString("ui_num")
			+"&ui_name="+ rs.getString("ui_name") + "\">");
			out.println("<button>삭제</button></a></td>");
			
			out.println("</tr>");
		}
	%>
</table>
<a href = "/bdi-web/jsp/user/signup.jsp"><button>회원가입</button></a>
<a href="/bdi-web/jsp/user/login.jsp"><button>로그인 화면으로 돌아가기</button></a>
</body>
</html>