<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okMJoin = (String)request.getAttribute("okMJoin");

	if (okMJoin == "1") {
%>
<script type="text/javascript">
	alert("ȸ�������� ���������� �Ϸ�Ǿ����ϴ�.");
	location.href = "mLogin.jsp";
</script>
<%
	} else if (okMJoin == "0") {
%>
<script type="text/javascript">
	alert("ȸ�����Կ� �����߽��ϴ�. �ٽ� �õ����ּ���.");
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