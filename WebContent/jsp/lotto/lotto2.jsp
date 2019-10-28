<%@page import="java.util.Collections"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
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
		String sql = "insert into lotto(seq,num1,num2,num3,num4,num5,num6)";
		sql += " values(seq_num.nextval,?,?,?,?,?,?)";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		
		Random r = new Random();
		List<Integer> loli = new ArrayList<Integer>();
		for (int i = 1; i < 7; i++) {
			int rNum = r.nextInt(45) + 1;
			if (loli.indexOf(rNum) == -1) {
				ps.setInt(i,rNum);
			} else {
				i--;
			}
			//Collections.sort(loli);
		}
		int result = ps.executeUpdate();
		if(result==1){
			out.println("번호 생성 완료");		
		}else{
			out.println("오류");	
		}
		con.commit();
	
	%>
	<a href="/bdi-web/jsp/lotto/lotto.jsp">돌아가기</a>
</body>
</html>