<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="kayenet.Admin" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <title>Admin Login</title>
  </head>

  <body>
    <jsp:useBean id='admin' scope='session' class='kayenet.Admin' />
	  <jsp:setProperty name='admin' property='userName' value='admin' />
	  <jsp:setProperty name='admin' property='passWord' value='pass' />

    <%
		  String uname = request.getParameter("username");
		  String pass = request.getParameter("password");
		  if((uname != null) && (pass != null)) {
        if(uname.equals(admin.getUserName()) && pass.equals(admin.getPassWord())) {
    %>
		<jsp:forward page='SessionCreator'  />
		<%
        }else{
          out.println("Wrong Input");
    %>

    <div class="limiter">
		  <div class="container-login100">
		  <div class="wrap-login100">

        <form class="login100-form validate-form" action="admin.jsp" method="post">
          <span class="login100-form-title p-b-26"> Welcome </span>
			    <span class="login100-form-title p-b-48">
				    <i class="zmdi zmdi-font"></i>
			    </span>

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
					    <button class="login100-form-btn"> Login </button>
				    </div>
			    </div>
	      </form>
      </div>
		  </div>
	  </div>

    <div id="dropDownSelect1"></div>
    <%
        }
		  }else{
	  %>
	  <div class="limiter">
		  <div class="container-login100">
			  <div class="wrap-login100">
          <form class="login100-form validate-form" action="admin.jsp" method="post">
            <span class="login100-form-title p-b-26"> Welcome </span>
					  <span class="login100-form-title p-b-48">
						  <i class="zmdi zmdi-font"></i>
					  </span>

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
							  <button class="login100-form-btn"> Login </button>
						  </div>
					  </div>
            <div class="container-login100-form-btn"><a href="index.html">Go back</a></div>
				  </form>
        </div>
		  </div>
	  </div>

    <div id="dropDownSelect1"></div>
	  <%
      }
    %>
  </body>

  <script src="style/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="style/Login/vendor/animsition/js/animsition.min.js"></script>
	<script src="style/Login/vendor/bootstrap/js/popper.js"></script>
	<script src="style/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="style/Login/vendor/select2/select2.min.js"></script>
	<script src="style/Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="style/Login/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="style/Login/vendor/countdowntime/countdowntime.js"></script>
	<script src="style/Login/js/main.js"></script>
</html>
