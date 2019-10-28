<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
public String checkStr(String str, String targetStr){
	String[] strs = str.split(",");
	for(String s :strs){
		if(s.equals(targetStr)){
			return "checked";
		}
	}
	return "";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String ui_num = request.getParameter("ui_num");
		String ui_id = request.getParameter("ui_id");
		String ui_pwd = request.getParameter("ui_pwd");
		String ui_name = request.getParameter("ui_name");
		String ui_age = request.getParameter("ui_age");
		String ui_etc = request.getParameter("ui_etc");
		String hobby = request.getParameter("hobby");
		String sql = "select * from user_info where ui_num=?";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, ui_num);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) {
			out.println(ui_num + "에 해당하는 게시물은 존재하지 않습니다");
		} else {
	%>
	<form method="post" action="/bdi-web/jsp/user/signup-update_ok.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=ui_num%></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ui_id" value="<%=ui_id%>"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="ui_pwd" value="<%=ui_pwd%>"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="ui_name" value="<%=ui_name%>"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="ui_age" value="<%=ui_age%>"></td>
			</tr>
			<tr>
				<th>비고</th>
				<td><input type="text" name="ui_etc" value="<%=ui_etc%>"></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><input type="checkbox" name="hobby" value="study" <%=checkStr(rs.getString("hobby"),"study") %>>공부
					<input type="checkbox" name="hobby" value="game"<%=checkStr(rs.getString("hobby"),"game") %>>게임 
					<input type="checkbox" name="hobby" value="movie"<%=checkStr(rs.getString("hobby"),"movie") %>>영화
					<input type="checkbox" name="hobby" value="music"<%=checkStr(rs.getString("hobby"),"music") %>>음악
			</tr>
			<tr>
				<th colspan="2"><button>수정 완료</button></th>
			</tr>
		</table>
		<input type="hidden" name="ui_num" value="<%=ui_num%>">
	</form>
	<%
		}
	%>
	<a href="/bdi-web/jsp/user/signup-list1.jsp"><button>돌아가기</button></a>
</body>
</html>