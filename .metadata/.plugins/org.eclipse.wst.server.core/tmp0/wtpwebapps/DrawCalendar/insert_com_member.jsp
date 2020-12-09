<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 가입</title>
</head>
<body>
<div id="container">
	<form action="insert_com_member.do" method="get">
		<table>
			<tr>
				<td><label for="id">아이디 : </label></td>
				<td><input type="text" name="id" id="id" placeholder="6~30자"/></td>
			</tr>
			<tr>
				<td><label for="password">비밀번호 : </label></td>
				<td><input type="password" name="password" id="password" placeholder="6~30자"/></td>
			</tr>
			<tr>
				<td><label for="password_check">비밀번호 확인 : </label></td>
				<td><input type="password" id="password_check" /></td>
			</tr>
			<tr>
				<td><label for="email">이메일 : </label></td>
				<td><input type="text" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><label for="phone">휴대폰 번호 : </label></td>
				<td><input type="text" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<td><label for="address">주소</label></td>
				<td><input type="text" name="address" id="address" /></td>
			</tr>
			<tr>
				<td><label for="reg_num">사업자 등록 번호 : </label></td>
				<td><input type="text" name="reg_num" id="reg_num" /></td>
			</tr>
			<tr>
				<td><label for="brand_name">상호명(영어) : </label></td>
				<td><input type="text" name="brand_name" id="brand_name" /></td>
			</tr>
			<tr>
				<td><label for="brand_name_ko">상호명 : </label></td>
				<td><input type="text" name="brand_name_ko" id="brand_name_ko" /></td>
			</tr>
		</table>
		<input type="submit" value="회원가입"/>	
	</form>
</div>

</body>
</html>