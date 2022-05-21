<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Quiz Number:<%=session.getAttribute("quiz_no") %> has started...  All the best!</h2>

<%
ResultSet rs = (ResultSet)session.getAttribute("result");
String[] q={"","","","","",""};

	if(rs.next())
	{
					
		q[0]=rs.getString(1);
		q[1]=rs.getString("question");
		q[2]=rs.getString(3);
		q[3]=rs.getString(4);
		q[4]=rs.getString(5);
		q[5]=rs.getString(6);

		
%>

<form method="post" action="/project_login/submit_answer_servlet">
Quiz no:<input name="quiz_no" value=<%=(String)session.getAttribute("quiz_no")%> READONLY/><br></br>
Qno:<input name="qno" value=<%=q[0]%> READONLY/><br></br>
Question:<textarea cols="50" rows="3" name="question" READONLY> <%=q[1]%> </textarea><br></br>
Option A:<input name="optiona" value=<%=q[2]%>  READONLY/><br></br>
Option B:<input name="optionb" value=<%=q[3]%>  READONLY/><br></br>
Option C:<input name="optionc" value=<%=q[4]%>  READONLY/><br></br>
Option D:<input name="optiond" value=<%=q[5]%>  READONLY/><br></br>

<select name="answer">
<option value="U">Leave it un-attempted</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>

</select>

<input type="submit"></input>

</form>

<%
	}
	else
	{
%>

		<form method="post" action="/project_login/finish_quiz_servlet">
		You have reached the end of quiz.<br></br>
		Thank you.<br></br>
		Please Press Submit.<br></br>
		<input type="submit"></input>

		</form>
		
<%		
	}
%>

	
</body>
</html>