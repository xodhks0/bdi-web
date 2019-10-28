<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String bi_num = request.getParameter("bi_num");
String bi_title = request.getParameter("bi_title");
String bi_user = request.getParameter("bi_user");
String bi_content = request.getParameter("bi_content");
%>
<body>
	<form method="post" action="/bdi-web/jsp/board/update_ok.jsp?bi_num=<%=bi_num%>">
		<table border="1">
			<tr>
				<th>수정할 제목</th>
				<td><input type="text" name="bi_title" value="<%=bi_title %>"></td>
			</tr>
			<tr>
				<th>수정할 내용</th>
				<td><input type="text" name="bi_content" value="<%=bi_content%>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user" value="<%=bi_user%>"></td>
			</tr>
				<td><button>작성 완료</button></td>
		</table>
	</form>
</body>
</html>