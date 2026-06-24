<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifications</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #5f9cff, #a18cd1);
		padding: 20px;
	}

	h1 {
		text-align: center;
		color: white;
		margin-bottom: 20px;
	}

	.container {
		max-width: 800px;
		margin: auto;
	}

	.card {
		background: white;
		padding: 15px 20px;
		border-radius: 10px;
		box-shadow: 0 5px 15px rgba(0,0,0,0.15);
		margin-bottom: 15px;
		display: flex;
		justify-content: space-between;
		align-items: center;
		transition: 0.3s;
	}

	.card:hover {
		transform: translateY(-3px);
	}

	.message {
		font-size: 14px;
		color: #333;
	}

	.time {
		font-size: 12px;
		color: #777;
		margin-top: 5px;
	}

	.left {
		max-width: 70%;
	}

	button {
		padding: 6px 10px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 12px;
		color: white;
		background: #e74c3c;
	}

	button:hover {
		opacity: 0.9;
	}

	.empty {
		text-align: center;
		color: white;
		font-size: 16px;
		margin-top: 20px;
	}

	.back {
		text-align: center;
		margin-top: 15px;
	}

	.back button {
		background: #333;
		padding: 8px 16px;
		border-radius: 6px;
	}

	@media (max-width: 600px) {
		.card {
			flex-direction: column;
			align-items: flex-start;
			gap: 10px;
		}

		.left {
			max-width: 100%;
		}
	}
</style>

</head>
<body>

	<h1> Notifications</h1>

	<div class="container">

		<c:if test="${empty notifications}">
			<div class="empty">No notifications available</div>
		</c:if>

		<c:forEach var="notification" items="${notifications}">
			<div class="card">

				<div class="left">
					<div class="message"> ${notification.message}</div>
					<div class="time"> ${notification.time}</div>
				</div>

				<div>
					<a href="/user/delete-notification/${notification.id}">
						<button> Delete</button>
					</a>
				</div>

			</div>
		</c:forEach>

	</div>

	<div class="back">
		<a href="/user/back">
			<button>← Back</button>
		</a>
	</div>

</body>
</html>
