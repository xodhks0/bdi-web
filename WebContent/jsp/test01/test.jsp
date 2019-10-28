<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! //선언부보다 클래스를 따로 하나 두는게 낫다. 해당클래스에다 공통사항을 넣어서! 선언부보다 합리적
public void test(HttpServletRequest request){
	request.getParameter("abc");
	int a = 1;
}
%>
<%
test(request);
request.getParameter("abc");
response.addCookie(null);
List<String> strList = new ArrayList<String>();
%>
</body>
</html>