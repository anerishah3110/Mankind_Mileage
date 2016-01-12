<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/hiral.css" rel="stylesheet" type='text/css'>
<link href="css/style-custom.css" rel="stylesheet" type='text/css'>

<title>Mankind Mileage</title>
</head>
<body class="login">
<%@include file="header.jsp" %>
<form action="<%=request.getContextPath() %>/user/reimbursement.jsp" method="post">
<c:set var="list1" value="${sessionScope.report_count}"></c:set>
<div style="font-family: sans-serif!important;font-size: x-large!important;font-weight: bold!important;margin-left: 100px!important;margin-top: 300px!important; ">
Your Pattern is matched with <c:out value="${f:length(list1)}"></c:out> person :<br><br>
<c:forEach items="${sessionScope.report_count }" var="i" varStatus="j">
	<c:out value="${i[0]}"></c:out><br>
</c:forEach>
<br><br>
<input type="submit" name="b1" value="Reimbursement"></form>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br><br><br><br><br>
<%@include file="footer.jsp" %>
</body>
</html>