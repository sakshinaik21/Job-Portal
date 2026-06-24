<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify OTP</title>

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
		background: linear-gradient(135deg, #3a7bd5, #00d2ff);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 320px;
	}

	h2 {
		margin-bottom: 10px;
		color: #333;
	}

	.sub {
		font-size: 13px;
		color: #777;
		margin-bottom: 15px;
	}

	.message {
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	.otp-input {
		width: 100%;
		padding: 12px;
		font-size: 18px;
		letter-spacing: 5px;
		text-align: center;
		border-radius: 8px;
		border: 1px solid #ccc;
		outline: none;
		margin-bottom: 15px;
	}

	.otp-input:focus {
		border-color: #3a7bd5;
		box-shadow: 0 0 5px rgba(58,123,213,0.5);
	}

	button {
		width: 100%;
		padding: 11px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
	}

	.submit-btn {
		background: linear-gradient(135deg, #00c9a7, #00b894);
		color: white;
		margin-bottom: 10px;
	}

	.resend-btn {
		background: #eee;
		color: #333;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	@media (max-width: 400px) {
		.container {
			padding: 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h2> Verify OTP</h2>
		<div class="sub">Enter the OTP sent to your email</div>

		<div class="message">
			${pass} ${fail}
		</div>

		<form action="/recruiter/verify-otp" method="post">
			<input type="text" name="id" value="${id}" hidden>

			<input type="text" name="otp" class="otp-input" maxlength="6" placeholder="------" required>

			<button class="submit-btn">Verify</button>
		</form>

		<a href="/recruiter/resend-otp/${id}">
			<button id="resendButton" class="resend-btn">Resend OTP</button>
		</a>

	</div>

	<script>
		var resendButton = document.getElementById("resendButton");
		var timer;

		function disableButton() {
			resendButton.disabled = true;

			var seconds = 30;
			timer = setInterval(function() {
				resendButton.innerHTML = "Resend OTP (" + seconds + "s)";
				seconds--;

				if (seconds < 0) {
					clearInterval(timer);
					resendButton.innerHTML = "Resend OTP";
					resendButton.disabled = false;
				}
			}, 1000);
		}

		window.onload = function() {
			disableButton();
		};

		window.onunload = function() {
			clearInterval(timer);
		};
	</script>

</body>
</html>