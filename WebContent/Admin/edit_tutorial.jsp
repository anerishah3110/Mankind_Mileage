<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mankind Mileage</title>
</head>
<body>



	<div class="pageheader">
		<h2>
			<i class="fa fa-home"></i>Manage Newz_feed
			<%--<span>Subtitle goes here...</span>--%>
		</h2>
		<div class="breadcrumb-wrapper">
			<span class="label">You are here:</span>
			<ol class="breadcrumb">
				<li><a href="index.html">Manage Newz_feed </a></li>
				<li class="active">Edit Tutorial</li>
			</ol>
		</div>
	</div>
	<div class="contentpanel">

		<div class="row">

			<div class="col-md-12">
				<form action="<%=request.getContextPath()%>/TutorialController"
					method="POST" id="wizard_validate" class="form-horizontal">
					<c:forEach items="${sessionScope.lssearch}" var="i">
						<input type="hidden" name="path" value="${i.tutorial_path }">
						<input type="hidden" name="id" value="${i.tutorial_id }">
						<input type="hidden" name="mode" value="update">


						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="panel-btns">
									<a href="" class="panel-close">&times;</a> <a href=""
										class="minimize">&minus;</a>
								</div>
								<h4 class="panel-title">Edit Tutorial</h4>
								<%--<p>Please provide your name, email address (won't be published) and a comment.</p>--%>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<label class="col-sm-3 control-label">Tutorail Name: <span
										class="asterisk">*</span></label>
									<div class="col-sm-9">
										<input type="text" name="T_name" value="${i.tutorial_name}" id="cname"
											class="form-control" placeholder="Type Tutorail name..."
											required />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">Tutorial_Description:
									</label>
									<div class="col-sm-9">
										<textarea class="form-control" name="T_des">${i.tutorial_desc }</textarea>
									</div>
								</div>
								<div class="form-group">
								<div class="col-sm-9">
									<object data="<%=request.getContextPath() %>/doc/${i.tutorial_path}" type="application/pdf" width="350" height="150"><a href="<%=request.getContextPath() %>/doc/${i.tutorial_path}"></a></object></div>
									<iframe src="fileupload.jsp" height="300" width="48.5%"
										style="margin-left: 34%"> </iframe>
										
								</div>
							</div>
							<!-- panel-body -->
							<div class="panel-footer">
								<div class="row">
									<div class="col-sm-9 col-sm-offset-3">
										<input type="submit" class="btn btn-primary" name="submit"
											value="Add"> <input type="reset"
											class="btn btn-default" value="Rseset">
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
	</c:forEach>

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
	<%@ include file="footer.jsp"%>

</body>
</html>