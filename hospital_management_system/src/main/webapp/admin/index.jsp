<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty adminObj}">
	<c:redirect url="../admin_login.jsp"></c:redirect>
	
	</c:if>
	
	<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty errMsg }">
			<p class="fs-3 text-center text-danger">${errMsg}</p>
			<c:remove var="errMsg" scope="session" />
		</c:if>
		<c:if test="${not empty sucMsg }">
			<p class="fs-3 text-center text-success">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>

		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br>5
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User<br>40
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fa-regular fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appoinment<br>250
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-2">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-primary">
						<i class="fa-regular fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist<br>30
						</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>