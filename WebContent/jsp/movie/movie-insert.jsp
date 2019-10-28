<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/bdi-web/jsp/movie/movie-insert_ok.jsp">
영화순번 : <input type="number" name="mi_num"> <br>
영화이름 : <input type="text" name="mi_name"> <br>
영화가격 : <input type="number" name="mi_price"> <br>
영화개봉일 : <input type="date" name="mi_date"> <br>
영화설명 : <input type="text" name="mi_desc"> <br>
연령제한 : <input type="text" name="mi_age"> <br>
별점 : <input type="text" name="mi_star_rate"> <br>
<button>저장</button>
</form>
</body>
</html>