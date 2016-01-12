<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ include file="headerProfile.jsp" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/hiral.css" rel="stylesheet" type='text/css'>
<link href="css/style-custom.css" rel="stylesheet" type='text/css'>

<title>Insert title here</title>
<script>
function fn()
{
    var a=document.getElementById("1");
    var b=document.getElementById("2");
    var c=document.getElementById("l1");
    var d=document.getElementById("l2");
    var e=document.getElementById("l3");
    var f=document.getElementById("l4");
    var g=document.getElementById("l5");
    a.style.display="";
    b.style.display="none";
    
    
    e.disabled=false;
    e.style.border="1px";
    f.disabled=false;
    f.style.border="1px";
    g.disabled=false;
    g.style.border="1px";
    }
</script>
</head>
<body>
<div class="container">
	<form action="<%=request.getContextPath() %>/UserMasterController?flag=update" method="post" class="custom-form">
	<c:forEach items="${sessionScope.search}" var="i" varStatus="j">
    	<div class="formrow text-center">        
        	
			<div class="col-6 pull-right">
				<div class="pad15 pull-left">                       
				   <label class="bold">${i.user_id.user_name}</label>
				</div>
			</div>
		</div>
		<div class="formrow">        
        	<div class="colrow">
                <div class="col-6">
                    <div class="pad15 pull-right">                       
                       <label>Unique ID</label>
                    </div>
                </div>
                <div class="col-6">
					<div class="pad15 pull-left">                   
					   <input type="text" name="l1" id="l1" value="${i.user_id.user_id}" disabled="disabled" style="border: 0px; background-color: white; border-color: white;">
					</div>
				</div>            
			</div>
		</div>
        <div class="formrow">        
        	<div class="colrow">
                <div class="col-6">
                    <div class="pad15 pull-right">                       
                       <label>Unique Name</label>
                    </div>
                </div>
                <div class="col-6">
					<div class="pad15 pull-left">                   
					   <input type="text" name="l2" id="l2"  value="${i.user_id.user_name}" disabled="disabled" style="border: 0px; background-color: white; border-color: white;">
					</div>
				</div>            
			</div>
		</div>
		<div class="formrow">        
        	<div class="colrow">
                <div class="col-6">
                    <div class="pad15 pull-right">                       
                       <label>Address</label>
                    </div>
                </div>
                <div class="col-6">
					<div class="pad15 pull-left">                   
					   <input type="text" name="l3" id="l3" value="${i.address}" disabled="disabled" style="border: 0px; background-color: white; border-color: white;">
					</div>
				</div>            
			</div>
		</div>
		<div class="formrow">        
        	<div class="colrow">
                <div class="col-6">
                    <div class="pad15 pull-right">                       
                       <label>Contact Number</label>
                    </div>
                </div>
                <div class="col-6">
					<div class="pad15 pull-left">                   
					  <input type="text" name="l4" id="l4" value="${i.contact_no}" disabled="disabled" style="border: 0px; background-color: white; border-color: white;">
					</div>
				</div>            
			</div>
		</div>
		<div class="formrow">        
        	<div class="colrow">
                <div class="col-6">
                    <div class="pad15 pull-right">                       
                       <label>E-Mail ID</label>
                    </div>
                </div>
                <div class="col-6">
					<div class="pad15 pull-left">                   
					   <input type="text" name="l4" id="l4" value="${i.contact_no}" disabled="disabled" style="border: 0px; background-color: white; border-color: white;">
					</div>
				</div>            
			</div>
		</div>
		<div class="formrow">        
        	<div class="colrow">
              
                <div class="col-6 pull-right" id="1" style="display: none;">
					<div class="pad15 pull-left">                       
                       <input type="submit" value="Save Changes"/>
					   <input type="button" name="b2" value="Cancel">
                    </div>
				</div> 
				 <div class="col-6 pull-right" id="2" >
					<div class="pad15 pull-left">                       
                       <input type="button" name="b3" value="Edit" onclick="fn()">
                    </div>
				</div>           
			</div>
		</div>
		</c:forEach>
    </form>
</div>
  <%@ include file="footer.jsp" %>
</body>
</html>