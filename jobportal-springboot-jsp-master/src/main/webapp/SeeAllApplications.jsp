<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Applications</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		background: linear-gradient(135deg, #ff9a9e, #fad0c4);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 350px;
	}

	h2 {
		margin-bottom: 20px;
		color: #333;
	}

	select {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: 1px solid #ccc;
		outline: none;
		font-size: 14px;
		margin-bottom: 15px;
		cursor: pointer;
	}

	select:focus {
		border-color: #ff6b6b;
		box-shadow: 0 0 5px rgba(255,107,107,0.4);
	}

	button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
	}

	.submit-btn {
		background: linear-gradient(135deg, #ff6b6b, #ff8e53);
		color: white;
		margin-bottom: 10px;
	}

	.back-btn {
		background: #555;
		color: white;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	@media (max-width: 400px) {
		.container {
			padding: 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h2> Select Job</h2>

		<form action="/recruiter/view-application" method="post">

			<select name="id" required>
				<c:forEach var="job" items="${jobs}">
					<option value="${job.id}">${job.title}</option>
				</c:forEach>
			</select>

			<button class="submit-btn">View Applications</button>

		</form>

		<a href="/recruiter/back">
			<button class="back-btn"> Back</button>
		</a>

	</div>

</body>
</html>