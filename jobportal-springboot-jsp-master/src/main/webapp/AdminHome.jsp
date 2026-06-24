<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		display: flex;
		min-height: 100vh;
		background: #f4f6fb;
	}

	/* Sidebar */
	.sidebar {
		width: 220px;
		background: #2c3e50;
		color: white;
		padding: 20px;
		display: flex;
		flex-direction: column;
	}

	.sidebar h2 {
		text-align: center;
		margin-bottom: 30px;
	}

	.sidebar a {
		text-decoration: none;
		margin: 10px 0;
	}

	.sidebar button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 20px;
		background: transparent;
		color: white;
		cursor: pointer;
		text-align: left;
		transition: 0.3s;
	}

	.sidebar button:hover {
		background: rgba(255,255,255,0.1);
		padding-left: 15px;
	}

	/* Main content */
	.main {
		flex: 1;
		padding: 30px;
	}

	.header {
		font-size: 24px;
		margin-bottom: 20px;
		color: #333;
	}

	.cards {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
		gap: 20px;
	}

	.card {
		background: white;
		padding: 20px;
		border-radius: 12px;
		box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		text-align: center;
		transition: 0.3s;
		text-size:30px;
	}

	.card:hover {
		transform: translateY(-5px);
	}

	.card h3 {
		margin-bottom: 30px;
		color: #555;
	}

	.card button {
		margin-top: 20px;
		padding: 8px 15px;
		border: none;
		border-radius: 20px;
		cursor: pointer;
		color: white;
	}

	.approve-btn {
		background: #27ae60;
		font-size:20px;
	}

	.logout-btn {
		background: #e74c3c;
		font-size:20px;
		
	}

	/* Responsive */
	@media (max-width: 600px) {
		.sidebar {
			display: none;
		}
	}
</style>

</head>
<body>

	<!-- Sidebar -->
	<div class="sidebar">
		<h2>Admin</h2>

		<a href="/admin/view-jobs">
			<button> Approve Jobs</button>
		</a>

		<a href="/logout">
			<button> Logout</button>
		</a>
	</div>

	<!-- Main Content -->
	<div class="main">
		<div class="header">Dashboard</div>

		<div class="cards">

			<div class="card">
				<h3>Approve Jobs</h3>
				<p>Review and approve job postings</p>
				<a href="/admin/view-jobs">
					<button class="approve-btn">Go</button>
				</a>
			</div>

			<div class="card">
				<h3>Logout</h3>
				<p>Securely exit admin panel</p>
				<a href="/logout">
					<button class="logout-btn">Logout</button>
				</a>
			</div>

		</div>
	</div>

</body>
</html>