<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Map<String, String[]> paramMap = request.getParameterMap();//key 스트링 value 스트링배열로 되어있다.
	Iterator<String> it = paramMap.keySet().iterator();

	while (it.hasNext()) {
		String key = it.next();
		String[] values = paramMap.get(key);
		out.print("key [" + key + "]:");
		for (int i = 0; i < values.length; i++) {
			out.print(values[i] + ",");
		}
		out.println();
	}
%>