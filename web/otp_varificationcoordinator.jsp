<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="with=device-width, initial-scale=1.0" charset="utf-8">
	<title>OTP Varification</title>
	<link rel="stylesheet" type="text/css" href="demo.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
	<section class="header">
		<nav>
			<a href="index.html" class="logo"><h2>recru<span style="color: #f44336">IT</span></h2> </a>
			<div class="nav-links" id="nav-links">				
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul class="list">
					<li><a href="index.html">HOME</a></li>					
				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
		</nav>

                	<div class="container1">
		<div class="title">Enter OTP</div>
		<form action="OtpCheckerCoordinator" method="post">
			<div class="user_details">				
				<div class="input-box">
					<span class="details">Check your email for the OTP</span>
					<input type="text" name="otp"  placeholder="One Time Password" required>
					</div>	
                                </div>			
			<div class="button">
				<input type="submit" value="Verify">
			</div>
			<div class="form-link"><a href="forgot_password_coordinator.jsp">Didn't get OTP?</a></div>
		</form>
	</div>
	</section>

</body>
</html>