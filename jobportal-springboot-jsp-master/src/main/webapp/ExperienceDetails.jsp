<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Experience</title>

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
		background: linear-gradient(120deg, #89f7fe, #66a6ff);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 25px rgba(0,0,0,0.15);
		width: 100%;
		max-width: 350px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
		font-size: 22px;
	}

	.form-group {
		position: relative;
		margin-bottom: 20px;
	}

	input {
		width: 100%;
		padding: 12px 10px;
		border: 1px solid #ccc;
		border-radius: 8px;
		outline: none;
		font-size: 14px;
	}

	label {
		position: absolute;
		top: 50%;
		left: 10px;
		transform: translateY(-50%);
		background: white;
		padding: 0 5px;
		color: #888;
		font-size: 13px;
		transition: 0.3s;
		pointer-events: none;
	}

	input:focus + label,
	input:not(:placeholder-shown) + label {
		top: -8px;
		font-size: 11px;
		color: #66a6ff;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	/* Responsive */
	@media (max-width: 400px) {
		.container {
			padding: 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">
		<h1> Apply Experience</h1>

		<form action="/user/experience/apply" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="form-group">
				<input type="number" name="years" required placeholder=" ">
				<label>Years of Experience</label>
			</div>

			<div class="form-group">
				<input type="text" name="description" required placeholder=" ">
				<label>Previous Role Description</label>
			</div>

			<div class="form-group">
				<input type="date" name="notice" required>
				<label>Notice Period Till</label>
			</div>

			<button> Apply</button>

		</form>
	</div>

</body>
</html>