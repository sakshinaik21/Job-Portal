<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Jobs</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #ffecd2, #fcb69f);
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
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
		min-width: 900px;
	}

	th, td {
		padding: 12px;
		text-align: left;
		font-size: 14px;
	}

	th {
		background: #2c3e50;
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

	.badge {
		padding: 5px 10px;
		border-radius: 20px;
		font-size: 12px;
		color: white;
		display: inline-block;
	}

	.approved {
		background: #2ecc71;
	}

	.pending {
		background: #f39c12;
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

	@media (max-width: 768px) {
		h1 {
			font-size: 20px;
		}
	}
</style>

</head>
<body>

	<h1>My Job Listings</h1>

	<div class="container">

		<table>
			<tr>
				<th>Role</th>
				<th>Description</th>
				<th>Package</th>
				<th>Experience</th>
				<th>Location</th>
				<th>Status</th>
				<th>Posted</th>
			</tr>

			<c:forEach var="job" items="${jobs}">
				<tr>

					<td>${job.title}</td>
					<td>${job.description}</td>
					<td>${job.ctc} LPA</td>
					<td>${job.experience} yrs</td>
					<td>${job.location}</td>

					<td>
						<c:choose>
							<c:when test="${job.approved}">
								<span class="badge approved">Approved</span>
							</c:when>
							<c:otherwise>
								<span class="badge pending">Pending</span>
							</c:otherwise>
						</c:choose>
					</td>

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

				</tr>
			</c:forEach>

		</table>

	</div>

	<div class="back">
		<a href="/recruiter/back">
			<button> Back</button>
		</a>
	</div>

</body>
</html>