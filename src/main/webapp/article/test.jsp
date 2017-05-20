<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>

	<p id ="test">test technology</p>
	<form id="exportXLSForm" action="autoboot/exportAutoResult" method="post" style="display:inline;">
		<button type="submit" class="new_button">导出EXCEL</button>
	</form>
	<a href="list">xx</a>
	
	<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><p>
</c:forEach>
</div>
</body>

<script>
var t = document.getElementById("test");
/* alert(t.innerHTML); */
document.getElementById("test").innerHTML = "test form";
</script>
</html>