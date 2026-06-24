<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: #1e1e2f;
		min-height: 100vh;
		padding: 20px;
		color: #fff;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #f1f1f1;
	}

	.container {
		max-width: 850px;
		margin: auto;
		background: #2a2a40;
		padding: 30px;
		border-radius: 15px;
		box-shadow: 8px 8px 20px #141421,
					-8px -8px 20px #343456;
	}

	legend {
		text-align: center;
		font-size: 18px;
		margin-bottom: 15px;
		color: #bbb;
	}

	table {
		width: 100%;
		border-spacing: 12px;
	}

	th {
		text-align: left;
		font-size: 13px;
		color: #ccc;
	}

	input[type="text"],
	input[type="email"],
	input[type="tel"],
	input[type="date"],
	input[type="file"] {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: none;
		background: #1e1e2f;
		color: #fff;
		box-shadow: inset 4px 4px 8px #141421,
					inset -4px -4px 8px #343456;
		transition: 0.3s;
	}

	input:focus {
		outline: none;
		box-shadow: inset 2px 2px 5px #000,
					inset -2px -2px 5px #555;
	}

	input[readonly] {
		opacity: 0.6;
		cursor: not-allowed;
	}

	.gender {
		display: flex;
		gap: 20px;
	}

	.gender label {
		font-size: 14px;
	}

	.buttons {
		margin-top: 20px;
		display: flex;
		justify-content: center;
		gap: 20px;
	}

	button {
		padding: 10px 22px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
	}

	.update {
		background: linear-gradient(135deg, #00c6ff, #0072ff);
		color: white;
	}

	.cancel {
		background: linear-gradient(135deg, #ff416c, #ff4b2b);
		color: white;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.back-btn {
		text-align: center;
		margin-top: 20px;
	}

	.back-btn button {
		background: #444;
		color: white;
		padding: 8px 18px;
		border-radius: 6px;
	}

	.back-btn button:hover {
		background: #666;
	}

	/* Responsive */
	@media (max-width: 600px) {
		table, tr, td, th {
			display: block;
			width: 100%;
		}

		th {
			margin-top: 10px;
		}

		.gender {
			flex-direction: column;
		}
	}
</style>

</head>
<body>

	<h1>Profile Settings</h1>

	<div class="container">
		<form action="/user/profile" method="post" enctype="multipart/form-data">

			<input type="text" name="id" value="${user.id }" hidden>

			<fieldset style="border:none;">
				<legend>Update Your Details</legend>

				<table>

					<tr>
						<th>Full Name</th>
						<td><input type="text" name="name" value="${user.name }"></td>
					</tr>

					<tr>
						<th>Email</th>
						<td><input type="email" name="email" value="${user.email}" readonly></td>
					</tr>

					<tr>
						<th>Mobile Number</th>
						<td><input type="tel" name="mobile" value="${user.mobile}" readonly></td>
					</tr>

					<tr>
						<th>Date of Birth</th>
						<td><input type="date" name="dob" value="${user.dob}"></td>
					</tr>

					<tr>
						<th>Gender</th>
						<td class="gender">
							<label><input type="radio" name="gender" value="male"> Male</label>
							<label><input type="radio" name="gender" value="female"> Female</label>
						</td>
					</tr>

					<tr>
						<th>Highest Degree</th>
						<td><input type="text" name="highestdegree" value="${user.highestdegree}"></td>
					</tr>

					<tr>
						<th>10th Percentage</th>
						<td><input type="text" name="tenthPercentage" value="${user.tenthPercentage}"></td>
					</tr>

					<tr>
						<th>12th Percentage</th>
						<td><input type="text" name="twelthPercentage" value="${user.twelthPercentage }"></td>
					</tr>

					<tr>
						<th>Degree Percentage</th>
						<td><input type="text" name="degreePercenatge" value="${user.degreePercenatge }"></td>
					</tr>

					<tr>
						<th>Master Percentage</th>
						<td><input type="text" name="masterPercentage" value="${user.masterPercentage }"></td>
					</tr>

					<tr>
						<th>Resume</th>
						<td><input type="file" name="res"></td>
					</tr>

				</table>

				<div class="buttons">
					<button class="update"> Update</button>
					<button type="reset" class="cancel"> Cancel</button>
				</div>

			</fieldset>

		</form>
	</div>

	<div class="back-btn">
		<a href="/user/back">
			<button> Back</button>
		</a>
	</div>

</body>
</html>