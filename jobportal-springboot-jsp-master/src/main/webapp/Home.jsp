<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

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
		background: linear-gradient(135deg, #667eea, #764ba2);
	}

	.container {
		background: rgba(255, 255, 255, 0.15);
		backdrop-filter: blur(12px);
		padding: 40px 30px;
		border-radius: 15px;
		box-shadow: 0 8px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 420px;
		color: white;
		animation: fadeIn 0.8s ease;
	}

	h1 {
		margin-bottom: 10px;
		font-size: 26px;
	}

	p {
		margin-bottom: 20px;
		font-size: 14px;
		opacity: 0.9;
	}

	.message {
		margin-bottom: 10px;
		font-weight: 500;
		color: #ffdddd;
	}

	.buttons {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 10px;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
		display: flex;
		align-items: center;
		justify-content: center;
		gap: 10px;
		color: white;
	}

	.admin {
		background: linear-gradient(135deg, #3498db, #2980b9);
	}

	.recruiter {
		background: linear-gradient(135deg, #2ecc71, #27ae60);
	}

	.user {
		background: linear-gradient(135deg, #f39c12, #e67e22);
	}

	button:hover {
		transform: translateY(-3px) scale(1.02);
		box-shadow: 0 6px 15px rgba(0,0,0,0.2);
	}

	a {
		text-decoration: none;
	}

	@keyframes fadeIn {
		from {
			opacity: 0;
			transform: translateY(20px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}

		h1 {
			font-size: 22px;
		}

		button {
			font-size: 14px;
			padding: 10px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<div class="message">
			${pass} ${fail}
		</div>

		<h1> Welcome</h1>
		<p>Select your role to continue</p>

		<div class="buttons">

			<a href="/admin/login">
				<button class="admin"> Admin</button>
			</a>

			<a href="/recruiter/login">
				<button class="recruiter">Recruiter</button>
			</a>

			<a href="/user/login">
				<button class="user"> Job Seeker</button>
			</a>

		</div>

	</div>

</body>
</html>