<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #667eea, #764ba2);
		min-height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	form {
		width: 100%;
		display: flex;
		justify-content: center;
	}

	#tab {
		background: #fff;
		padding: 25px 30px;
		border-radius: 12px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.15);
		width: 100%;
		max-width: 500px;
		border: none;
	}

	th {
		text-align: left;
		padding-top: 10px;
		color: #444;
		font-size: 14px;
	}

	td {
		text-align: left;
	}

	input {
		margin: 8px 0 12px;
		height: 38px;
		width: 100%;
		padding: 8px 10px;
		border-radius: 6px;
		border: 1px solid #ccc;
		font-size: 14px;
		transition: 0.3s;
	}

	input:focus {
		border-color: #667eea;
		outline: none;
		box-shadow: 0 0 5px rgba(102,126,234,0.5);
	}

	button {
		padding: 10px 18px;
		border: none;
		border-radius: 6px;
		font-size: 14px;
		cursor: pointer;
		margin-right: 10px;
		transition: 0.3s;
	}

	button:first-child {
		background-color: #2ecc71;
		color: white;
	}

	#cancel-button {
		background-color: #e74c3c;
		color: white;
	}

	button:hover {
		opacity: 0.9;
		transform: translateY(-1px);
	}

	.back-btn {
		display: block;
		margin: 15px auto;
		text-align: center;
	}

	.back-btn button {
		background-color: #3498db;
		color: white;
	}

	/* Responsive */
	@media (max-width: 600px) {
		#tab {
			padding: 20px;
		}

		input {
			font-size: 13px;
			height: 34px;
		}

		button {
			font-size: 13px;
			padding: 8px 14px;
		}
	}
</style>

</head>
<body>

	<form action="/recruiter/add-job" method="post">
		<table id="tab">
			
			<tr><th>Enter Job Title:</th></tr>
			<tr><td><input type="text" name="title"></td></tr>

			<tr><th>Enter Skills Required:</th></tr>
			<tr><td><input type="text" name="skills"></td></tr>

			<tr><th>Enter Job Description:</th></tr>
			<tr><td><input type="text" name="description"></td></tr>

			<tr><th>Experience Required (Years):</th></tr>
			<tr><td><input type="text" name="experience"></td></tr>

			<tr><th>Package:</th></tr>
			<tr><td><input type="text" name="ctc"> <span>LPA</span></td></tr>

			<tr><th>Location:</th></tr>
			<tr><td><input type="text" name="location"></td></tr>

			<tr><th>Number of Positions:</th></tr>
			<tr><td><input type="number" name="numberOfPositions"></td></tr>

			<tr>
				<td>
					<button><b>ADD</b></button>
					<button type="reset" id="cancel-button"><b>CANCEL</b></button>
				</td>
			</tr>

		</table>
	</form>

	<div class="back-btn">
		<a href="/recruiter/back">
			<button>Back</button>
		</a>
	</div>

</body>
</html>