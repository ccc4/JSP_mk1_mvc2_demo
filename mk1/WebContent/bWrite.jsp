<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
<script type="text/javascript" src="javascript/board.js" charset="UTF-8"></script>
</head>
<body>

	<%
		String validMem = (String) session.getAttribute("validMem");

		if (validMem == null) {
	%>
		<script type="text/javascript">
			alert("로그인시 이용가능합니다.");
			location.href="main.do";
		</script>
	<%
			}
	%>
	<table width="1000" cellpadding="0" cellspacing="0">
		<form action="bWrite.do" method="post" name="write_frm">
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="60" maxlength="30"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="60" name="bContent" maxlength="1000"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="작성완료" onclick="writeConfirm()"> &nbsp;
					<input type="reset" value="다시쓰기"> &nbsp;
					<input type="button" value="목록으로" onclick="location.href='main.do'">
				</td>
			</tr>
		</form>
	</table>

</body>
</html>