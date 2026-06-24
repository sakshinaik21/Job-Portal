<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applications</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #f6d365, #fda085);
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	.container {
		max-width: 1200px;
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

	.applied { background: #f39c12; }
	.scheduled { background: #3498db; }
	.selected { background: #2ecc71; }
	.rejected { background: #e74c3c; }

	button {
		padding: 6px 10px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 12px;
		margin: 2px;
		color: white;
	}

	.schedule { background: #3498db; }
	.accept { background: #2ecc71; }
	.reject { background: #e74c3c; }
	.resume { background: #8e44ad; }

	button:hover {
		opacity: 0.9;
	}

	.back {
		text-align: center;
		margin-top: 15px;
	}

	.back button {
		padding: 8px 16px;
		background: #333;
		color: white;
		border-radius: 6px;
	}

	@media (max-width: 768px) {
		h1 {
			font-size: 20px;
		}
	}
</style>

</head>
<body>

	<h1>Applications</h1>

	<div class="container">

		<table>
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Role</th>
				<th>Resume</th>
				<th>Applied</th>
				<th>Interview</th>
				<th>Status</th>
				<th>Action</th>
			</tr>

			<c:forEach var="application" items="${applications}">
				<tr>

					<td>${application.user.name}</td>
					<td>${application.user.mobile}</td>
					<td>${application.job.title}</td>

					<td>
						<a href="/recruiter/resume/${application.user.id}">
							<button class="resume">Download</button>
						</a>
					</td>

					<td>${application.appliedDate}</td>

					<td>
						<c:if test="${application.interviewDate==null}">
							<span style="color:gray;">NA</span>
						</c:if>
						<c:if test="${application.interviewDate!=null}">
							${application.interviewDate}
						</c:if>
					</td>

					<td>
						<c:choose>
							<c:when test="${application.jobStatus.name()=='APPLIED'}">
								<span class="badge applied">APPLIED</span>
							</c:when>
							<c:when test="${application.jobStatus.name()=='SCHEDULED'}">
								<span class="badge scheduled">SCHEDULED</span>
							</c:when>
							<c:when test="${application.jobStatus.name()=='SELECTED'}">
								<span class="badge selected">SELECTED</span>
							</c:when>
							<c:when test="${application.jobStatus.name()=='REJECTED'}">
								<span class="badge rejected">REJECTED</span>
							</c:when>
						</c:choose>
					</td>

					<td>

						<c:if test="${application.jobStatus.name()=='APPLIED'}">
							<a href="/recruiter/schedule/${application.id}">
								<button class="schedule">Schedule</button>
							</a>
						</c:if>

						<c:if test="${application.jobStatus.name()=='SCHEDULED'}">
							<a href="/recruiter/accept/${application.id}">
								<button class="accept">Accept</button>
							</a>
							<a href="/recruiter/reject/${application.id}">
								<button class="reject">Reject</button>
							</a>
						</c:if>

						<c:if test="${application.jobStatus.name()=='SELECTED' || application.jobStatus.name()=='REJECTED'}">
							<span style="color:gray;">Completed</span>
						</c:if>

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