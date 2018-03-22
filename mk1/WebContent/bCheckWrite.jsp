<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String validMem = (String) session.getAttribute("validMem");

	if (validMem != null) {
%>
	<script type="text/javascript">
		location.href = "bWrite.jsp";
	</script>
<%
	} else if (validMem == null) {
%>
	<script type="text/javascript">
		alert("로그인 후 이용가능합니다.");
		location.href = "main.do";
	</script>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
</head>
<body>

</body>
</html>