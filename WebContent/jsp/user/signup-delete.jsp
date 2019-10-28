<%@page import="java.sql.Statement"%>
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
삭제할 아이디 : <%= request.getParameter("ui_name") %>
<%
String str = request.getParameter("ui_num");
String sql = "DELETE from USER_INFO where UI_NUM =";
sql += str;
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
int result = stmt.executeUpdate(sql);
if (result == 1) {
	out.println("아이디 삭제 완료");
}else{
	out.println("오류");
}
con.commit();

%>
<a href="/bdi-web/jsp/user/signup-list1.jsp"><button>영화목록으로 돌아가기</button></a>
</body>
</html>