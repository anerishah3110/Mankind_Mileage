<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%String price=request.getParameter("package_price");
System.out.println("lllll"+price);%>
<div id="main">
				<section class="generic-heading-3">
			<div class="container">
				<h1>PayPal</h1>				<strong class="title-line">
						<ul class="breadcrumb" id="breadcrumb"><li class="home_bread"><a href="http://crunchpress.net/demo/eco-green">Home</a>  > </li> <li class="current">PayPal</li></ul>				</strong>
			</div>
		</section>
				<!--CONTANT SECTION START-->
		<div class="content ">
			<div class="container">
																					
								<!--BREADCRUMS END-->
				<!--MAIN CONTANT ARTICLE START-->
				<div class="main-content">
					


		<h2>Your Grand Total is:<%=price %></h2><br>
		<script async="async" src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=djvadodaria2011@yahoo.com" 
    data-button="buynow" 
    data-name="My product" 
    data-quantity="1" 
    data-amount="55" 
    data-currency="USD" 
    data-env="sandbox"
></script>
		
		

</div>
						</div></div></div>
<%@ include file="footer.jsp" %>
</body>
</html>