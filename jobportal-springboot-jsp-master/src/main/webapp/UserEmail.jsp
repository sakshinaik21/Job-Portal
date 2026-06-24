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
		background: linear-gradient(135deg, #a18cd1, #fbc2eb);
	}

	.container {
		background: rgba(255, 255, 255, 0.2);
		backdrop-filter: blur(10px);
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 340px;
		text-align: center;
		color: #333;
	}

	h1 {
		font-size: 22px;
		margin-bottom: 10px;
	}

	.sub {
		font-size: 13px;
		margin-bottom: 15px;
		color: #555;
	}

	.message {
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: 1px solid #ccc;
		margin-bottom: 15px;
		outline: none;
		font-size: 14px;
	}

	input:focus {
		border-color: #8e44ad;
		box-shadow: 0 0 5px rgba(142,68,173,0.4);
	}

	button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #8e44ad, #c39bd3);
		color: white;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.back {
		margin-top: 15px;
		font-size: 13px;
	}

	.back a {
		text-decoration: none;
		color: #333;
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
		<div class="sub">Enter your email to reset your password</div>

		<div class="message">
			${fail} ${pass}
		</div>

		<form action="/user/forgot-password" method="post">

			<input type="text" name="email" placeholder="Enter your email" required>

			<button> Submit</button>

		</form>

		<div class="back">
			<a href="/user/login"> Back to Login</a>
		</div>

	</div>

</body>
</html>