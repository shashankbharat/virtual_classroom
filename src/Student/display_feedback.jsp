<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Display</title>
</head>
<body>
<h2>Feedback Number:<%=session.getAttribute("fb_no") %> </h2>

<%
ResultSet rs = (ResultSet)session.getAttribute("result");
String[] q={"",""};

	if(rs.next())
	{
					
		q[0]=rs.getString(1);
		q[1]=rs.getString(2);
		
%>

<form method="post" action="/project_login/submit_feedbck_answer_servlet">
Feedback no:<input name="fb_no" value=<%=(String)session.getAttribute("fb_no")%> READONLY/><br></br>
Qno:<input name="qno" value=<%=q[0]%> READONLY/><br></br>
Question:<textarea cols="50" rows="3" name="question" READONLY> <%=q[1]%> </textarea><br></br>
GOOD<input type="radio"name="answer" value="1"  />
<input type="radio" name="answer" value="2"  />
<input type="radio" name="answer" value="3"  />
<input type="radio" name="answer" value="4"  />
<input type="radio" name="answer" value="5"  />BAD<br/><br/>


<input type="submit"></input>

</form>

<%
	}
	else
	{
%>

		<form method="post" action="Student/login_success.jsp">
		You have reached the end of feedback.<br></br>
		Thank you.<br></br>
		Please Press Submit.<br></br>
		<input type="submit" name="goto_button" value="End Feedback"></input>

		</form>
		
<%		
	}
%>

	
</body>
</html>