<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okBWrite = (String)request.getAttribute("okBWrite");

	if (okBWrite == "1") {
%>
<script type="text/javascript">
	alert("�Խñ� �ۼ��� ���������� �Ϸ�Ǿ����ϴ�.");
	location.href = "main.do";
</script>
<%
	} else if (okBWrite == "0") {
%>
<script type="text/javascript">
	alert("�Խñ� �ۼ��� �����߽��ϴ�. �ٽ� �õ����ּ���.");
	location.href = "main.do";
</script>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>