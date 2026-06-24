<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>

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
		background: linear-gradient(135deg, #a18cd1, #5f9cff);
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

	h1 {
		margin-bottom: 10px;
		color: #333;
	}

	.message {
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	.input-group {
		text-align: left;
		margin-bottom: 15px;
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
		border-color: #6c63ff;
		box-shadow: 0 0 5px rgba(108,99,255,0.4);
	}

	.link {
		text-align: right;
		font-size: 12px;
		margin-bottom: 10px;
	}

	.link a {
		text-decoration: none;
		color: #6c63ff;
	}

	button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 6px;
		background: linear-gradient(135deg, #6c63ff, #5f9cff);
		color: white;
		cursor: pointer;
		font-size: 14px;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.extra {
		margin-top: 15px;
		font-size: 13px;
	}

	.extra a {
		text-decoration: none;
		color: #333;
	}

	.back {
		position: absolute;
		bottom: 15px;
		left: 15px;
	}

	.back a {
		text-decoration: none;
		color: white;
		font-size: 13px;
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

		<h1> User Login</h1>

		<div class="message">
			${pass} ${fail}
		</div>

		<form action="/user/login" method="post">

			<div class="input-group">
				<label>Email</label>
				<input type="email" name="email" placeholder="Enter email" required>
			</div>

			<div class="input-group">
				<label>Password</label>
				<input type="password" name="password" placeholder="Enter password" required>
			</div>

			<div class="link">
				<a href="/user/forgot-password">Forgot Password?</a>
			</div>

			<button> Login</button>

		</form>

		<div class="extra">
			New user? <a href="/user/signup">Create Account</a>
		</div>

	</div>

	<div class="back">
		<a href="/"> Back</a>
	</div>

</body>
</html>