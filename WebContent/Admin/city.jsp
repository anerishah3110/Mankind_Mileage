<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
<script>
  function loadState()
	{
		var countryId=document.getElementById("country_example");
		
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
				alert(xmlhttp.responseText);
				
				for(var i=0 ; i<jsonObj.length ; i++)
				{
				
					var createOption=document.createElement("option");
					
					createOption.value=jsonObj[i].stateId;
					createOption.text=jsonObj[i].stateName;
					
					document.cityForm.state_example.options.add(createOption);
					
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
		var removeState=document.cityForm.state_example.options.length;
		alert(removeState);
		for(var i=removeState ; i>=0 ; i-- )
		{
			//alert(document.cityForm.state_example.options[i].text);
			document.cityForm.state_example.remove(i);
			
		}
	}
</script>

</head>
<body>
<%@ include file="header.jsp" %>
<div class="pageheader">
      <h2><i class="fa fa-home"></i> Manage Location <%--<span>Subtitle goes here...</span>--%></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Manage location </a></li>
          <li class="active">Add City</li>
        </ol>
      </div>
</div>

    <div class="contentpanel">
      
      <div class="row">
        
        <div class="col-md-12">
          <form id="basicForm" action="<%=request.getContextPath() %>/CityController" method="POST" class="form-horizontal" name="cityForm">
          <input type="hidden" name="flag" value="insert" />
          <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-btns">
                  <a href="" class="panel-close">&times;</a>
                  <a href="" class="minimize">&minus;</a>
                </div>
                <h4 class="panel-title">Add City</h4>
                <!--<p>Please provide your name, email address (won't be published) and a comment.</p>-->
              
 						<div class="panel-body">
                        <div class="form-group">
									<label class="col-sm-3 control-label">Country Name <span
										class="asterisk">*</span></label>
									<div class="col-sm-9">
										<select name="country_example" id="country_example" class="form-control" required="" onchange="loadState()">
										 <option>----select----</option>
                                <c:forEach items="${sessionScope.clist}" var="i">
                               
                                    <option value="${i.country_id }">${i.country_name}</option>
                                    </c:forEach>                                                                       
                                </select> 
									</div>
								</div>
                        
               
			 
                        <div class="form-group">
									<label class="col-sm-3 control-label">State Name <span
										class="asterisk">*</span></label>
									<div class="col-sm-9">
										<select name="state_example" id="state_example"class="form-control" required="">
										<option>---select---</option>
                                </select>
                                 
									</div>
								</div>
                        
			  
			  				

                  
              
                <div class="form-group">
                  <label class="col-sm-3 control-label">City Name<span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="City" id="city_name"  class="form-control" placeholder="Type city name..." required />
                  </div>
                </div>
                
               
               
               
                <%--<div class="form-group">
                  <label class="col-sm-3 control-label">City Description </label>
                  <div class="col-sm-9">
                    <input type="text" name="cname" class="form-control" placeholder="Type Description..."/>
                  </div>
                </div>--%>
                
                
                
                
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-3">
                    <input type="submit" class="btn btn-primary" value="Add">
                    <input type="reset" value="Reset" class="btn btn-default">
                  </div>
                </div>
              </div>
            
          </div><!-- panel -->
          </form>
          
          
        </div><!-- col-md-12 -->
        

        
      </div><!--row -->
      
<!-- row-->
      
    </div><!-- contentpanel -->
    <script src="<%=request.getContextPath() %>/Admin/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/toggles.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/retina.min.js"></script>
<script src="<%=request.getContextPath() %>/Admin/js/jquery.cookies.js"></script>

<script src="<%=request.getContextPath() %>/Admin/js/jquery.validate.min.js"></script>

<script src="<%=request.getContextPath() %>/Admin/js/custom.js"></script>

<script>
jQuery(document).ready(function(){
  
  // Basic Form
  jQuery("#basicForm").validate({
    highlight: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    },
    success: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-error');
    }
  });
  
  // Error Message In One Container
  jQuery("#basicForm2").validate({
	 errorLabelContainer: jQuery("#basicForm2 div.error")
  });
  
  // With Checkboxes and Radio Buttons
  jQuery("#basicForm3").validate({
    highlight: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    },
    success: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-error');
    }
  });
  
  // Validation with select boxes
  jQuery("#basicForm4").validate({
    highlight: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    },
    success: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-error');
    }
  });
  
  
});
</script>
    
 <%@ include file="footer.jsp" %>
 
</body>
</html>