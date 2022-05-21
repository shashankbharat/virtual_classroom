<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="my_style.css" />
<link rel="stylesheet" href="screen.css" media="screen" />


	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center">
			<span style="font-family: tahoma, geneva, sans-serif"><span style="color:rgb(102, 204, 102);">Student/</span><span style="color: rgb(51, 153, 51);">login_success.jsp</span></span></h2>
		<hr>
		<form action="Student/Begin_Quiz.jsp" method="post" name="f1">
			<p style="text-align: center">
				&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="Quiz Mode" /></p>
		</form>
		<form action="Student/Begin_Feedback.jsp" method="post" name="f2">
			<p style="text-align: center">
				&nbsp;<input name="goto_button" size="50" style="width: 226px; height: 24px" type="submit" value="Feedback Mode" /></p>
		</form>
	
		<form method="post" name="logout_form" action="/project_login/logout_servlet">
			<p style="text-align: center">
				&nbsp;<input name="goto_button" size="47" style="width: 226px; height: 24px" type="submit" value="LOGOUT" /></p>
		</form>
		
			
<hr></hr>		

<center>	
<br><br></br>
<TABLE style="background-color: #CEF6F5;" border="1">

        <!-- use getId() method to get a unique session id -->
<tr><th colspan="2">This table is for debugging purpose only</th></tr>
        <tr><th>Session ID</th><td><%=session.getId()%></td></tr>

	<!-- getCreationTime() method returns date and time 
        when session was created -->
        <tr><th>Session creation time</th><td><%=new Date(session.getCreationTime())%></td></tr>

	<!--getlastAcccessTime() method returns date and time of 
        last access by this session id-->
        <tr><th>Last accessed time</th><td><%=new Date(session.getLastAccessedTime())%></td></tr>

	<!-- this counter variable will print how much time user 
        visited in application -->
 <tr><th>Logged name</th><td><%=session.getAttribute("loggedname")%></td></tr>
 
  <tr><th>Logged USN</th><td><%=session.getAttribute("loggedusn")%></td></tr>
  
</TABLE>
</center>
		
	

</body>
</html>