<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Login</title>

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
	}

	/* Left Side */
	.left {
		flex: 1;
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		text-align: center;
		padding: 20px;
	}

	.left h1 {
		font-size: 32px;
		margin-bottom: 10px;
	}

	.left p {
		font-size: 14px;
		opacity: 0.9;
	}

	/* Right Side */
	.right {
		flex: 1;
		display: flex;
		justify-content: center;
		align-items: center;
		background: #f4f6fb;
	}

	.container {
		background: white;
		padding: 30px;
		border-radius: 12px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.15);
		width: 100%;
		max-width: 350px;
	}

	h2 {
		text-align: center;
		margin-bottom: 15px;
		color: #333;
	}

	.message {
		text-align: center;
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	table {
		width: 100%;
	}

	th {
		text-align: left;
		font-size: 13px;
		padding-top: 10px;
	}

	input {
		width: 100%;
		padding: 10px;
		margin-top: 5px;
		border-radius: 6px;
		border: 1px solid #ccc;
		outline: none;
	}

	input:focus {
		border-color: #667eea;
		box-shadow: 0 0 5px rgba(102,126,234,0.4);
	}

	.link {
		text-align: right;
		font-size: 12px;
		margin-top: 5px;
	}

	.link a {
		text-decoration: none;
		color: #667eea;
	}

	button {
		width: 100%;
		padding: 10px;
		margin-top: 15px;
		border: none;
		border-radius: 6px;
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		opacity: 0.9;
		transform: translateY(-2px);
	}

	.extra {
		text-align: center;
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

	/* Responsive */
	@media (max-width: 768px) {
		body {
			flex-direction: column;
		}

		.left {
			display: none;
		}
	}
</style>

</head>
<body>

	<!-- Left Branding -->
	<div class="left">
		<h1> Recruiter Panel</h1>
		<p>Manage jobs & hire the best talent</p>
	</div>

	<!-- Right Login -->
	<div class="right">
		<div class="container">

			<h2>Login</h2>

			<div class="message">
				${pass} ${fail}
			</div>

			<form action="/recruiter/login" method="post">
				<table>

					<tr>
						<th>Email</th>
					</tr>
					<tr>
						<td><input type="email" name="email" placeholder="Enter email" required></td>
					</tr>

					<tr>
						<th>Password</th>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="Enter password" required></td>
					</tr>

				</table>

				<div class="link">
					<a href="/recruiter/forgot-password">Forgot Password?</a>
				</div>

				<button> Login</button>

			</form>

			<div class="extra">
				New here? <a href="/recruiter/signup">Create Account</a>
			</div>

		</div>
	</div>

	<div class="back">
		<a href="/"> Back</a>
	</div>

</body>
</html>