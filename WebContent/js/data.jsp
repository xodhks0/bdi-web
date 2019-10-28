<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>

	<script>
		<!--JS는 비동기라 안뜰수도있다 너무 믿지말자 JS는 char가 없어서 ''나 "" 똑같은 String이다-->
		var str = 1;<!--JS에서는 동적으로 변수값이 입력된다(동적데이터타입)-->
		alert(str+1);
		str = "1";<!--JS에는 선언할수 있는 데이터타입이 없다 하지만 var 숫자 문자 전부가능-->
		alert(str+1); <!--JS는 method 대신 function(함수)라고 부른다. 앞에 뭐가 생략되었다.window객체-->
		str = true;<!--JS에서는 대입을 하는순간 데이터타입이 결정된다-->
		alert(str);
		str=[1,2,3];
		str = null;<!--JS에서는 null이라는 데이터 타입이 존재한다-->
		str = undefined;
		</script>
</body>
</html>