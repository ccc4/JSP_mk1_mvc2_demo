<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("id");
	String id_Check = (String)request.getParameter("bId");
	String idx = request.getParameter("bIdx");
	
	if(id != null && id.equals(id_Check)) {
%>
		<script type="text/javascript">
			if(confirm("���� �����Ͻðڽ��ϱ�?")) {
				location.href="bDelete.do?bId=<%=id %>&bIdx=<%=idx %>";
			} else {
				history.back();
			}
		</script>	
<%
	} else {
%>
		<script type="text/javascript">
			alert("���� �ܿ��� ������ �� �����ϴ�.");
			history.back();
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