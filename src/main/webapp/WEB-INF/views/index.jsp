<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
<style type="text/css">
.error {
	color: red;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
}
</style>
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
	<div class="container mt-3 mx-auto p-3" style="width: 450px; text-align: center; background-color: #f8f9fa;">
		<h3 class="mb-3">Quadratic Equation Calculator</h3>
	
	<div class="container mx-auto px-5 custom shadow-sm p-3 mb-5 bg-white rounded">
  	<form:form action="${pageContext.request.contextPath}/" method="post" modelAttribute="equation">
  		<div class="form-group row">
    		<div class="form-row">
    			<div class="col">
      				<form:input type="number" path="a" name="a" class="form-control form-control-sm"/>
					<span class="error">${error}</span>
    			</div>
    			<div class="col">
    				<span><i>x<sup>2</sup> +</i></span>
    			</div>
    			<div class="col">
      				<form:input type="number" path="b" name="b" class="form-control form-control-sm"/>	
    			</div>
    			<div class="col">
    				<span><i>x +</i></span>
    			</div>
    			<div class="col">
      				<form:input type="number" path="c" name="c" class="form-control form-control-sm"/>
    			</div>
    			<div class="col">
    				<span><i> = 0</i></span>
    			</div>
  			</div>
  			<input type="submit" class="btn btn-secondary mx-auto mt-4" value="Сalculate">
  		</div>
  	</form:form>
  	</div>
  </div>
	
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>