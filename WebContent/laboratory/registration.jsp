<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-2 col-md-offset-2">
<h2>Registration</h2></div>
<form action="<%=request.getContextPath() %>/LabController" method="POST" id="wizard_validate">
<input type="hidden" name="flag" value="insert">

						<div  id="main" >
						<div class="form-row">
                                <div class="col-md-2 col-md-offset-2">Unique_ID:</div>
                                <div class="col-md-6">
                                    <input type="text" name="uid" class="validate[required,custom[integer]] form-control"/>
                                    <c:if test="${param.flag eq 'no' }">
                                    <lable>Not valid Unique_id</lable></c:if>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                
 								 <div class="form-row">                              
                                <div class="col-md-2 col-md-offset-2">Name:</div>
                                <div class="col-md-6">
                                    <input type="text" name="name" class="validate[required] form-control" />
                                    <span class="help-block">Required</span>
                                </div>                        
                                </div>
                                
                                 <div class="form-row">                              
                                <div class="col-md-2 col-md-offset-2">Package:</div>
                                
                                <div class="col-md-6">
                                 <select name="package_example" class="validate[required] form-control">
                                 <option> Select-one </option>
                                <c:forEach items="${sessionScope.packlist }" var="i" varStatus="j">
                                
                                   
                                    <option value="${i.package_id }">${i.package_name }</option> </c:forEach>
                                    </select>                
                                    <span class="help-block">Required</span>
                                </div> 
                                                       
                                </div>
                                 
                         <div class="form-row">
							<div class="col-md-2 col-md-offset-2">Are u sibling??</div>
							<div class="col-md-6">
							<input type="radio" name="r1" value="yes">YES</input><br>
							<input type="radio" name="r1" value="no">NO</input>
							</div>
							</div>
                                
                        
                       
                         <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">Contact No:</div>
                                <div class="col-md-6">
                                    <input type="text" name="c_no" class="validate[required] form-control"/>
                                    <span class="help-block">Required</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">Email_ID:</div>
                                <div class="col-md-6">
                                    <input type="email"  name="Email_id" class="validate[required] form-control"/>
                                    <span class="help-block">Required</span>
                                </div>                        
                                </div>
                             </div>   
                                 
                                <div class="footer clear" id="button" >
                        <div class="side">
                            <div class="btn col-md-offset-5">
                                <!--  <button class="btn btn-default" type="button" onClick="$('#validate').validationEngine('hide');">Hide prompts</button>-->
                                <button class="btn btn-success" type="submit">Add</button>
                                <button class="btn btn-success" type="reset">Cancel</button>
                            </div>
                        </div>
                    </div>
</form>
</body>
</html>