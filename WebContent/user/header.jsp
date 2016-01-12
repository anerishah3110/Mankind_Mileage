<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="dao.*,vo.*,controller.*,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
</head>
<body>
	<header id="header"> <!--Navigation Area Start-->
	<div class="navigation-box home-page">
		<div class="container">
			<strong class="logo"> <a
				href="http://crunchpress.net/demo/eco-green"> <img
					class="logo_img" width="175"  src="<%=request.getContextPath() %>/user/img/logo.png" style="height: 118px !important;"
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
							<nav id="nav" class="desktop_view nav-collapse collapse"> <%-- <c:forEach items="${sessionScope.lssearch2 }" var="i">
										<ul id="menu-main-menu" class="">
											<li id="menu-item-56"
												class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-56"><a
												href="http://crunchpress.net/demo/eco-green/">${i.category_name }</a> --%>
							<li class="dropdown"><a  href="<%=request.getContextPath() %>/user/Home.jsp">Home<b class="caret"></b>
							</a></li>
								<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">Regestration<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load1">CORD BLOOD</a></li>
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load3">DONOR</a></li>
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load">NORMAL</a></li>
							</ul>	
							</li>
						
							
						<%-- 	<c:forEach items="${sessionScope.menu}" var="i">
								<c:choose>
									<c:when test="${ not empty i.value }">
										<li class="dropdown"><a class="dropdown-toggle" href="#"
											data-toggle="dropdown"> ${i.key }<b class="caret"></b>
										</a>
											<ul class="dropdown-menu">
												<c:forEach items="${i.value }" var="j">
													<li><a href="<%=request.getContextPath() %>${j.url}">${j.subcat_name}</a></li>

												</c:forEach>
											</ul></li>

									</c:when>
									<c:otherwise>

										<li><a href="#">${i.key }</a></li>

									</c:otherwise>
								</c:choose>

							</c:forEach>
 --%>							<li class="dropdown"><a
								href="<%=request.getContextPath()%>/PackageController?flag=load_pack1">Packages<b
									class="caret"></b>
							</a></li>
						<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown" id="profile" ><a
								href="<%=request.getContextPath()%>/PhotoController?flag=load">View
									Profile<b class="caret"></b>
							</a></li>
						</c:if>
							<c:if test="${sessionScope.userID eq null }">
							<li class="dropdown" id="login"><a
								href="<%=request.getContextPath()%>/login.jsp">Login<b
									class="caret"></b>
							</a></li>
							</c:if>
								<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown" id="logout"><a
								href="<%=request.getContextPath()%>/LoginFilter?flag=logout">Logout<b
									class="caret"></b>
							</a></li>
							</c:if>
							<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">Comment<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath() %>/user/complaint.jsp">Complaint</a></li>
								<li><a href="<%=request.getContextPath() %>/user/feedback.jsp">Feedback</a></li>
								
							</ul>	
							</li>
							</c:if>
							

							</nav>
						</div>
					</div>
					<!--Currency Box Start-->
				<!-- 	<ul class="currency-box">
						<li class="cart-item"><a data-placement="bottom"
							data-toggle='tooltip' title="Shopping" class="btn-login"><i
								class="fa fa-shopping-cart"></i> Cart</a>
							<div class="widget_shopping_cart_content"></div></li>
					</ul>
				 -->	<!--Currency Box End-->
				</div>
				<div class="bottom-row">
					<form method="get" action="http://crunchpress.net/demo/eco-green/"
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
							class="btn-donate">Donate Now</a>		</div>
				</div>
			</div>
		</div>
	</div>
	<!--Navigation Area End--> <!--Banner Start-->
	<div class="inner-banner">
		<img src="<%=request.getContextPath() %>/user/img/IMG_20150411_123402.jpg" style="width: 100% !important; height: 185px !important;">
	</div>
	<!--Banner End--> </header>

</body>
</html>