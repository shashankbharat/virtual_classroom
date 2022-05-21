<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Management</title>
</head>
<body>
		<h2 style="text-align: center">
			<span style="font-family: tahoma, geneva, sans-serif"><span style="color: #ffa07a">Teacher/</span><span style="color: #ff8c00">Feedback_management.jsp</span></span></h2>
		<hr>
		<center>
		<table> 
		<tr>
			<td style="height: 53px">
				<form action="create_feedback.jsp" method="post" name="f1">
					<p style="text-align: center">
						&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Create Feedback"></p>
				</form>
			</td>
			<td style="height: 53px">
					<form action="delete_feedback.jsp" method="post" name="f1">
					<p style="text-align: center">
					&nbsp;<input name="goto_button" size="50" style="width: 226px; height: 24px" type="submit" value="Delete Feedback"></p>
					</form>
			</td>
		</tr>
		<tr>
			<td>
				<form action="Teacher_redirection_servlet" method="post" name="f1">
					<p style="text-align: center">
					&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Modify Feedback"></p>
				</form>
			</td>
			<td>
				<form action="Teacher_redirection_servlet" method="post" name="f1">
					<p style="text-align: center">
						&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Finalize Feedback"></p>
				</form>
		
			</td>
		</tr>
		<tr>
			<td>
				<form action="select_feedback_insert_question.jsp" method="post" name="f1">
					<p style="text-align: center">
					&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Insert Question"></p>
				</form>
			</td>
			<td>
				<form action="select_feedback_delete_question.jsp" method="post" name="f1">
					<p style="text-align: center">
						&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Delete Question"></p>
				</form>
			</td>
		</tr>
		</table>
		</center>
		<form action="Feedback_Details.jsp" method="post" name="f1">
			<p style="text-align: center">
				&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Show Feedback Details" /></p>
		</form>
		
		<form action="login_success.jsp" method="post" name="f1">
			<p style="text-align: center">
				&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="E X I T" /></p>
		</form>
		
		<hr>
	</body>

</html>