<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
<script language="javascript">

function enable_input_key_Field()
{

document.form_select_fb.input_fb_key.disabled=false;
}

function enable_submit_button()
{
document.form_select_fb.submit_button.disabled=false;
}
/*
function checkifempty(){
if (document.aform.contentarea.value=='')
document.aform.button.disabled=true
else
document.aform.button.disabled=false
}
if (document.all || document.getElementById)
setInterval("checkifempty()",100)
 */
 
</script>


</head>
<body>


<p style="text-align:center;font-weight: bold">

Feedback
</p>
<br><br>

<form name="form_select_fb" method="post" action="/project_login/begin_feedback_servlet">
Select a Feedback to begin:  
<select name="input_fb_no" onclick="javascript:enable_input_key_Field()" >

<%

String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
String fb_no;
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.feedback_t WHERE status="+"'yes'";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
			
			while(rs.next())
			{
			fb_no=rs.getString(1);
%>
  
  <option value="<%=fb_no%>"><%=fb_no%></option>

<%			}
%>			

</select>		

<%
			rs.close ();
			s.close ();
			con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}

 %>
<br/><br/>

Enter Feedback Key <input name="input_fb_key" disabled="disabled" onchange="javascript:enable_submit_button()"></input>

<br><br></br>

<input name="submit_button" type="submit" value="begin feedback"/>

</form>


</body>
</html>