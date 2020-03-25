<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>

<title>Quadratic equation</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Quadratic equation</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">      
        <a href="/examples" class="btn btn-primary">Previous examples</a>
    </div>
	</nav>
	
	<div class="container mt-3 mx-auto p-3" style="width: 450px; background-color: #f8f9fa;">
		<h3 class="mb-3" style="text-align: center">Quadratic Equation Calculator</h3>
	
	<div class="container mx-auto custom shadow-sm p-3 mb-5 bg-white rounded">
  		<div class="list-group">
  			<c:forEach items="${equationList}" var="equa">
  				<a href="#" class="list-group-item" style="color: black">
  					<i>${equa.a}x<sup>2</sup>${equa.b > -1 ? "+" : ""}${equa.b}x ${equa.c > -1 ? "+" : ""}${equa.c} = 0;<br/>		
  						<c:choose>
  							<c:when test="${empty equa.x1}">
  								Equation has no roots 
  							</c:when>
  							<c:when test="${empty equa.x2}">
  								x = ${equa.x1};
  							</c:when>
  							<c:otherwise>
  								x<sub>1</sub> = ${equa.x1};<br/>
  								x<sub>2</sub> = ${equa.x2};
  							</c:otherwise>
  						</c:choose>
  					</i> 
  				</a>
  			</c:forEach>
		</div>
  	</div>
  </div>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>