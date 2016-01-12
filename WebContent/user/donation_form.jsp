<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
function validate_mobile12(){

		var number1 = document.getElementById("phnno1").value;
		alert("000");

		
		if (isNaN(number1)) {
			alert("Enter Valid Phone Number");
			return false;
		}
		if ((number1.length != 10)) {
			alert("Phone number must be 10 digits.");
			return false;
		}
		
			
    else {
			return true;
		}

	}
function validate_password(){
  //alert("kavisha");
  var ps=document.getElementById("password1").value;
  var c_ps=document.getElementById("password2").value;
  if(ps!=c_ps){
      alert("Password did not match");
      return false;
  }
  else{
      
      validate_mobile12();
      return true;
  }
  
}

  function loadState()
	{
		var countryId=document.getElementById("country_example");
		//alert("ttttt"+countryId.value);
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllState();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				//alert(xmlhttp.responseText);
				
				for(var i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].stateId;
					createOption.text=jsonObj[i].stateName;
					
					document.donation.state_example.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/CityController?flag=loadState&countryId="+countryId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllState()
	{
		var removeState=document.donation.state_example.options.length;
		//alert(removeState);
		for(var i=removeState ; i>0 ; i-- )
		{
			//alert(document.cityForm.state_example.options[i].text);
			document.donation.state_example.remove(i);
			
		}
	}
	function loadCity()
	{
		var stateId=document.getElementById("state_example");
		//var stateID=document.getElementsByName("state_id");
		//alert(countryId);
	//	alert("kavishaaa");
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		removeAllCity();
	
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {

				var jsonObj = JSON.parse(xmlhttp.responseText);
				//alert(xmlhttp.responseText);
				
				for(var i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					
					
					createOption.value=jsonObj[i].cityId;
					createOption.text=jsonObj[i].cityName;
					
					
					
					document.donation.city_example.options.add(createOption);
					
				}
			}
		}

		xmlhttp.open("get", "${pageContext.request.contextPath}/CityController?flag=loadCity&stateId="+stateId.value, true);
		xmlhttp.send();
		/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */
	}
	
	function removeAllCity()
	{
		var removeState=document.donation.city_example.options.length;
	//	alert(removeState);
		for(var i=removeState ; i>0 ; i-- )
		{
			//alert(document.cityForm.state_example.options[i].text);
			document.donation.city_example.remove(i);
			
		}	}


</script>


</head>
<body>
<%@ include file="header.jsp" %>
<div id="main">
				<section class="generic-heading-3">
			<div class="container">
				<h1>Registration</h1>				<strong class="title-line">
						<ul class="breadcrumb" id="breadcrumb"><li class="home_bread"><a href="http://crunchpress.net/demo/eco-green">Home</a>  > </li> <li class="current">Registration</li></ul>				</strong>
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



		<h2>Donation Registration</h2>

		<form method="post" onsubmit="return validate_password()" class="login" action="<%=request.getContextPath() %>/UserMasterController" name="donation">
		<input type="hidden" name="flag" value="insert_donor">
		<input type="hidden" name="status" value="unblock">
		<input type="hidden" name="type" value="donor">
			<input type="hidden" name="t" value="user">

			
			<p class="form-row form-row-wide">
				<label for="username">Name:<span class="required">*</span></label>
				<input type="text" class="input-text" name="username" id="name1" required="required"/>
			</p>
			<p class="form-row form-row-wide">
				<label for="password">Password: <span class="required">*</span></label>
				<input class="input-text" type="password" name="password" id="password1" required="required"/>
			</p>
			<p class="form-row form-row-wide">
				<label for="password">Confirm Password:<span class="required">*</span></label>
				<input class="input-text" type="password" name="password2" id="password2" required="required"/>
			</p>
			<p class="form-row form-row-wide">
				<label for="address">Address:<span class="required">*</span></label>
				<textarea rows="3" cols="700" class="input-text" name="address" id="address1" required="required"></textarea>
			</p>
			<p class="form-row form-row-wide">
				<label for="country">Country:<span class="required">*</span></label>
				<select name="country_example" id="country_example" required="required" onchange="loadState()" >
				<option value=""> ---select---</option>
				<c:forEach items="${sessionScope.lscountry }" var="i">
				
				<option value="${i.country_id}">${i.country_name }</option>
				</c:forEach>
				</select>
			</p>
			<p class="form-row form-row-wide">
				<label for="state">State:<span class="required">*</span></label>
					<select name="state_example" id="state_example" required="required" onchange="loadCity()">
					<option value="">---select---</option>
					</select>
			</p>
			<p class="form-row form-row-wide">
				<label for="city">city:<span class="required">*</span></label>
				<select name="city_example" id="city_example" required="required">
				<option value="">----select----</option>
				</select>
			</p>
			<p class="form-row form-row-wide">
				<label for="email">E-mail Id:<span class="required">*</span></label>
				<input type="email" class="input-text" name="email" id="email1" required="required" />
			</p>
			<p class="form-row form-row-wide">
				<label for="phone_no">Contact No.:<span class="required">*</span></label>
				<input type="text" class="input-text" name="phnno" id="phnno1" required="required" />
			</p>
			 <p class="form-row form-row-wide">
				<label for="duedate">Due Date:<span class="required">*</span></label>
				<input type="date" class="input-text" name="duedate" id="duedate1" required="required" placeholder="DD/MM/YYYY" />
			</p>
			 <p class="form-row form-row-wide">
				<label for="hname">Hospital Name:<span class="required">*</span></label>
				<input type="text" class="input-text" name="hname" id="hname1" required="required"/>
			</p>
			<p class="form-row form-row-wide">
				<label for="haddress">Hospital Address:<span class="required">*</span></label>
				<textarea rows="3" cols="400" class="input-text" name="haddress" id="haddress1" required="required"></textarea>
			</p>
			<p class="form-row form-row-wide">
				<label for="docname">Name Of Doctor:<span class="required">*</span></label>
				<input type="text" class="input-text" name="docname" id="docname1" required="required"/>
			</p> 
			 <!-- <p class="form-row form-row-wide">
				<label for="sibname">Sibling Name:</label>
				<input type="text" class="input-text" name="sibname" id="sibname1" />
			</p> -->

			
			 <!-- <p class="form-row">
				<input type="hidden" id="_wpnonce" name="_wpnonce" value="465cb18893" /><input type="hidden" name="_wp_http_referer" value="/demo/eco-green/?page_id=302" /> -->				<input type="submit" class="button" name="submit1" value="Submit" /><input type="button" class="button" name="cancel1" value="cancel" /> 
				<!-- <label for="rememberme" class="inline">
					<input name="rememberme" type="checkbox" id="rememberme" value="forever" /> Remember me				</label>
			</p>
			<p class="lost_password">
				<a href="http://crunchpress.net/demo/eco-green/?page_id=302&#038;lost-password">Lost your password?</a>
			</p> -->

			
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
<%@ include file="footer.jsp" %>
</body>
</html>