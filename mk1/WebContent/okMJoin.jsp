<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okMJoin = (String)request.getAttribute("okMJoin");

	if (okMJoin == "1") {
%>
<script type="text/javascript">
	alert("회원가입이 성공적으로 완료되었습니다.");
	location.href = "mLogin.jsp";
</script>
<%
	} else if (okMJoin == "0") {
%>
<script type="text/javascript">
	alert("회원가입에 실패했습니다. 다시 시도해주세요.");
	location.href = "mLogin.jsp";
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