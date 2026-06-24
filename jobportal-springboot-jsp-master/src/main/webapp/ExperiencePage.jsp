<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Experience</title>

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
		box-shadow: 0 10px 25px rgba(0,0,0,0.15);
		text-align: center;
		width: 100%;
		max-width: 350px;
	}

	h2 {
		margin-bottom: 20px;
		color: #333;
	}

	.options {
		display: flex;
		justify-content: center;
		gap: 15px;
		margin-bottom: 20px;
	}

	.options input {
		display: none;
	}

	.options label {
		padding: 10px 20px;
		border-radius: 25px;
		background: #eee;
		cursor: pointer;
		transition: 0.3s;
		font-size: 14px;
	}

	.options input:checked + label {
		background: #ff6b6b;
		color: white;
	}

	.buttons {
		display: flex;
		gap: 10px;
	}

	button {
		flex: 1;
		padding: 10px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
		color: white;
	}

	.apply {
		background: #28a745;
	}

	.cancel {
		background: #dc3545;
	}

	button:hover {
		opacity: 0.9;
		transform: translateY(-1px);
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
		<h2> Experience Status</h2>

		<form action="/user/experience" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="options">
				<input type="radio" id="yes" name="experience" value="yes">
				<label for="yes">Yes</label>

				<input type="radio" id="no" name="experience" value="no">
				<label for="no">No</label>
			</div>

			<div class="buttons">
				<button class="apply">Apply</button>
				<button type="reset" class="cancel">Cancel</button>
			</div>

		</form>
	</div>

</body>
</html>