<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.*"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/project_login/CSS/coffee-with-milk.css" />
</head>

<body>
<h2 style="text-align: center">
			<span style="font-family: tahoma, geneva, sans-serif"><span style="color: rgb(255,204,102)">Teacher</span><span style="color: rgb(255,160,122)">/Quiz_management/</span><span style="color: rgb(255,140,0)">insert_question.jsp</span></span></h2>
	


 
	
<form action="insert_question.jsp" method="post" name="f1">
			<p style="text-align: center">
				&nbsp;</p>
			<p style="text-align: center">
				&nbsp;</p>
			<p style="text-align: center">
				Select Quiz:&nbsp;&nbsp; 
						<select name="quiz_no" style="width:120px;align:center;" >
<%

String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
String quiz_no2;
int z=0;

		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select * from shm.quiz_t";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
			
			
	
			while(rs.next())
			{z++;
			quiz_no2=rs.getString(1);
  			
%>
<option><%=quiz_no2%></option>
<%			
 			}
							
//			rs.close ();
			s.close ();
//			con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}				

 %>
 </select>
				</p>
			
			<p style="text-align: center">

				<input name="insert_question" size="109" style="width: 198px; height: 24px"  type="submit" value="Proceed to insert question" /></p>
		</form>
 				<form action="Quiz_management.jsp">
 				<p style="text-align: center">
				<input name="goto_button" size="100" style="width: 190px; height: 24px"  type="submit" value="Back to quiz management" />
				</p>
				</form>
				
<hr/>
				
<center>
<%
		try {
			String sql = "select * from shm.quiz_t";
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
%>


<table>
<thead>
<TR>
<TH>QUIZ NO</TH>
<TH>QUIZ DETAILS </TH>
</TR>
</thead>
<tbody>
<%		
String t_quiz_no="";
String t_quiz_details="";
int x=0;			
			while (rs.next ()){
				t_quiz_no=rs.getString(1);
				t_quiz_details=rs.getString(4);
	if(x==1)
	 x=0;
	else
	 x=1; 
%>
<tr <% if(x==1){ %> class="odd" <%}%> >
	<td><%=t_quiz_no %></td>
	<td><%=t_quiz_details %></td>
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