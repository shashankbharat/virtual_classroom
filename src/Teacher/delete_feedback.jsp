<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/project_login/CSS/cuscosky.css" />
<title>Delete Feedback</title>
</head>
<body>


		<h2 style="text-align: center">
			<big>Teacher/Delete_feedback.jsp</big></h2>
		<form action="/project_login/delete_feedback_servlet" method="post" name="f1"><br><br>
			<p style="text-align: center">
				Select Feedback to Delete:  
				<select name="feedback_no" style="width: 120px">
				

<%

String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
String feedback_no;
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select fb_no from shm.feedback_t";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
			
			while(rs.next())
			{
			feedback_no=rs.getString(1);
%>
  
  <option value="<%=feedback_no%>"><%=feedback_no%></option>

<%			}
%>			

</select>		

<%
		rs.close ();
			s.close ();
	//		con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}

 %>
 
 </p>
			<p style="text-align: center">
				<input name="submit_button" size="28" style="width: 148px; height: 24px" type="submit" value="Delete Feedback" /></p>
			
		</form>
		<p style="text-align: center">
			<input name="b1" size="49" style="width: 145px; height: 24px" type="submit" value="Return" /></p>
	


<hr/>	
<center>
<%
//String connectionURL = "jdbc:derby://localhost:1527/projectdb";
//Connection con=null;
//ResultSet rs;
		try {
//			Class.forName("org.apache.derby.jdbc.ClientDriver");
//			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.feedback_t";
			Statement s = con.createStatement();
//			s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
%>


<table>
<thead>
<TR>
<TH>FEEDBACK NO</TH>
<TH>FEEDBACK KEY</TH>
<TH>FEEDBACK DETAILS </TH>
</TR>
</thead>
<tbody>
<%		
String t_feedback_no="";
String t_feedback_key="";
String t_feedback_details="";
int x=0;			
			while (rs.next ()){
				t_feedback_no=rs.getString(1);
				t_feedback_key=rs.getString(2);
				t_feedback_details=rs.getString(4);
	if(x==1)
	 x=0;
	else
	 x=1; 
%>
<tr <% if(x==1){ %> class="odd" <%}%> >
	<td><%=t_feedback_no %></td>
	<td><%=t_feedback_key %></td>
	<td><%=t_feedback_details %></td>
</tr>

<%			}
			rs.close ();
			s.close ();
			con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}
%>
</tbody>
</table>

</center>

	
	
</body>
</html>
