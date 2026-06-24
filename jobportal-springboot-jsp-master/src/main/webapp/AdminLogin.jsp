<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

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
		background: linear-gradient(135deg, #1d2671, #c33764);
	}

	.wrapper {
		width: 100%;
		padding: 20px;
		display: flex;
		justify-content: center;
	}

	.container {
		width: 100%;
		max-width: 380px;
		padding: 35px 30px;
		border-radius: 15px;
		background: rgba(255, 255, 255, 0.1);
		backdrop-filter: blur(10px);
		box-shadow: 0 8px 30px rgba(0,0,0,0.2);
		color: white;
		text-align: center;
	}

	h1 {
		margin-bottom: 20px;
		font-weight: 600;
	}

	.message {
		margin-bottom: 10px;
		color: #ffdddd;
		font-size: 14px;
	}

	table {
		width: 100%;
	}

	th {
		text-align: left;
		font-size: 14px;
		padding-top: 10px;
	}

	td {
		padding-bottom: 10px;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 6px;
		border: none;
		outline: none;
		margin-top: 5px;
		background: rgba(255,255,255,0.2);
		color: white;
		font-size: 14px;
	}

	input::placeholder {
		color: #eee;
	}

	input:focus {
		background: rgba(255,255,255,0.3);
	}

	button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 6px;
		margin-top: 10px;
		font-size: 15px;
		cursor: pointer;
		background: #00c9a7;
		color: white;
		transition: 0.3s;
	}

	button:hover {
		background: #00b894;
		transform: translateY(-2px);
	}

	.back-btn {
		text-align: center;
		margin-top: 15px;
	}

	.back-btn button {
		background: #ff7675;
		width: auto;
		padding: 8px 15px;
	}

	.back-btn button:hover {
		background: #e55039;
	}

	/* Responsive */
	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}

		h1 {
			font-size: 22px;
		}
	}
</style>

</head>
<body>

	<div class="wrapper">
		<div class="container">

			<h1>Admin Login</h1>

			<div class="message">
				${pass} ${fail}
			</div>

			<form action="/admin/login" method="post">
				<table>
					<tr>
						<th> Email</th>
					</tr>
					<tr>
						<td><input type="text" name="email" placeholder="Enter email"></td>
					</tr>

					<tr>
						<th> Password</th>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="Enter password"></td>
					</tr>

					<tr>
						<td>
							<button>Login</button>
						</td>
					</tr>
				</table>
			</form>

			<div class="back-btn">
				<a href="/">
					<button> Back</button>
				</a>
			</div>

		</div>
	</div>

</body>
</html>