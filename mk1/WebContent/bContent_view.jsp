<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������ǿ���</title>
</head>
<body>

	<table width="1000" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td colspan="3">${bContentView.bTitle }</td>
		</tr>
		<tr>
			<td>
				���̵� : ${bContentView.bId } &nbsp;
				����� : ${bContentView.bDate } &nbsp;
				��ȸ�� : ${bContentView.bHit }
			</td>
		</tr>
		<tr>
			<td colspan="3" height="300" valign="top">${bContentView.bContent }</td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="button" value="���" onclick="location.href='main.do'">
				<input type="button" value="����" onclick="location.href='okBModify_View.jsp?bId=${bContentView.bId }&bIdx=${bContentView.bIdx }'">
				<input type="button" value="����" onclick="location.href='okBDelete.jsp?bId=${bContentView.bId }&bIdx=${bContentView.bIdx }'">
			</td>
		</tr>
	</table>

</body>
</html>