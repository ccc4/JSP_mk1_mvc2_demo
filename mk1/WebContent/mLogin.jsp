<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������ǿ���</title>
<script type="text/javascript" src="javascript/member.js" charset="UTF-8"></script>
</head>
<body>

	<form action="mLogin.do" method="post" name="login_frm">
		<input type="text" name="mId" placeholder="���̵�" onkeypress="if(event.keyCode==13){loginConfirm(); return false;}" autofocus><br />
		<input type="password" name="mPw" placeholder="��й�ȣ" onkeypress="if(event.keyCode==13){loginConfirm(); return false;}"><br />
		<input type="button" value="�α���" onclick="loginConfirm()">&nbsp;&nbsp;
		<input type="button" value="ȸ������" onclick="location.href='mJoin.jsp'">
	</form>

</body>
</html>