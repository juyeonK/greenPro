<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="joinForm">
	<form action="doJoin" method="post">
		<table>
			<tr>
				<td>ID : </td>
				<td><input type="text" name="userId"></td>
				<td><input type="button" id="confirm" value="중복확인"></td>
				<td>
					<label id="confirm_result"></label>
				</td>
			</tr>
			<tr>
				<td>PW : </td>
				<td><input type="password" name="userPw" ></td>
				<td colspan="2">
					<label id="pw_check">check</label>
				</td>
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
		<input type="submit" value="회원가입" disabled="disabled">
	</form>
</div>

<script>
	$(document).ready(function(){
		$("#confirm").click(function(){
			var inputId = $("input[name='userId']").val();
			$.post(
				"confirmId",
				{userId : inputId},
				function(data, status){
					var result = $("#confirm_result");
					if(data=='NO'){
						result.text("NO");
					}else{
						result.text("OK");
					}
				}
			);
		});
		
		$("input[name='userPw']").keypress(function(){
			var reg_pw = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
			
			var userPw = $("input[name='userPw']").val();
			if( ! (reg_pw.test(userPw))){
				$("#pw_check").text("NO");
			}else{
				$("#pw_check").text("YES");
			}
		});
	});
</script>