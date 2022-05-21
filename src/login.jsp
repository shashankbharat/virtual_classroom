<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/CSS/formstyle.css" />
		<title>CKEditor Sample</title>
	</head>
	<body>
	<%
session.invalidate();

%><h2 style="text-align: center">
			<br><br><span style="color: rgb(102, 204, 51);"><span style="font-family: tahoma, geneva, sans-serif"><big><strong>Student Login Portal</strong></big></span></span></h2>
		<p></p>
		
	<center>	
		<form action="login_servlet" id="ff1" method="post" name="f1">
	<fieldset>
	<legend>Login Form for Students</legend>
			<table align="center" border="0" cellpadding="1" cellspacing="1" style="width: 311px; height: 84px">
				<tbody>
					<tr>
						<td>
							<p style="text-align: right">
								<span style="font-family: tahoma, geneva, sans-serif"><font face="">Login:</font></span></p>
						</td>
						<td>
							<span style="font-family: tahoma, geneva, sans-serif"><input maxlength="30" name="f1_username" size="30" style="width: 210px; height: 22px" type="text"></span></td>
					</tr>
					<tr>
						<td style="text-align: right">
							<span style="font-family: tahoma, geneva, sans-serif"><span style="font-family: tahoma, geneva, sans-serif">Password:</span></span></td>
						<td>
							<span style="font-family: tahoma, geneva, sans-serif"><input maxlength="30" name="f1_password" size="30" style="width: 210px; height: 22px" type="password"></span></td>
					</tr>
				</tbody>
			</table>
			
				<span _fck_bookmark="1" style="display: none">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span _fck_bookmark="1" style="display: none">&nbsp;</span><input name="login" size="46" style="width: 125px; height: 24px" type="submit" value="Login"><span _fck_bookmark="1" style="display: none">&nbsp;</span>&nbsp;<input name="reset" size="45" style="width: 128px; height: 24px" type="reset" value="Reset"><br>
				&nbsp;
		</fieldset>
		</form>
		<br><img src="/Pictures/msrit_banner.jpg">
		
		</center>
	</body>
</html>
