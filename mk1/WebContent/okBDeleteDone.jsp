<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okBDelete = (String)request.getAttribute("okBDelete");
	String idx = (String)request.getAttribute("bIdx");

	if (okBDelete == "1") {
%>
		<script type="text/javascript">
			alert("�Խñ� ������ ���������� �Ϸ�Ǿ����ϴ�.");
			location.href = "main.do";
		</script>
<%
	} else if (okBDelete == "0") {
%>
		<script type="text/javascript">
			alert("�Խñ� ������ �����߽��ϴ�. �ٽ� �õ����ּ���.");
			location.href = "bContent_view.do?bIdx=<%=idx %>";
		</script>
<%
	} else if (okBDelete == "-1") {
		%>
		<script type="text/javascript">
			alert("�߸��� ���� ����Դϴ�.");
			location.href = "main.do";
		</script>
		<%
	}
		%>
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