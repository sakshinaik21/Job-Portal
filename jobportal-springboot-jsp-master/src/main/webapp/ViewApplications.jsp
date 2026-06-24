<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Applications</title>

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
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
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

.badge {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 12px;
	color: white;
	display: inline-block;
	font-weight: bold;
}

.pending {
	background: #f39c12;
}

.selected {
	background: #2ecc71;
}

.rejected {
	background: #e74c3c;
}

.scheduled {
	background: #3498db;
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
	font-size: 14px;
}

.back button:hover {
	opacity: 0.9;
}

@media ( max-width : 768px) {
	h1 {
		font-size: 20px;
	}
}
</style>

</head>

<body>

	<h1>My Applications</h1>

	<div class="container">

		<table>

			<tr>
				<th>Company</th>
				<th>Role</th>
				<th>Package</th>
				<th>Location</th>
				<th>Applied Date</th>
				<th>Interview</th>
				<th>Status</th>
			</tr>

			<c:forEach var="application" items="${applications}">

				<tr>

					<td>${application.job.recruiter.companyname}</td>

					<td>${application.job.title}</td>

					<td>${application.job.ctc} LPA</td>

					<td>${application.job.location}</td>

					<!-- Applied Date -->
					<td>
						<c:set var="format"
							value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />

						<c:out value="${application.appliedDate.format(format)}" />
					</td>

					<!-- Interview Date -->
					<td>

						<c:if test="${application.interviewDate == null}">
							<span style="color: gray;">Not Scheduled</span>
						</c:if>

						<c:if test="${application.interviewDate != null}">

							<c:set var="format"
								value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />

							<c:out value="${application.interviewDate.format(format)}" />

						</c:if>

					</td>

					<!-- Job Status -->
					<td>

						<c:choose>

							<c:when
								test="${application.jobStatus.name() eq 'PENDING'}">

								<span class="badge pending">PENDING</span>

							</c:when>

							<c:when
								test="${application.jobStatus.name() eq 'SELECTED'}">

								<span class="badge selected">SELECTED</span>

							</c:when>

							<c:when
								test="${application.jobStatus.name() eq 'REJECTED'}">

								<span class="badge rejected">REJECTED</span>

							</c:when>

							<c:when
								test="${application.jobStatus.name() eq 'SCHEDULED'}">

								<span class="badge scheduled">SCHEDULED</span>

							</c:when>

							<c:otherwise>

								<span class="badge">
									${application.jobStatus}
								</span>

							</c:otherwise>

						</c:choose>

					</td>

				</tr>

			</c:forEach>

		</table>

	</div>

	<div class="back">

		<a href="/user/back">
			<button>Back</button>
		</a>

	</div>

</body>
</html>