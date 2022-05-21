<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" type="text/css" href="simple_forms.css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
create table shm.aswer_quiz_6(usn varchar(20),qno varchar(10),markedans varchar(30),markobtained int,attempted varchar(10));
<br><br>
<%
int i=1;

while(i<=10)
{
%>
insert into shm.answer_quiz_6(usn,qno,attempted) values('csasd','<%=i%>','no');<br>

<%
i++;
}
 %>

</body>
</html>