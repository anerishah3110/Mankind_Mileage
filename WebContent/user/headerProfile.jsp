<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manking Mileage</title>
<script>
function fn()
{
    var myWindow = window.open("<%=request.getContextPath()%>/LabController?flag=report","Report", "width=1000, height=700,titlebar=no");
    }
</script>
</head>
<body>
	<header id="header">
			<!--Navigation Area Start-->
			<div class="navigation-box home-page">
				<div class="container">
					<strong class="logo"> <a
						href="http://crunchpress.net/demo/eco-green"> <img
							class="logo_img" width="175" height="124" src="img/logo.png"
							alt="Eco Green Wordpress">
					</a>
					</strong>
					<div class="top-bar-outer">
						<div class="nav-box">
							<div class="navbar">
								<button data-target=".nav-collapse" data-toggle="collapse"
									class="btn btn-navbar" type="button">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
								<div class="nav-collapse collapse">
									<nav id="nav" class="desktop_view nav-collapse collapse">
										<ul id="menu-main-menu" class="">
											<li id="menu-item-56"
												class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-56"><a
												href="<%=request.getContextPath() %>/user/Profilenew.jsp">Home</a>
												</li>
											<li id="menu-item-57"
												class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-57"><a
												href="<%=request.getContextPath() %>/UserMasterController?flag=search1">Personal Details</a>
												</li>
											<li id="menu-item-58"
												class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-58"><a
												href="<%=request.getContextPath()%>/UserMasterController?flag=pattern_matching">Apply For pattern matching</a>
												</li>
													<li id="menu-item-58"
												class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-58"><a
												href="reimbursement.jsp">ReImbursement </a>
												</li>
													<li id="menu-item-58"
												class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-58"><a
												href="" onclick="fn()">View Reports</a>
												</li>
										
										
																				</ul>
									</nav>
								</div>
							</div>
						 	<!--Currency Box Start-->
							<!-- <ul class="currency-box">
								<li class="cart-item"><a data-placement="bottom"
									data-toggle='tooltip' title="Shopping" class="btn-login"><i
										class="fa fa-shopping-cart"></i> Cart</a>
									<div class="widget_shopping_cart_content"></div></li>
							</ul> -->
						 	<!--Currency Box End-->
						</div>
						<div class="bottom-row">
							<form method="get"
								action="http://crunchpress.net/demo/eco-green/"
								class="header-search">
								<div class="input-box">
									<input name="s" required type="text" class="header-input">
									<button class="header-btn-search" id="searchsubmit" value="">
										<i class="fa fa-search"></i>
									</button>
								</div>

							</form>

							<div class="donate-box">
								<strong class="join-our-cause">JOIN OUR <span>CAMPAIGN!</span></strong>
						<strong class="title"> <span
							class="price">Donate and save life</span></strong> <a
							href="<%=request.getContextPath() %>/MenuController?flag=load3"
							class="btn-donate">Donate Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Navigation Area End-->


			<!--Banner Start-->
			<div class="inner-banner">
				<img src="<%=request.getContextPath() %>/user/img/IMG_20150411_123402.jpg" style="width: 100% !important; height: 185px !important;">
			</div>
			<!--Banner End-->

		</header>
</body>
</html>