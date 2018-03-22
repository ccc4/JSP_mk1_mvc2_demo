<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
</head>
<body>

	<table width="1000" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td colspan="3">${bContentView.bTitle }</td>
		</tr>
		<tr>
			<td>
				아이디 : ${bContentView.bId } &nbsp;
				등록일 : ${bContentView.bDate } &nbsp;
				조회수 : ${bContentView.bHit }
			</td>
		</tr>
		<tr>
			<td colspan="3" height="300" valign="top">${bContentView.bContent }</td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="button" value="목록" onclick="location.href='main.do'">
				<input type="button" value="수정" onclick="location.href='okBModify_View.jsp?bId=${bContentView.bId }&bIdx=${bContentView.bIdx }'">
				<input type="button" value="삭제" onclick="location.href='okBDelete.jsp?bId=${bContentView.bId }&bIdx=${bContentView.bIdx }'">
			</td>
		</tr>
	</table>

</body>
</html>