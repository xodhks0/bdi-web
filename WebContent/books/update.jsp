<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String bi_num = request.getParameter("bi_num");
		String bi_title = request.getParameter("bi_title");
		String bi_type = request.getParameter("bi_type");
		String bi_star = request.getParameter("bi_star");
		String bi_credat = request.getParameter("bi_credat");
		String bi_desc = request.getParameter("bi_desc");
	%>
</body>
<form method="post"
	action="<%=rootPath%>/books/update_ok.jsp?bi_num=<%=bi_num%>">
	<table border="1">
		<tr>
			<th>수정할 제목</th>
			<td><input type="text" name="bi_title"></td>
		</tr>
		<tr>
			<th>수정할 타입</th>
			<td><input type="text" name="bi_type"></td>
		</tr>
		<tr>
			<th>수정할 평점</th>
			<td><input type="text" name="bi_star"></td>
		</tr>
		<tr>
			<th>수정할 출판일자</th>
			<td><input type="number" name="bi_credat"></td>
		</tr>
		<tr>
			<th>수정할 설명</th>
			<td><input type="text" name="bi_desc"></td>
		</tr>
		<tr>
			<td><button>수정 완료</button></td>
		</tr>
	</table>

</form>
</html>