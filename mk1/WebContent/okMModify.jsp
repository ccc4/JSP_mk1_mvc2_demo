<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okMModify = (String)request.getAttribute("okMModify");

	if (okMModify == "1") {
%>
<script type="text/javascript">
	alert("회원정보수정이 성공적으로 완료되었습니다.");
	location.href = "main.do";
</script>
<%
	} else if (okMModify == "0") {
%>
<script type="text/javascript">
	alert("회원정보수정에 실패했습니다. 다시 시도해주세요.");
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