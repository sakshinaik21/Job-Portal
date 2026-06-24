<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Sign Up</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		min-height: 100vh;
		background: linear-gradient(135deg, #43cea2, #185a9d);
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 20px;
	}

	.container {
		background: rgba(255, 255, 255, 0.15);
		backdrop-filter: blur(10px);
		padding: 30px;
		border-radius: 15px;
		box-shadow: 0 8px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 750px;
		color: white;
	}

	h1 {
		text-align: center;
		margin-bottom: 10px;
	}

	.message {
		text-align: center;
		color: #ffdede;
		margin-bottom: 10px;
		font-size: 13px;
	}

	form {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: 15px;
	}

	.full {
		grid-column: span 2;
	}

	label {
		font-size: 13px;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 6px;
		border: none;
		outline: none;
		font-size: 14px;
		margin-top: 5px;
	}

	.gender {
		display: flex;
		gap: 15px;
		align-items: center;
		margin-top: 5px;
	}

	.buttons {
		grid-column: span 2;
		display: flex;
		justify-content: center;
		gap: 15px;
		margin-top: 10px;
	}

	button {
		padding: 10px 20px;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		font-size: 14px;
		transition: 0.3s;
	}

	.signup {
		background: #00c9a7;
		color: white;
	}

	.cancel {
		background: #ff6b6b;
		color: white;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.back {
		text-align: center;
		margin-top: 15px;
	}

	.back a {
		text-decoration: none;
		color: white;
		font-size: 14px;
	}

	/* Responsive */
	@media (max-width: 600px) {
		form {
			grid-template-columns: 1fr;
		}

		.full {
			grid-column: span 1;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h1> Recruiter Sign Up</h1>

		<div class="message">
			${fail}
		</div>

		<form action="/recruiter/signup" method="post">

			<div>
				<label>Full Name</label>
				<input type="text" name="fullname" required>
			</div>

			<div>
				<label>Email</label>
				<input type="email" name="email" required>
			</div>

			<div>
				<label>Mobile Number</label>
				<input type="tel" name="mobile" pattern="[0-9]{10}" required>
			</div>

			<div>
				<label>Password</label>
				<input type="password" name="password" required>
			</div>

			<div class="full">
				<label>Gender</label>
				<div class="gender">
					<label><input type="radio" name="gender" value="male"> Male</label>
					<label><input type="radio" name="gender" value="female"> Female</label>
				</div>
			</div>

			<div>
				<label>Company Name</label>
				<input type="text" name="companyname" required>
			</div>

			<div>
				<label>Company Location</label>
				<input type="text" name="companylocation" required>
			</div>

			<div class="buttons">
				<button class="signup"> Sign Up</button>
				<button type="reset" class="cancel">Cancel</button>
			</div>

		</form>

		<div class="back">
			<a href="/recruiter/login"> Back to Login</a>
		</div>

	</div>

</body>
</html>