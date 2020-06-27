<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<title>Showing Results</title>
</head>
<body>

	<!-- Header -->
	<%@ include file="navbar.jsp"%>

	<div class="container-fluid">
		<div class="card-deck mt-5">
			<c:set var="temp" value="${1}">
			</c:set>
			<c:forEach items="${data }" var="info">
				<c:if test="${temp==1 }">
					<div class="card text-center border-dark text-white bg-primary 
					animate__animated animate__backInLeft wow">
				</c:if>
				<c:if test="${temp==2 }">
					<div class="card text-center border-dark text-white bg-danger 
					animate__animated animate__swing wow">
				</c:if>
				<c:if test="${temp==3 }">
					<div class="card text-center border-dark text-white bg-success 
					animate__animated animate__backInRight wow">
				</c:if>
				<div class="card-body">
					<h5 class="card-title">${info.key }</h5>
					<p class="card-text">${info.value }</p>
				</div>
		</div>
		<c:set var="temp" value="${temp+1 }"></c:set>
		</c:forEach>
	</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
	<script src="js/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
</body>
</html>