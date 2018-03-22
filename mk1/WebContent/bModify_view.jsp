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
						아이디 : ${bModify_view.bId } &nbsp; 
						등록일 : ${bModify_view.bDate } &nbsp; 
						조회수 : ${bModify_view.bHit }
					</td>
				</tr>
				<tr>
					<td colspan="3" height="300" valign="top">
						<textarea rows="10" cols="60" name="bContent" maxlength="1000">${bModify_view.bContent }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="button" value="수정" onclick="modifyConfirm()">
					</td>
				</tr>
			</form>
		</table>

<%
	} else {
%>
		<script type="text/javascript">
			alert("잘못된 접근 경로입니다.");
			location.href="main.do";
		</script>
<%
	}
%>
</body>
</html>