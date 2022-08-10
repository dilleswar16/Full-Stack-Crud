<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
<script type="text/javascript">
function validateform(e)
{
	/* var lname=document.myform.lname.value;  
	var fname=document.myform.fname.value;
	var emailid=document.myform.emailid.value;
	console.log(fname);
	console.log(lname);
	console.log(emailid);
	
	if(fname == "" || fname == null){
		alert("FirstName can't be blank");  
		  return false; 
	}
	else if(lname == "" || lname == null){
		alert("LastName can't be blank");  
		  return false; 
	}
	else if(emailid == "" || emailid == null){
		alert("emailid can't be blank");  
		  return false; 
	}
	
	return true; */
	console.log("hello");
	return true;
	
	   
}
</script>
</head>
<body>
	<div class="container">
		<h1 class="mx-auto">Student Management System</h1>
		<hr>
		<h2 class="text-center" >Save Student</h2>

		<div class="row justify-content-center">
		 <c:url var="add_student" value="/addStudent"/>
        <form:form action="${add_student}" method="post" name="myform"
        modelAttribute="student" class="mx-4 my-4 col-4" onsubmit="return validateform(event)">
            <form:label path="firstName">FirstName: </form:label> 
            <form:input type="text" path="firstName" id="fname" name="fname" placeholder="FirstName" minlength="3" 
            maxlength="20" required="true" pattern="^[A-Za-z -]+$" title="Only Alphabets & spaces with 3-20 length"/> <br/>
            <form:label path="lastName">LastName: </form:label>
             <form:input type="text" path="lastName" id="lname" name="lname" placeholder="LastName" 
             minlength="3" maxlength="20" required="true"  pattern="[A-Za-z0-9]{3,20}" title="Only Alphabets & spaces & numbers with 3-20 length"/> <br/>
            <form:label path="emailId">EmailId :   </form:label> 
            <form:input path="emailId" name="emailid" id="emailid" placeholder="EmailId" minlength="3" 
            maxlength="50" required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"/> <br/>
            <div class="row justify-content-center">
            <input type="submit" class="btn btn-primary justify-content-center" value="Add Student"/>
            </div>
        </form:form>
		</div>
		
		
		<hr>
		
		
	</div>
</body>
</html>