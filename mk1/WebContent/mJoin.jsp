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

	<table>
		<form action="mJoin.do" method="post" name="reg_frm">
			<tr>
				<td>���̵�(*)</td>
				<td>
					<input type="text" name="mId" maxlength="12">
					<input type="button" value="�ߺ�Ȯ��" >
				</td>
			</tr>
			<tr>
				<td>��й�ȣ(*)</td>
				<td><input type="password" name="mPw" maxlength="12"></td>
			</tr>
			<tr>
				<td>��й�ȣ���Է�(*)</td>
				<td><input type="password" name="mPw_check" maxlength="12"></td>
			</tr>
			<tr>
				<td>�̸�(*)</td>
				<td><input type="text" name="mName" maxlength="8"></td>
			</tr>
			<tr>
				<td>����(*)</td>
				<td>
					<input type="radio" name="mGender" value="1" checked>���� &nbsp;
					<input type="radio" name="mGender" value="0">����
				</td>
			</tr>
			<tr>
				<td>����ó(*)</td>
				<td>010 - 
					<input type="text" name="mPhone1" maxlength="4"> - 
					<input type="text" name="mPhone2" maxlength="4">
				</td>
			</tr>
			<tr>
				<td>�̸���(*)</td>
				<td>
					<input type="text" name="mEmail1"> @ 
					<input type="text" name="mEmail2">
				</td>
			</tr>
			<tr>
				<td>�ּ�(*)</td>
				<td><input type="text" name="mAddress" maxlength="50"></td>
			</tr>
			<tr>
				<td colspan="2">(*) �� �ʼ��Է»����Դϴ�.</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ȸ������" onclick="joinConfirm()"></td>
			</tr>
			
		</form>
	</table>

</body>
</html>