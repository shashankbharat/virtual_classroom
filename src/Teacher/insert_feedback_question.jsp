<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="/project_login/CSS/coffee-with-milk.css" />
<head>
<script>
function insert_question_button()
{

document.f1.qno.disabled=false;
document.f1.submit();
}

function reset_form()
{
document.f1.qno.disabled=false;
document.f1.Create.disabled=true;
}

function my_validate()
{

var new_feedback_no1=document.f1.qno.value;
var j=0;
var size=document.hidden_form.elements.length;
var old_feedback_no1;

var pass=0;

	for (var i=0; i <= document.hidden_form.elements.length-2;i++) {

		if(new_feedback_no1==document.hidden_form.elements[i].value)
		{
		alert("The question nunmber already exists! enter different one");
		pass=1;
		}

	}
	if(pass==0)
	{
	alert("The feedback no entered is valid");
	document.f1.Create.disabled=false;
	document.f1.qno.disabled=true;
	}
}</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name='hidden_form'>
<%

String connectionURL = "jdbc:derby://localhost:1527/projectdb";
Connection con=null;
ResultSet rs;
String qno_existing;
int z=0;
		
//String new_feedback=(String)request.getAttribute("feedback_no_to_insert");	
// HttpSession session1=request.getSession();
// String new_feedback= (String)session1.getAttribute("feedback_no_to_insert"); 
// session1.removeAttribute("feedback_no_to_insert");
String new_feedback=request.getParameter("feedback_no");
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");
			con = DriverManager.getConnection(connectionURL,"admin","admin"); 
			String sql = "select qno from shm.feedback_"+new_feedback;
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
			
			
			
			while(rs.next())
			{z++;
			qno_existing=rs.getString(1);
  			
%>
<input type='hidden' name="question_no_<%=z%>" value="<%=qno_existing%>" />
<%

 			
 			}
							
		//	rs.close ();
			s.close ();
		//	con.close();
		
		}catch(Exception e)
			{
				System.out.println("Exception is ;");
				e.printStackTrace();
			}
			
		
	
 %>
 <input type='hidden' name="feedback_size" value="<%=z%>" />
 
 </form>
 
 
 
 
 
 
		<h2 style="text-align: center">
			<span style="font-family: tahoma, geneva, sans-serif"><span style="color: #ffcc66">Teacher</span><span style="color: rgb(255,160,122)">/Feedback_management/</span><span style="color: rgb(255,140,0)">insert_feedback_question.jsp</span></span></h2>
		<p>
			&nbsp;&nbsp;</p>
		<form action="/project_login/insert_feedback_question_servlet" method="post" name="f1">
			<p style="text-align: center">
				Feedback number : <%=new_feedback%>				
				<input type='hidden' name="feedback_no" style="width: 102px" value =<%=new_feedback%> READONLY/></p>
			<p style="text-align: center">
				Enter question no:<br />
				<input maxlength="10" name="qno" size="10" style="width: 124px; height: 20px" type="text" /></p>
			<p style="text-align: center">
				Enter Question:<br />
				<textarea cols="50" name="question" rows="5"></textarea></p>
			
			<p style="text-align: center">
				<input name="validate" onclick="my_validate()" size="34" style="width: 127px; height: 24px" type="button" value="Validate" /> <input 27="" disabled="disabled" name="Create" onclick="insert_question_button()" size="20" style="width: 127px; height: 24px" type="button" value="Inser Question" /> <input name="Reset" onclick="reset_form()" size="43" style="width: 123px; height: 24px" type="reset" value="Reset" /></p>
		</form>
		<form action="Feedback_management.jsp" method="post" name="f2">
			<p style="text-align: center">
				<span style="color: rgb(255,0,0)"><input name="goto_button" size="37" style="width: 230px; height: 24px" type="submit" value="Return to Feedback Management" /></span></p>
		</form>
<hr/>

				
<center>
<%
		try {
			String sql = "select * from shm.feedback_"+new_feedback;
			Statement s = con.createStatement();
			s.executeQuery(sql);
			rs = s.getResultSet();
%>


<table>
<thead>
<TR>
<TH>QUESTION NO</TH>
<TH>QUESTION </TH>
</TR>
</thead>
<tbody>
<%		
String t_feedback_no="";
String t_feedback_details="";
int x=0;			
			while (rs.next ()){
				t_feedback_no=rs.getString(1);
				t_feedback_details=rs.getString(2);
	if(x==1)
	 x=0;
	else
	 x=1; 
%>
<tr <% if(x==1){ %> class="odd" <%}%> >
	<td><%=t_feedback_no %></td>
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