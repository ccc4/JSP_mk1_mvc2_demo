<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������ǿ���</title>
<script type="text/javascript" src="javascript/board.js" charset="UTF-8"></script>
</head>
<body>

<%
	String id = (String)session.getAttribute("id");
	String id_Check = (String)request.getParameter("bId");
	
	if(id != null && id.equals(id_Check)) {
%>

		<table width="1000" cellpadding="0" cellspacing="0" border="1">
			<form action="bModify.do" method="post" name="write_frm">
				<input type="hidden" name="bIdx" value="${bModify_view.bIdx }">
				<tr>
					<td colspan="3">
						<input type="text" name="bTitle" value="${bModify_view.bTitle }" size="60" maxlength="30">
					</td>
				</tr>
				<tr>
					<td>
						���̵� : ${bModify_view.bId } &nbsp; 
						����� : ${bModify_view.bDate } &nbsp; 
						��ȸ�� : ${bModify_view.bHit }
					</td>
				</tr>
				<tr>
					<td colspan="3" height="300" valign="top">
						<textarea rows="10" cols="60" name="bContent" maxlength="1000">${bModify_view.bContent }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="button" value="����" onclick="modifyConfirm()">
					</td>
				</tr>
			</form>
		</table>

<%
	} else {
%>
		<script type="text/javascript">
			alert("�߸��� ���� ����Դϴ�.");
			location.href="main.do";
		</script>
<%
	}
%>
</body>
</html>