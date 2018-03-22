<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
<script type="text/javascript" src="javascript/member.js" charset="UTF-8"></script>
</head>
<body>

	<form action="mLogin.do" method="post" name="login_frm">
		<input type="text" name="mId" placeholder="아이디" onkeypress="if(event.keyCode==13){loginConfirm(); return false;}" autofocus><br />
		<input type="password" name="mPw" placeholder="비밀번호" onkeypress="if(event.keyCode==13){loginConfirm(); return false;}"><br />
		<input type="button" value="로그인" onclick="loginConfirm()">&nbsp;&nbsp;
		<input type="button" value="회원가입" onclick="location.href='mJoin.jsp'">
	</form>

</body>
</html>