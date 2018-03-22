<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okBModify = (String)request.getAttribute("okBModify");
	String idx = (String)request.getAttribute("bIdx");

	if (okBModify == "1") {
%>
<script type="text/javascript">
	alert("게시글 수정이 성공적으로 완료되었습니다.");
	location.href = "bContent_view.do?bIdx=<%=idx %>";
</script>
<%
	} else if (okBModify == "0") {
%>
<script type="text/javascript">
	alert("게시글 수정에 실패했습니다. 다시 시도해주세요.");
	location.href = "bContent_view.do?bIdx=<%=idx %>";
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