<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
</head>
<body>
<div align="center" class="container my-2">

<h1>Students List</h1>

<a href="addStudent" class="btn btn-primary mb-3">Add Student</a>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col" >Actions</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listStudents}" var="student">
    <tr>
      <th scope="row">${ student.id}</th>
      <td>${ student.firstName}</td>
      <td>${ student.lastName}</td>
      <td>${ student.emailId}</td>
      <td><a class="btn btn-sm btn-success" href="/updateStudent/${student.id }">Update</a>
      <a class="btn btn-sm btn-danger" href="/deleteStudent/${student.id }">Delete</a></td>
    </tr>
    </c:forEach>
    </tbody>
</div>

</body>

</html>