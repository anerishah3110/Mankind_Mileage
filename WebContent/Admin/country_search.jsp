<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="pageheader">
      <h2><i class="fa fa-table"></i> Tables <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Country</a></li>
          <li class="active">Search Country</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      

      
      
          
        
      
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="panel-btns">
            <a href="" class="panel-close">&times;</a>
            <a href="" class="minimize">&minus;</a>
          </div><!-- panel-btns -->
          <h3 class="panel-title">Search Country</h3>
          
        </div>
        <div class="panel-body">
          
          <br />
          <div class="table-responsive">
          <%@include file="errorNotify.jsp" %>
            <table class="table" id="table1">
              <thead>
                 <tr>
                    					
                                    <th >Country_ID</th>
                                    <th >Country_Name</th>
                                    <th>Action</th>
                    
                 </tr>
              </thead>
              <tbody>
                 <c:forEach items="${sessionScope.lssearch }" var="i" varStatus="j">
                                <tr class="odd gradeX">
                                   
                                    <td>${j.count}</td>
                                    <td>${i.country_name }</td>
                                    <td><a href="<%=request.getContextPath() %>/CountryController?flag=edit&&country_ID=${i.country_id}">Edit</a> / <a href="<%=request.getContextPath() %>/CountryController?flag=delete&&country_ID=${i.country_id}">Delete</a></td>
                                                                        
                                </tr>
                                </c:forEach>
              </tbody>
           </table>
          </div><!-- table-responsive -->
          <div class="clearfix mb30"></div>
         
<%@include file="footer.jsp" %>	
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

</body>
</html>