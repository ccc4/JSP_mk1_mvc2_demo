<%@page import="dao.MDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성훈이의연습</title>
</head>
<body>

	<div>
		<%
			String id = (String) session.getAttribute("id");
			String validMem = (String) session.getAttribute("validMem");

			if (validMem != null) {
		%>
		<span><%=id%> 님 반갑습니다.</span><br /> 
		<input type="button" value="회원정보수정" onclick="location.href='mModify_view.do'"> &nbsp;&nbsp; 
		<input type="button" value="로그아웃" onclick="location.href='mLogout.jsp'">
		<%
			} else if (validMem == null) {
		%>
		<input type="button" value="로그인하기" onclick="location.href='mLogin.jsp'">
		<%
			}
		%>
	</div>
	<br />
	<div>
		<table width="1000" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>아이디</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			
			<c:forEach items="${bList }" var="dto">
				<tr>
					<td>${dto.bIdx }</td>
					<td><a href="bContent_view.do?bIdx=${dto.bIdx }">${dto.bTitle }</a></td>
					<td>${dto.bId }</td>
					<td>${dto.bDate }</td>
					<td>${dto.bHit }</td>
				</tr>
			</c:forEach>
			
			<tr>
				<td colspan="5">paging 구현해야됨</td>
			</tr>
			<tr>
				<td colspan="5"><input type="button" value="글작성" onclick="location.href='bCheckWrite.jsp'"></td>
			</tr>
		</table>
	</div>



</body>
</html>