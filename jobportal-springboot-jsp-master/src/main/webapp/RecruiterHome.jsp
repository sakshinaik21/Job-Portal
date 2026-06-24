<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Dashboard</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		min-height: 100vh;
		background: linear-gradient(135deg, #667eea, #764ba2);
		padding: 20px;
	}

	.header {
		text-align: center;
		color: white;
		margin-bottom: 20px;
	}

	.header h1 {
		margin-bottom: 10px;
	}

	.message {
		text-align: center;
		color: #ffdede;
		margin-bottom: 10px;
	}

	.container {
		max-width: 900px;
		margin: auto;
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
		gap: 20px;
	}

	.card {
		background: white;
		padding: 25px;
		border-radius: 12px;
		box-shadow: 0 8px 20px rgba(0,0,0,0.15);
		text-align: center;
		transition: 0.3s;
	}

	.card:hover {
		transform: translateY(-5px);
	}

	.icon {
		font-size: 35px;
		margin-bottom: 10px;
	}

	.card h3 {
		margin-bottom: 10px;
		color: #333;
	}

	.card p {
		font-size: 13px;
		color: #666;
		margin-bottom: 15px;
	}

	button {
		padding: 8px 15px;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		color: white;
		font-size: 14px;
	}

	.add {
		background: #2ecc71;
	}

	.view {
		background: #3498db;
	}

	.app {
		background: #9b59b6;
	}

	.logout {
		background: #e74c3c;
	}

	button:hover {
		opacity: 0.9;
	}

	/* Responsive */
	@media (max-width: 500px) {
		.header h1 {
			font-size: 22px;
		}
	}
</style>

</head>
<body>

	<div class="header">
		<h1> Recruiter Dashboard</h1>
	</div>

	<div class="message">
		${pass} ${fail}
	</div>

	<div class="container">

		<div class="card">
			<div class="icon"></div>
			<h3>Add Job</h3>
			<p>Create new job postings</p>
			<a href="/recruiter/add-job">
				<button class="add">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>View Jobs</h3>
			<p>Manage your job listings</p>
			<a href="/recruiter/view-jobs">
				<button class="view">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>Applications</h3>
			<p>Check candidate applications</p>
			<a href="/recruiter/view-applications">
				<button class="app">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>Logout</h3>
			<p>Exit recruiter panel</p>
			<a href="/logout">
				<button class="logout">Logout</button>
			</a>
		</div>

	</div>

</body>
</html>