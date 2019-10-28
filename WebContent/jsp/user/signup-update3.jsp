<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method = "post" action = "/bdi-web/jsp/user/signup_ok.jsp">
	아이디 : <input type = "text" name = "id"> <br>
	비밀번호 : <input type = "password" name = "pwd"> <br>
	이름 : <input type = "text" name = "name"><br>
	나이 : <input type = "number" name = "age"><br>
	비고 : <input type = "text" name = "etc"> <br>
	<button>가입 완료</button>
</form>
</body>
</html>