<%@page import="dto.MDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
<script type="text/javascript" src="javascript/member.js" charset="UTF-8"></script>
</head>
<body>
	<table>
		<form action="mModify.do" method="post" name="reg_frm">
			<tr>
				<td>아이디</td>
				<td>${sessionScope.id }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="mName" maxlength="8" value="${getMember.mName }"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<c:choose>
						<c:when test="${getMember.mGender == 1 }">
							<input type="radio" name="mGender" value="1" checked>남자 &nbsp;
							<input type="radio" name="mGender" value="0">여자
						</c:when>
						<c:otherwise>
							<input type="radio" name="mGender" value="1">남자 &nbsp;
							<input type="radio" name="mGender" value="0" checked>여자
						</c:otherwise>
				</c:choose>
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>010 - 
					<input type="text" name="mPhone1" maxlength="4" value="${getMember.mPhone1 }"> - 
					<input type="text" name="mPhone2" maxlength="4" value="${getMember.mPhone2 }">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" name="mEmail1" value="${getMember.mEmail1 }"> @ 
					<input type="text" name="mEmail2" value="${getMember.mEmail2 }">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="mAddress" value="${getMember.mAddress }" maxlength="50"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="회원정보수정" onclick="modifyConfirm()"></td>
			</tr>
			
		</form>
	</table>

</body>
</html>