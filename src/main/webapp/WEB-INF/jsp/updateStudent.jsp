<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Managment System</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
</head>
<body>

<div class="container">
		<h1 class="mx-auto">Student Management System</h1>
		<hr>
		<h2 class="text-center" >Update Student</h2>

		<div class="row justify-content-center">
		 <c:url var="add_student" value="/addStudent"/>
        <form:form action="${add_student}" method="post" modelAttribute="student" class="mx-4 my-4 col-4">
        	<form:input type="hidden" path="id" />
            <form:label path="firstName">FirstName: </form:label> 
            <form:input type="text" path="firstName" placeholder="FirstName" /> <br/>
            <form:label path="lastName">LastName: </form:label>
             <form:input type="text" path="lastName" placeholder="LastName"/> <br/>
            <form:label path="emailId">EmailId :   </form:label> 
            <form:input path="emailId" placeholder="EmailId"/> <br/>
            <div class="row justify-content-center">
            <input type="submit" class="btn btn-primary justify-content-center" value="Update Student"/>
            </div>
        </form:form>
		</div>

</body>
</html>