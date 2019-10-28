<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces = "true"%>
<%@
include file="/common/first.jsp"
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=str %>
<img src="/bdi-web/imgs/img.JPG">
<%
Map<String, String> map = new HashMap<String, String>();
map.put("name","asd");
String name1 = map.get("name");
out.println(name1);
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
out.println(name);
%>
</body>
</html>