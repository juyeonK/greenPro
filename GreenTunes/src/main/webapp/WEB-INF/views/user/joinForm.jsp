<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="joinForm">
	<form action="doJoin" method="post">
		<table>
			<tr>
				<td>ID : </td>
				<td><input type="text" name="userId"></td>
				<td><input type="button" value="중복확인"></td>
			</tr>
			<tr>
				<td>PW : </td>
				<td><input type="password" name="userPw"></td>
				<td></td>
			</tr>
			<tr>
				<td>PWRE : </td>
				<td><input type="password" name="userPwRe"></td>
				<td></td>
			</tr>
			<tr>
				<td>EMAIL : </td>
				<td><input type="text" name="userMail"></td>
				<td></td>
			</tr>
			<tr>
				<td>PHONE : </td>
				<td><input type="text" name="userPhone" placeholder="01000000000"></td>
				<td></td>
			</tr>
			<tr>
				<td>GENDER : </td>
				<td>
					<input type="radio" name="userGender" value="male">남자
					<input type="radio" name="userGender" value="female">여자
				</td>
				<td></td>
			</tr>
			<tr>
				<td>NAME : </td>
				<td><input type="text" name="userName"></td>
				<td></td>
			</tr>
			<tr>
				<td>BIRTH : </td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<input type="submit" value="회원가입">
	</form>
</div>
