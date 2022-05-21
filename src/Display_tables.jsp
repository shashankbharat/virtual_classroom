<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DB Tables</title>
</head>
<body>

<hr/>
<a href="db_prompt.jsp"> Enter and Execute SQL Queries by clicking here...</a>
<hr/>
<%
String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.users";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
%>

<table>

<%		
String usn="";
String name="";
String password="";
			
			while (rs.next ()){
				usn=rs.getString(1);
				name=rs.getString(2);
				password=rs.getString(3);
%>
<tr>
	<td><%=usn %></td>
	<td><%=name %></td>
	<td><%=password %></td>
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

</table>




<%



		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.answer_quiz_6";
			Statement s1 = con.createStatement();
			s1.executeQuery(sql);
			rs = s1.getResultSet();
%>
<hr></hr>
<table>
<tr><th> answer_quiz_6</th></tr>
<%		
String[] s={"","","","",""};
			
			while (rs.next ()){
				s[0]=rs.getString(1);
				s[1]=rs.getString(2);
				s[2]=rs.getString(3);
				s[3]=rs.getString(4);
				s[4]=rs.getString(5);
				
								
%>
<tr>
	<td><%=s[0] %></td>
	<td><%=s[1] %></td>
	<td><%=s[2] %></td>
	<td><%=s[3] %></td>
	<td><%=s[4] %></td>
					
</tr>

<%			}
			rs.close ();
			s1.close ();
			con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}
%>

</table>


</body>
</html>