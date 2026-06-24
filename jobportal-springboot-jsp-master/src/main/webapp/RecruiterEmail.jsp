<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>

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
		background: linear-gradient(135deg, #ffecd2, #fcb69f);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 12px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.15);
		width: 100%;
		max-width: 350px;
		text-align: center;
	}

	h1 {
		font-size: 22px;
		margin-bottom: 10px;
		color: #333;
	}

	.sub {
		font-size: 13px;
		color: #777;
		margin-bottom: 20px;
	}

	.message {
		margin-bottom: 10px;
		font-size: 13px;
		color: #e74c3c;
	}

	.input-group {
		margin-bottom: 20px;
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
		font-size: 14px;
		outline: none;
		transition: 0.3s;
	}

	input:focus {
		border-color: #ff7e5f;
		box-shadow: 0 0 5px rgba(255,126,95,0.4);
	}

	button {
		width: 100%;
		padding: 11px;
		border: none;
		border-radius: 6px;
		background: linear-gradient(135deg, #ff7e5f, #feb47b);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.back {
		margin-top: 15px;
	}

	.back a {
		text-decoration: none;
		font-size: 13px;
		color: #555;
	}

	.back a:hover {
		color: #000;
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

		<h1> Forgot Password</h1>
		<div class="sub">Enter your email to reset password</div>

		<div class="message">
			${fail} ${pass}
		</div>

		<form action="/recruiter/forgot-password" method="post">

			<div class="input-group">
				<label>Email Address</label>
				<input type="text" name="email" placeholder="Enter your email" required>
			</div>

			<button> Submit</button>

		</form>

		<div class="back">
			<a href="/recruiter/login"> Back to Login</a>
		</div>

	</div>

</body>
</html>