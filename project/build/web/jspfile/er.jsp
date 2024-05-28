<!DOCTYPE html>
<html>
<head>
	<title>Incorrect Username or Password</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			color: #333;
			text-align: center;
			padding: 50px;
		}

		h1 {
			font-size: 2em;
			margin-bottom: 20px;
		}

		p {
			font-size: 1.2em;
			margin-bottom: 30px;
		}

		.btn {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px;
			border-radius: 5px;
			border: none;
			margin: 10px;
			width: 150px;
			font-size: 1.2em;
			cursor: pointer;
		}

		.btn:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<h1>Incorrect Username or Password</h1>
	<p>The username and/or password you entered is incorrect. Please try again.</p>
	<a href="<%=request.getContextPath()%>/check" class="btn">Back to Login</a>
</body>
</html>
