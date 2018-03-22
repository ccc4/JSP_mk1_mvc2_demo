<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String okBDelete = (String)request.getAttribute("okBDelete");
	String idx = (String)request.getAttribute("bIdx");

	if (okBDelete == "1") {
%>
		<script type="text/javascript">
			alert("게시글 삭제가 성공적으로 완료되었습니다.");
			location.href = "main.do";
		</script>
<%
	} else if (okBDelete == "0") {
%>
		<script type="text/javascript">
			alert("게시글 삭제에 실패했습니다. 다시 시도해주세요.");
			location.href = "bContent_view.do?bIdx=<%=idx %>";
		</script>
<%
	} else if (okBDelete == "-1") {
		%>
		<script type="text/javascript">
			alert("잘못된 접근 경로입니다.");
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
<title>성훈이의연습</title>
</head>
<body>

</body>
</html>