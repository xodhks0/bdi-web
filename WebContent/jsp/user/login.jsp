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
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id!=null){
	String sql = "select * from user_info where ui_id =? and ui_pwd=?";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,id);
	ps.setString(2,pwd);
	out.println("입력한 아이디 : " + id);
	out.println("입력한 비밀번호 : " + pwd);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		out.println(rs.getString("ui_name") + "님 안녕하세요");
	}else{
		out.println("아이디/비밀번호 를 잘못입력하셨습니다.");
	}
}
%>
<form method = "post">
	아이디 : <input type = "text" name = "id"> <br>
	비밀번호 : <input type = "password" name = "pwd"> <br>
	<button>로그인</button>
</form>
<a href = "/bdi-web/jsp/user/signup.jsp" ><button>회원가입</button></a>
<a href = "/bdi-web/jsp/user/signup-list1.jsp"><button>회원목록</button></a>
</body>
</html>