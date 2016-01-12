<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSChart</title>

<script type="text/javascript" src="<%=request.getContextPath()%>/Admin/js/jscharts.js"></script>


<script>
  function loadState()
	{
	//	alert("inside function");
		
	//	var countryId=document.getElementById("countryId");
		//var state=document.getElementById("state");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
	//	removeAllState();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				//alert(xmlhttp.responseText);
				//var jsonObj = JSON.parse("");
				
				//var jsonObj = JSON.parse(xmlhttp.responseText);
				
				var myChart = new JSChart('graph', 'pie');
			
				myChart.setDataJSON('${pageContext.request.contextPath}/Admin/h.json');
				myChart.draw();
				
			}
			else
			{
				loader();
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/Admin/pie_loadState.jsp", true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	
</script>


</head>
<body onload="loadState()">



<div id="graph">Loading graph...</div>



<input type="hidden" name="flag" value="taskchart">
</body>
</html>