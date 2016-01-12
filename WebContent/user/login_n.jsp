<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
</head>
<body>

<div id="main">
				<section class="generic-heading-3">
			<div class="container">
			<center>	<h1>Welcome to Mankind Mileage</h1>		</center>		<strong class="title-line">
			
					//	<ul class="breadcrumb" id="breadcrumb"><li class="home_bread"><a href="http://crunchpress.net/demo/eco-green">Complaint & Feedback</a>  > </li> <li class="current">Feedback</li></ul>				</strong>
			</div>
		</section>
				<!--CONTANT SECTION START-->
		<div class="content ">
			<div class="container">
																					
								<!--BREADCRUMS END-->
				<!--MAIN CONTANT ARTICLE START-->
				<div class="main-content">
					<div class="page_content row-fluid">
												<div id="block_content_first" class="span9">
							<div class="row-fluid">
								<article class="span12 mbtm fadeIn cp_load mbtm first"><div class="woocommerce">



		

		<form method="post" class="login" action="<%=request.getContextPath() %>/LoginFilter" >
		 <input type="hidden" name="flag" value="login">
		
		<fieldset style="padding: inherit; border:1px solid black;"><legend style="width:inherit">Login to access your account</legend>
			<p class="form-row form-row-wide">
				
				
				<input type="text" class="input-text" id="username" name="login" placeholder="UserId" />
				<input type="password" class="input-text" placeholder="Password"  name="password" />
			</p>
			<p class="form-row">
			<input type="submit" class="button" name="submit1" value="Login" />
			
			</p>
		 <strong>Not a member? <a href="<%=request.getContextPath() %>/user/RegisterNow.jsp">Sign Up</a></strong>s	  <a href="<%=request.getContextPath() %>/Admin/forgot_password.jsp"><small>Forgot Your Password?</small></a>
		</fieldset>			
		</form>


</div>
</article>							</div>
						</div>
																					</div>
				</div>
			</div>
			<div class="clear clearfix"></div>
		</div>	
			</div>

</body>
</html>