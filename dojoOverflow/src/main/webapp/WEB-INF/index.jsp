<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
	

	


  
                    <a class="nav-link active" href="/questions/new">Add New Question</a>

	 	<h3>Questions Dashboard</h3>
		<div class="row">
			<div class="col-9">
				<table class="table table-dark table-small mt-3">
			    	<thead>
			        	<tr>
			            	<th>Question</th>
			            	<th>Tags</th>
			            	<th>Action</th>
			       		</tr>
			    	</thead>
			    	<tbody>
			        	<c:forEach items="${questions}" var="question">
			        	<tr>
			            	<td><c:out value="${question.questionText}"/></td>
			            	<td>
			       		        <c:forEach items="${question.tags}" var="tag">
			            			<span>${tag.subject}<c:if test="${question.tags.indexOf(tag) != question.tags.size() - 1 }">, </c:if></span>
			            		</c:forEach>
			            	</td>
			            	<td> 
			            		<a href="/questions/${question.id}">Show</a> |
			            		<a href="/questions/delete/${question.id}">Delete</a> 
			            	</td>
			        	</tr>
			        	</c:forEach>
			    	</tbody>
				</table>
			</div>
		</div>
		
</body>
</html>