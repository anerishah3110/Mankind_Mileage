<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	HttpSession session1=request.getSession();
int a=Integer.parseInt(session1.getAttribute("random1").toString());
 %>
<div class="col-md-2 col-md-offset-2">
<h2>Report</h2></div>
<form action="<%=request.getContextPath() %>/LabController" method="POST" id="wizard_validate">
<input type="hidden" name="flag" value="report_insert">
						<div class="form-row">
                                <div class="col-md-2 col-md-offset-2">Report Number:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" id="t1" value="<%=a%>" name="r_no"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                        <div class="form-row">
                            <div class="col-md-2 col-md-offset-2">Lab Unique_ID:</div>
                            <div class="col-md-6">                            
                                 <input type="text" class="validate[required,custom[integer]] form-control" name="uid"/>   
                                   <c:if test="${param.flag eq 'no' }">
                                    <lable>Report already exists on this ID</lable></c:if>
                                                           
                                <span class="help-block">Required</span>
                            </div>
                        </div>
                        
                         <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">A1:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="a"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">A2:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="a2"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">B1:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="b"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">B2:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="b2"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">DR1:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="dr"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="form-row">
                                <div class="col-md-2 col-md-offset-2">DR2:</div>
                                <div class="col-md-6">
                                    <input type="text" class="validate[required,custom[integer]] form-control" name="dr2"/>
                                    <span class="help-block">Required, integer</span>
                                </div>                        
                                </div>
                                <div class="footer clear">
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