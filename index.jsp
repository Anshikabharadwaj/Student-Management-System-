<%@page import="StudentModel.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="StudentModel.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="Navbar.jsp"%>
	<h2 text= "align-centre">Student Details</h2>
	
	<%!  StudentDao dao = new StudentDao(); %>
	<% ArrayList<Student> ar = dao.getAllStudent(); %>
	
	<div class="container">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  <%
  for (Student s : ar){  
  %>
    <tr>
      <th><%= s.getId() %></th>
      <td><%= s.getName() %></td>
      <td><%= s.getAge() %></td>
      <td><%= s.getRollno() %></td>
      <td><a class="btn btn-warning"
       href="edit.jsp?id=<%=s.getId() %>">Update</a>
      <a class="btn btn-danger" name="id" href="Student?id=<%=s.getId() %>">Delete</a></td>
    </tr>
    <%
  }
    %>
  </tbody>
</table>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
		crossorigin="anonymous"></script>
</body>
</html>