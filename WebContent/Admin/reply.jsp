<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>

 <div class="pageheader">
        <h2><i class="fa fa-home"></i>Manage Complaint <%--<span>Subtitle goes here...</span>--%></h2>
        <div class="breadcrumb-wrapper">
            <span class="label">You are here:</span>
            <ol class="breadcrumb">
                <li><a href="index.html">Manage complaint </a></li>
                <li class="active"></li>
            </ol>
        </div>
    </div>
    <div class="contentpanel">

        <div class="row">

            <div class="col-md-12">
                <form action="<%=request.getContextPath()%>/ComplaintController" method="POST" id="wizard_validate"  class="form-horizontal">
	  <input type="hidden" name="user_id" value="<%= request.getParameter("user_id")%>">
	  <input type="hidden" name="user_type" value="<%= request.getParameter("user_type")%>">
      <input type="hidden" name="flag" value="mail">          
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="" class="panel-close">&times;</a>
                                <a href="" class="minimize">&minus;</a>
                            </div>
                            <h4 class="panel-title">Reply</h4>
                            <%--<p>Please provide your name, email address (won't be published) and a comment.</p>--%>
                        </div>
                        <div class="panel-body">
                         
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Comment</label>
                                <div class="col-sm-9">
                                   <textarea class="form-control" name="complaint"></textarea>
                                </div>
                            </div>




                        </div>
                        <!-- panel-body -->
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                  <input type="submit" class="btn btn-primary" name="submit" value="Reply"> 
                                  
                                    <input type="reset" class="btn btn-default" value="Rseset" >
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- panel -->
                </form>


            </div>
            <!-- col-md-6 -->



        </div>
        <!--row -->

        <!-- row-->

    </div>
    </form>
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