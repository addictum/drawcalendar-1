<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<div id="container">
	<form action="login.do">
		<table>
			<tr>
				<td><label for="id">아이디 : </label></td>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<td><label for="password">비밀번호 : </label></td>
				<td><input type="password" name="password" id="password" /></td>
			</tr>
		</table>
		<input type="submit" value="로그인" />
	</form>
</div>
</body>
</html>