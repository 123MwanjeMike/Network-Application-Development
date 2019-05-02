<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sales Login</title>
    <link rel="stylesheet" type="text/css" href="style/Login/vendor/bootstrap/css/bootstrap.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/fonts/iconic/css/material-design-iconic-font.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="style/Login/vendor/css-hamburgers/hamburgers.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/vendor/animsition/css/animsition.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/vendor/select2/select2.min.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/vendor/daterangepicker/daterangepicker.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/css/util.css">
  	<link rel="stylesheet" type="text/css" href="style/Login/css/main.css">
  </head>

  <body>
    <div class="limiter">
		  <div class="container-login100">
			  <div class="wrap-login100">
          <form class="login100-form validate-form" action="SalesLogin" method="post">
            <span class="login100-form-title p-b-26">Sales Personnel</span>

					  <div class="wrap-input100 validate-input">
						  <input class="input100" type="text" name="username">
						  <span class="focus-input100" data-placeholder="Username"></span>
					  </div>

					  <div class="wrap-input100 validate-input" data-validate="Enter password">
						  <span class="btn-show-pass">
							  <i class="zmdi zmdi-eye"></i>
						  </span>
						  <input class="input100" type="password" name="password">
						  <span class="focus-input100" data-placeholder="Password"></span>
					  </div>

					  <div class="container-login100-form-btn">
						  <div class="wrap-login100-form-btn">
							  <div class="login100-form-bgbtn"></div>
							    <button class="login100-form-btn">Login</button>
						    </div>
					     </div>
            <div class="container-login100-form-btn"><a href="index.html">Back</a></div>
				  </form>
        </div>
		  </div>
	  </div>
	<div id="dropDownSelect1"></div>
</body>
</html>
