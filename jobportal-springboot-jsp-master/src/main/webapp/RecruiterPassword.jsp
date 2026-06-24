<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>

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
		background: linear-gradient(135deg, #ff758c, #ff7eb3);
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
		margin-bottom: 15px;
	}

	.message {
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	.input-group {
		margin-bottom: 15px;
		text-align: left;
	}

	label {
		font-size: 13px;
		color: #555;
	}

	input {
		width: 100%;
		padding: 10px;
		margin-top: 5px;
		border-radius: 6px;
		border: 1px solid #ccc;
		outline: none;
		font-size: 14px;
	}

	input:focus {
		border-color: #ff758c;
		box-shadow: 0 0 5px rgba(255,117,140,0.4);
	}

	button {
		width: 100%;
		padding: 11px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		background: linear-gradient(135deg, #ff758c, #ff7eb3);
		color: white;
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

		<h2> Reset Password</h2>
		<div class="sub">Enter OTP and set your new password</div>

		<div class="message">
			${pass} ${fail}
		</div>

		<form action="/recruiter/reset-password" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="input-group">
				<label>OTP</label>
				<input type="text" name="otp" placeholder="Enter OTP" required>
			</div>

			<div class="input-group">
				<label>New Password</label>
				<input type="password" name="password" placeholder="Enter new password" required>
			</div>

			<button> Reset Password</button>

		</form>

	</div>

</body>
</html>