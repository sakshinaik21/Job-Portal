<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule Interview</title>

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
		background: linear-gradient(135deg, #00c6ff, #0072ff);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 350px;
		text-align: center;
	}

	h2 {
		margin-bottom: 10px;
		color: #333;
	}

	.sub {
		font-size: 13px;
		color: #777;
		margin-bottom: 20px;
	}

	.input-group {
		text-align: left;
		margin-bottom: 20px;
	}

	label {
		font-size: 13px;
		color: #555;
	}

	input {
		width: 100%;
		padding: 10px;
		margin-top: 5px;
		border-radius: 8px;
		border: 1px solid #ccc;
		outline: none;
		font-size: 14px;
	}

	input:focus {
		border-color: #0072ff;
		box-shadow: 0 0 5px rgba(0,114,255,0.4);
	}

	button {
		width: 100%;
		padding: 11px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #0072ff, #00c6ff);
		color: white;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
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

		<h2>Schedule Interview</h2>
		<div class="sub">Select date & time for the interview</div>

		<form action="/recruiter/schedule" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="input-group">
				<label>Interview Date & Time</label>
				<input type="datetime-local" name="interviewDate" required>
			</div>

			<button> Schedule</button>

		</form>

	</div>

</body>
</html>