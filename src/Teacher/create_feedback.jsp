<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Create Feedback</title>
<script type="text/javascript">
function create_feedback_button()
{
document.f1.feedback_no.disabled=false;
document.f1.submit();
}
function reset_form()
{
document.f1.feedback_no.disabled=false;
document.f1.Create.disabled=true;

}
function my_validate()
{
var new_feedback_no1=document.f1.feedback_no.value;
var j=0;
var size=document.hidden_form.elements.length;
var old_feedback_no1;

var pass=0;
for (var i=0; i <= document.hidden_form.elements.length-2;i++) {

	if(new_quiz_no1==document.hidden_form.elements[i].value)
	{
		alert("The feedback number already exists! enter a different one");
	pass=1;
	}

}
if(pass==0)
{
alert("The feedback nnumber entered is valid");
document.f1.Create.disabled=false;
document.f1.feedback_no.disabled=true;
}
}
  
function my_validate1()
{
alert("thank you + document.hidden_form.elements.length");
}
</script>
</head>
	<body>


<form name='hidden_form'>
<%

String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
String feedback_no2;
int z=0;

		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.feedback_t";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
			
			
			
			while(rs.next())
			{z++;
			feedback_no2=rs.getString(1);
  			
%>
<input type='hidden' name="feedback_id_<%=z%>" value="<%=feedback_no2%>" />
<%

 			
 			}
							
			rs.close ();
			s.close ();
			con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}
			
		
			
			

 %>
 <input type='hidden' name="feedback_size" value="<%=z%>" />
 
 </form>
 
 
		<h2 style="text-align: center">
			<span style="font-family: tahoma, geneva, sans-serif"><span style="color: #ffa07a">Teacher/</span><span style="color: #ff8c00">create_feedback.jsp</span></span></h2>
		<p>
			&nbsp;&nbsp;</p>
		<form action="/project_login/create_feedback_servlet" method="post" name="f1">
			<p style="text-align: center">
				Enter Feedback number<br />
				<input maxlength="10" name="feedback_no" type="text" /></p>
			<p style="text-align: center">
				Enter PassKey<br />
				<input maxlength="10" name="feedback_key" type="text" /></p>
			<p style="text-align: center">
				Enter Feedback Description<br />
				<textarea cols="50" name="feedback_details" rows="3"></textarea></p>
			<p style="text-align: center">
				<input name="validate" onclick="my_validate()" size="34" style="width: 127px; height: 24px" type="button" value="Validate" />
				<input name="Create" disabled="true" size"27" style="width: 127px; height: 24px" type="button" value="Create Feedback" onclick="create_feedback_button()" />
				<input name="Reset" onclick="reset_form()"size="43" style="width: 123px; height: 24px" type="reset" value="Reset" /></p>
		</form>
		<form action="Feedback_management.jsp" method="post" name="f2">
			<p style="text-align: center">
				<span style="color: #f00"><input name="goto_button" size="37" style="width: 226px; height: 24px" type="submit" value="Cancel Feedback Creation" /></span></p>
		
		</form>
		
		

	</body>
</html>