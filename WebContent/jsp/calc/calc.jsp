<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public void test(JspWriter out) throws Exception
{
	out.println("크크");
	// out.println = 브라우저에 띄움
	// System.out.println = eclipse Console에 띄움
}
%>
	<%
		// < % % > jsp >
		// <%안에 method 선언 X
		String op = request.getParameter("op");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		// out.println(op.equals("+")); - 오류(null과 equals 비교 불가)
		int result = 0;
		if (num1 != null) {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);

			if ("+".equals(op)) {
				result = n1 + n2;
			} else if ("-".equals(op)) {
				result = n1 - n2;
			} else if ("*".equals(op)) {
				result = n1 * n2;
			} else if ("/".equals(op)) {
				result = n1 / n2;
			} else {
				out.println("잘못된 연산자입니다.");
			}
		}
	%>
	<form>
		숫자1 : <input type="number" name="num1"> <select name=op>
			<option value="+">더하기</option>
			<option value="-">빼기</option>
			<option value="*">곱하기</option>
			<option value="/">나누기</option>
		</select> 숫자2 : <input type="number" name="num2">
		<input type="number" name ="result"  value="<%=result %>">
		<button>계산</button>
	</form>
	<%
		out.println("출력된다.");
	%>
	<br>
	<%="얘도 출력됨"%>
</body>
</html>