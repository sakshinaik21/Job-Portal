<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Jobs</title>

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
		max-width: 1100px;
		margin: auto;
		background: white;
		padding: 20px;
		border-radius: 12px;
		box-shadow: 0 5px 20px rgba(0,0,0,0.2);
		overflow-x: auto;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		min-width: 1000px;
	}

	th, td {
		padding: 12px;
		text-align: left;
		font-size: 14px;
	}

	th {
		background: #6c63ff;
		color: white;
	}

	tr:nth-child(even) {
		background: #f9f9f9;
	}

	tr:hover {
		background: #eef3ff;
	}

	td {
		color: #444;
	}

	.apply-btn {
		padding: 6px 12px;
		border: none;
		border-radius: 5px;
		background: #2ecc71;
		color: white;
		cursor: pointer;
		font-size: 13px;
		transition: 0.3s;
	}

	.apply-btn:hover {
		background: #27ae60;
		transform: translateY(-1px);
	}

	.msg {
		text-align: center;
		margin-bottom: 10px;
		font-weight: bold;
		color: #333;
	}

	.back {
		text-align: center;
		margin-top: 15px;
	}

	.back button {
		padding: 8px 16px;
		border: none;
		border-radius: 6px;
		background: #333;
		color: white;
		cursor: pointer;
	}

	.back button:hover {
		opacity: 0.9;
	}

	/* Limit description */
	td:nth-child(2) {
		max-width: 220px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	@media (max-width: 768px) {
		h1 {
			font-size: 20px;
		}
	}
</style>

</head>
<body>

	<div class="msg">${fail}${pass}</div>

	<h1> Available Jobs</h1>

	<div class="container">

		<table>
			<tr>
				<th>Role</th>
				<th>Description</th>
				<th>Package</th>
				<th>Skills</th>
				<th>Experience</th>
				<th>Location</th>
				<th>Positions</th>
				<th>Posted</th>
				<th>Apply</th>
			</tr>

			<c:forEach var="job" items="${jobs}">
				<tr>

					<td>${job.title}</td>
					<td title="${job.description}">${job.description}</td>
					<td>${job.ctc} LPA</td>
					<td>${job.skills}</td>
					<td>${job.experience} yrs</td>
					<td>${job.location}</td>
					<td>${job.numberOfPositions}</td>

					<td>
						<c:set var="duration"
							value="${Duration.between(job.postedTime, LocalDateTime.now())}" />

						<c:choose>
							<c:when test="${duration.toDays()==0}">
								<c:choose>
									<c:when test="${duration.toHours()==0}">
										<c:choose>
											<c:when test="${duration.toMinutes()==0}">
												${duration.toSeconds()} sec ago
											</c:when>
											<c:otherwise>
												${duration.toMinutes()} min ago
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										${duration.toHours()} hrs ago
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								${duration.toDays()} days ago
							</c:otherwise>
						</c:choose>
					</td>

					<td>
						<a href="/user/check-job/${job.id}">
							<button class="apply-btn"> Apply</button>
						</a>
					</td>

				</tr>
			</c:forEach>

		</table>

	</div>

	<div class="back">
		<a href="/user/back">
			<button> Back</button>
		</a>
	</div>

</body>
</html>