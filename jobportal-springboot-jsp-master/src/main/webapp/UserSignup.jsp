<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Sign Up</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		min-height: 100vh;
		background: linear-gradient(135deg, #a18cd1, #5f9cff);
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 20px;
	}

	.container {
		background: white;
		padding: 30px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 700px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
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
		color: #555;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 6px;
		border: 1px solid #ccc;
		outline: none;
		font-size: 14px;
		margin-top: 5px;
	}

	input:focus {
		border-color: #6c63ff;
		box-shadow: 0 0 5px rgba(108,99,255,0.4);
	}

	.gender {
		display: flex;
		gap: 15px;
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
		background: linear-gradient(135deg, #6c63ff, #5f9cff);
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
		color: #333;
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

		<h1> User Sign Up</h1>

		<form action="/user/signup" method="post" enctype="multipart/form-data">

			<div>
				<label>Name</label>
				<input type="text" name="name" required>
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

			<div>
				<label>Date of Birth</label>
				<input type="date" name="dob" required>
			</div>

			<div>
				<label>Gender</label>
				<div class="gender">
					<label><input type="radio" name="gender" value="male"> Male</label>
					<label><input type="radio" name="gender" value="female"> Female</label>
				</div>
			</div>

			<div class="buttons">
				<button class="signup"> Sign Up</button>
				<button type="reset" class="cancel">Cancel</button>
			</div>

		</form>

		<div class="back">
			<a href="/user/login"> Back to Login</a>
		</div>

	</div>

</body>
</html>