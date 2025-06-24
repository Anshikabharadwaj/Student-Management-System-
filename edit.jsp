<%@page import="StudentModel.Student"%>
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
	<%@ include file="Navbar.jsp" %>
	<h1 text="align-center">Edit Student Details</h1>
	<% int id = Integer.parseInt(request.getParameter("id")); %>
	
	<%! StudentDao dao = new StudentDao(); %>
	<% Student st = dao.getStudentById(id); %>
	<div class="container">
	<div class="row justify-content-center">
	<div class="col-6">
	<form action="Student" method="post">
  <div class="mb-3">
  <input type="hidden" name="id" value="<%= st.getId() %>" class="form-control">
  
      <label  class="form-label">Name:</label>
    <input type="text" name="nm" value="<%= st.getName() %>"  class="form-control">
  </div>
  <div class="mb-3">
    <label  class="form-label">Age:</label>
    <input type="number" name="age"value="<%= st.getAge() %>" class="form-control" >
  </div>
  <div class="mb-3 ">
    <label class="form-label" >Enrollment Number:</label>
    <input type="number" name="roll" value="<%= st.getRollno() %>" class="form-control" >
  </div>
  <button type="submit" class="btn btn-primary">Update student</button>
</form>
	</div>
	</div>
	</div>
	

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
		crossorigin="anonymous"></script>
</body>
</html>