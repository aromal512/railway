<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<title>Reservation Form</title>
</head>
<body>
	<form:form action="submitForm" modelAttribute="reservation">
First Name: <form:input path="firstName" />
		<br>
		<br>
Last Name: <form:input path="lastName" />
		<br>
		<br>
Gender:
Male<form:radiobutton path="gender" value="Male" />
Female<form:radiobutton path="gender" value="Female" />
		<br>
Meals:
BreakFast <form:checkbox path="food" value="BreakFast" />
Lunch <form:checkbox path="food" value="Lunch" />
Dinner <form:checkbox path="food" value="Dinner" />
		<br>
Leaving From:
<form:select path="cityFrom">
			<form:option value="Kerala" label="Kerala" />
			<form:option value="Delhi" label="Delhi" />
			<form:option value="Kashmir" label="Kashmir" />
			<form:option value="Nepal" label="Nepal" />
		</form:select>
		<br>
		<br>
Going To:
<form:select path="cityTo">
			<form:option value="Kerala" label="Kerala" />
			<form:option value="Delhi" label="Delhi" />
			<form:option value="Kashmir" label="Kashmir" />
			<form:option value="Nepal" label="Nepal" />
		</form:select>
		<input type="submit" value="Reserve">
	</form:form>
</body>
</html>