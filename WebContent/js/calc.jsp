<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	숫자 1 :
	<input type="number" id="num1">
	<!-- name은 form 태그에서 상당히 중요하다 -->
	+ 숫자 2 :
	<input type="number" id="num2">
	<button onclick="calc();">계산하기</button>
	<!-- 클릭했을 때 무언가가 발생하는 역할 on! 더블쿼터 안은 JS영역-->
	<!--호출할 때 function을 읽고 내보낸다. 다 읽히지 않았는데 나올때도 있다. 그건 잘못만든방법-->

	<script>
		function calc(){
			/*eturn하면 return type function이 되고 안쓰면 알아서 void function이 된다
			일반적으로 JS는 싱글쿼트 html은 더블쿼트를 사용한다.
			모든게 element로 이루어져있다.elements라고 부른다
			많이 사용한다*/
			var n1 = document.getElementById("num1");
			var n2 = document.getElementById("num2");
			alert(parseInt(n1.value) + parseInt(n2.value));
			
		
			//돈의 가치로 쓸 수 있는건 스크립트에서 하지 않는다 ID PWD 같은것도 마찬가지.
		} 
	</script>
</body>
</html>