<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okMModify = (String)request.getAttribute("okMModify");

	if (okMModify == "1") {
%>
<script type="text/javascript">
	alert("ȸ������������ ���������� �Ϸ�Ǿ����ϴ�.");
	location.href = "main.do";
</script>
<%
	} else if (okMModify == "0") {
%>
<script type="text/javascript">
	alert("ȸ������������ �����߽��ϴ�. �ٽ� �õ����ּ���.");
	location.href = "main.do";
</script>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������ǿ���</title>
</head>
<body>

</body>
</html>