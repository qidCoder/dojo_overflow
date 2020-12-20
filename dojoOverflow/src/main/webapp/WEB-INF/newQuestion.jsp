<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <script defer src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

    <script defer src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <script defer src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
	

                    <a class="nav-link active" href="/dashboard">Dashboard</a>


	 	<h2 class="mb-3">What is your question?</h2>
		<form:form action="/questions/new" method="POST" modelAttribute="question">

		    <div class="form-group row mx-0">
		        <form:label class="col-1 col-form-label" path="questionText">Question</form:label>
		        <div class="col-6">
		        	<form:textarea class="form-control" type="text" path="questionText"/>
		        	<form:errors class="small" path="questionText"/>
		        </div>
		    </div>

		    <div class="form-group row mx-0">
		        <form:label class="col-1 col-form-label" path="parsedTags">Tags</form:label>
		        <div class="col-3">
		        	<form:input class="form-control" type="text" path="parsedTags"/>
		        	<form:errors class="small" path="parsedTags"/>
		        </div>
		    </div>

		    <div class="form-group row mx-0">
		    	<div class="col-1">
		    		<input class = "btn btn-success" type="submit" value="Submit"/>
		    	</div>	
		    </div>
	    
		</form:form>
</body>
</html>