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
삭제할 글 제목 : <%= request.getParameter("bi_title") %>
<%
String bi_num = request.getParameter("bi_num");
String bi_title = request.getParameter("bi_title");
String sql = "DELETE from BOARD_INFO WHERE BI_NUM =?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_num);
int result = ps.executeUpdate();
if(result==1){
	out.println("삭제가 완료되었습니다.");
}
else{
	out.println("존재하지 않는 게시물입니다.");
}
con.commit();



%>
<a href="/bdi-web/jsp/board/board.jsp"><button>게시판으로 돌아가기</button></a>
</body>
</html>