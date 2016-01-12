<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
<style>
div.upload {
    width: 37px;
    height: 28px;
     
    overflow: hidden;
    margin-top:-48px;
    margin-left:98px;
    position:relative;
}

div.upload input {
    display: block !important;
    width: 37px !important;
    height: 28px !important;
    opacity: 0 !important;
    overflow: hidden !important;
}

a {
	color: white;
	font-family: sans-serif;
	font-weight: bolder;
	font-size: x-large;
}
</style>
<script>
function fn()
{
    var myWindow = window.open("<%=request.getContextPath()%>/LabController?flag=report","Report", "width=1000, height=700,titlebar=no");
    }

function funwin(){
    
    document.getElementById("frmupload").submit();
    
}
</script>


</head>
<body background="<%=request.getContextPath()%>/user/img/white-striped-background-and-wallpapers-for-gt-red-black-black-and-red-hd-wallpaper-android-for-walls-home-border-iphone-5-background-pattern-with-glitter.jpg"
<%
String s=(String)session.getAttribute("type");
		
%>
	style="background-repeat: no-repeat; BACKGROUND-SIZE: 1366PX;">
	<div style="height: 500px !important;">
	<c:if test="${not empty sessionScope.imagelist }">
		<c:forEach items="${sessionScope.imagelist }" var="i" varStatus="j">
			<form action="<%=request.getContextPath()%>/UploadServletPic"
			 name="" id="frmupload"	method="post" enctype="multipart/form-data">
				<center>
							<%-- <c:if test="${i.path }">
						<img src="<%=request.getContextPath()%>/user/img/Blank-Face.jpg"
							style="border-radius: 50%; height: 200px !important; width: 200px !important; margin-top: 80px !important;"> --%>
					

					
						<img src="<%=request.getContextPath() %>/doc/${i.path}"
							style="border-radius: 50%; height: 200px !important; width: 200px !important; margin-top: 80px !important;">
					<img
						src="<%=request.getContextPath()%>/user/img/pencil-icon-614x460.png"
						style="border-radius: 50%; height: 50px !important; width: 50px !important; margin-top: 0px !important; margin-left: -80px !important;">
						<div class="upload"><input type="file" name="fu1" onchange="funwin()"></div></img>
				</center>

				
			</form>
		</c:forEach>
	</c:if>
	<c:if test="${empty sessionScope.imagelist }">
			<form action="<%=request.getContextPath()%>/UploadServletPic"
				method="post" id="frmupload" enctype="multipart/form-data">
				<center>
						<img src="<%=request.getContextPath()%>/user/img/Blank-Face.jpg"
							style="border-radius: 50%; height: 200px !important; width: 200px !important; margin-top: 80px !important;">
							<img
						src="<%=request.getContextPath()%>/user/img/pencil-icon-614x460.png"
						style="border-radius: 50%; height: 50px !important; width: 50px !important; margin-top: 0px !important; margin-left: -80px !important;">
						<div class="upload"><input type="file" name="fu1" onchange="funwin()"></div></img>
				</center>

				
			</form>
	</c:if>


		<%
			HttpSession session1 = request.getSession();
			String h = (String) session1.getAttribute("userName");
		%>
		<h2>
			<center
				style="color: black; font-family: sans-serif; font-weight: bolder; font-size: xx-large;"><%=h%></center>
		</h2>
	</div>
	<div style="clear: left; background-color: black; height: 110">
		<a href="Home.jsp" style="margin-left: 200px !important;">HOME</a>
		&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="<%=request.getContextPath()%>/UserMasterController?flag=search1">Personal
			Details</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${sessionScope.type ne 'donor' }">
			<a href="reimbursement.jsp">Reimbursement</a>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/UserMasterController?flag=pattern_matching">Apply for patternmatching</a></c:if>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="" onclick="fn()">View Report</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
	</div>


</body>
</html>