<%@page import="com.mindhaven.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0 ">

<title>Home Page | MindHaven Portal</title>
<%@include file="component/allcss.jsp"%>


<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
<!-- end of customs css for this page -->

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<!-- First Div Container -->
	<div class="container p-3">
		<p class="text-center mt-2 mb-5 fs-2 myP-color">MindHaven Portal : Self Test - DASS</p>
		<div class="row">
		
			<div class="card my-card">
				<div class="card-body">
					<p class="fs-5 myP-color">DASS TEST</p>
					Please 
				      <a href="DassTest.jsp" class="btn btn-link">CLICK here</a> 
				      to take the mind health self test
				</div>
			</div>
		</div>
	</div>
	<!-- End of First Div Container -->

	<hr>

	<!-- Second Div Container -->

	<div class="container p-2">
		<p class="text-center fs-2 myP-color">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<p class="fw-bold fs-5">Dr. Hazim</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<p class="fw-bold fs-5">Dr. Ainon</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<p class="fw-bold fs-5">Dr. Fadilah</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card my-card">
					<div class="card-body text-center">
						<p class="fw-bold fs-5">Dr. Asyraf</p>
					</div>
				</div>
			</div>

		</div>
	</div>


	<!-- footer -->
	<%@include file="component/footer.jsp"%>
	<!-- end footer -->
</body>
</html>