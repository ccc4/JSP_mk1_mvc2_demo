<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okMLogin = (String) request.getAttribute("okMLogin");

	if (okMLogin == "1") {
%>
<script type="text/javascript">
	alert("�α��ο� �����߽��ϴ�.");
	location.href = "main.do";
</script>
<%
	} else if (okMLogin == "0") {
%>
<script type="text/javascript">
	alert("���̵� �Ǵ� ��й�ȣ�� �ٸ��ϴ�.");
	location.href = "mLogin.jsp";
</script>
<%
	} else if (okMLogin == "-1") {
%>
<script type="text/javascript">
	alert("���̵� �������� �ʽ��ϴ�.");
	location.href = "mLogin.jsp";
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