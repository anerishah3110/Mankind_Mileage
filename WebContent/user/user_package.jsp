<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/hiral.css" rel="stylesheet" type='text/css'>
<link href="css/style-custom.css" rel="stylesheet" type='text/css'>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="#" class="custom-form">
			<div class="formrow">
				<div class="span12">
					<div class="pull-left">

						<label style="font-size: xx-large; font-weight: bold;" >Cord Blood</label>
					</div>
				</div>
			</div>
			<div class="formrow">
				<div class="span12">
					<table class="style1">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Description</th>
								<th>Duration</th>
								<th>Price</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sessionScope.packlist }" var="i"
								varStatus="j">
								<c:if test="${i.package_type eq 'CordBlood' }">
									<tr>
										<td>${j.count }</td>
										<td>${i.package_name}</td>
										<td>${i.package_description}</td>
										<td>${i.package_duration}</td>
										<td>${i.package_price}</td>
										<td><form method="post" action="<%=request.getContextPath()%>/UserMasterController"><input type="submit" value="Continue..."><input type="hidden" name="flag" value="continue"><input type="hidden" name="package_id" value="${i.package_id }"><input type="hidden" name="price" value="${i.package_price}"></form></td>
									</tr>
								</c:if>
							</c:forEach>

							<!--  <tr>
                        	<td>2</td>
                            <td>Lorem ipsum sit amet</td>
                            <td>dsfd</td>
                            <td>17</td>
                            <td>123</td>                            
                       	</tr>
                        <tr>
                        	<td>1</td>
                            <td>Lorem ipsum sit amet</td>
                            <td>abc</td>
                            <td>12</td>
                            <td>345</td>                            
                       	</tr>
                        <tr>
                        	<td>2</td>
                            <td>Lorem ipsum sit amet</td>
                            <td>dsfd</td>
                            <td>17</td>
                            <td>123</td>                            
                       	</tr>
                        <tr>
                        	<td>1</td>
                            <td>Lorem ipsum sit amet</td>
                            <td>abc</td>
                            <td>12</td>
                            <td>345</td>                            
                       	</tr>
                        <tr>
                        	<td>2</td>
                            <td>Lorem ipsum sit amet</td>
                            <td>dsfd</td>
                            <td>17</td>
                            <td>123</td>                            
                       	</tr>
 -->
						</tbody>
					</table>
				</div>
			</div>
				<div class="formrow">
				<div class="span12">
					<div class="pull-left">
						 <label style="font-size: xx-large; font-weight: bold;">Normal</label>
					</div>
				</div>
			</div><div class="formrow">
				<div class="span12">
					<table class="style1">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Description</th>
								
								<th>Price</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${sessionScope.packlist }" var="i" varStatus="j">
		<c:if test="${i.package_type eq 'Normal' }">
		<tr>
			<td>${j.count }</td>
			<td>${i.package_name}</td>
			<td>${i.package_description}</td>
			
			<td>${i.package_price}</td>
			<td><form method="post" action="<%=request.getContextPath()%>/UserMasterController"><input type="submit" value="Continue..."><input type="hidden" name="flag" value="continue"><input type="hidden" name="package_id" value="${i.package_id }"><input type="hidden" name="price" value="${i.package_price}"></form></td>
	
			 
			 
		</tr>
		</c:if>
		</c:forEach>
						</tbody>
						</table>
						</div>
						</div>
			
			
		
		</form>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>