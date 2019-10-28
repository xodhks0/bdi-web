<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/bdi-web/jsp/board/write_ok.jsp">
		<table border="1">
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="bi_title"></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><input type="text" name="bi_content"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user"></td>
			</tr>
				<button>작성 완료</button>
		</table>
	</form>
</body>
</html>