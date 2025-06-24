<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
<%@ include file="Navbar.jsp" %>
<h1 text= "align-center">Student Details</h1>

<% String msg = (String) request.getAttribute("msg"); %>

	<div class="container">
	<div class="row justify-content-center">
	<div class="col-6">
	<form action="student" method="post">
  <div class="mb-3">
    <label  class="form-label">Name:</label>
    <input type="text" name="nm"  class="form-control">
  </div>
  <div class="mb-3">
    <label  class="form-label">Age:</label>
    <input type="number" name="age" class="form-control" >
  </div>
  <div class="mb-3 ">
    <label class="form-label" >Enrollment Number:</label>
    <input type="number" name="roll" class="form-control" >
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
	</div>
	</div>
	</div>
	<%  if(msg != null)
	{
	%>
		<p class = "text-danger text-center">
		<%= msg %>
		</p>
	<%
	}
	%>	


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>