<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%@ include file="headerProfile.jsp" %>
<div id="main">
				<section class="generic-heading-3">
			<div class="container">
				<h1>Reimbursement</h1>				<strong class="title-line">
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



		<h2>Reimbursement Form</h2>

		<form method="post" class="login" action="<%=request.getContextPath() %>/UserMasterController">
		<input type="hidden" name="flag" value="reimbursement_insert">

			
			<p class="form-row form-row-wide">
				<label for="username">Name of Recipient:<span class="required">*</span></label>
				<input type="text" class="input-text" name="name" id="name" />
			</p>
			<p class="form-row form-row-wide">
				<label for="address">Recipient's Address:<span class="required">*</span></label>
				<textarea rows="3" cols="700" class="input-text" name="address" id="address"></textarea>
			</p>
			<p class="form-row form-row-wide">
				<label for="username">Relation to Recipient:<span class="required">*</span></label>
				<input type="text" class="input-text" name="relation" id="relation" />
			</p>

			<p class="form-row form-row-wide">
				<label for="email">Recipient's E-mail Id:<span class="required">*</span></label>
				<input type="email" class="input-text" name="email" id="email" />
			</p>
			<p class="form-row form-row-wide">
				<label for="phone_no">Recipient's Contact No.:<span class="required">*</span></label>
				<input type="text" class="input-text" name="phnno" id="phnno" />
			</p>
			<!-- <p class="form-row form-row-wide">
				<label for="duedate">Due Date:<span class="required">*</span></label>
				<input type="date" class="input-text" name="duedate" id="duedate1" placeholder="DD/MM/YYYY" />
			</p>
			<p class="form-row form-row-wide">
				<label for="hname">Hospital Name:<span class="required">*</span></label>
				<input type="text" class="input-text" name="hname" id="hname1" />
			</p>
			<p class="form-row form-row-wide">
				<label for="haddress">Hospital Address:<span class="required">*</span></label>
				<textarea rows="3" cols="400" class="input-text" name="haddress" id="haddress1"></textarea>
			</p>
			<p class="form-row form-row-wide">
				<label for="docname">Name Of Doctor:<span class="required">*</span></label>
				<input type="text" class="input-text" name="docname" id="docname1" />
			</p> -->
			<!-- <p class="form-row form-row-wide">
				<label for="sibname">Sibling Name:<span class="required">*</span></label>
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
													<div id="block_second_right" class="sidebar side-bar span3 content_sidebar sidebar">
			<!-- 					<div class="widget sidebar_section widget_em_calendar"><div class="head"><h3>Events Calendar</h3></div><div id="em-calendar-137" class="em-calendar-wrapper"><table class="em-calendar">
	<thead>
		<tr>
			<td><a class="em-calnav em-calnav-prev" href="?ajaxCalendar=1&amp;mo=11&amp;yr=2014&amp;limit=3" rel="nofollow">&lt;&lt;</a></td>
			<td class="month_name" colspan="5">Dec 2014</td>
			<td><a class="em-calnav em-calnav-next" href="?ajaxCalendar=1&amp;mo=1&amp;yr=2015&amp;limit=3" rel="nofollow">&gt;&gt;</a></td>
		</tr>
	</thead>
	<tbody>
		<tr class="days-names">
			<td>M</td><td>T</td><td>W</td><td>T</td><td>F</td><td>S</td><td>S</td>
		</tr>
		<tr>
							<td class="eventless">
										1									</td>
								<td class="eventless">
										2									</td>
								<td class="eventless">
										3									</td>
								<td class="eventless">
										4									</td>
								<td class="eventless">
										5									</td>
								<td class="eventless">
										6									</td>
								<td class="eventless">
										7									</td>
				</tr><tr>				<td class="eventless">
										8									</td>
								<td class="eventless">
										9									</td>
								<td class="eventless">
										10									</td>
								<td class="eventless">
										11									</td>
								<td class="eventless">
										12									</td>
								<td class="eventless-today">
										13									</td>
								<td class="eventless">
										14									</td>
				</tr><tr>				<td class="eventless">
										15									</td>
								<td class="eventless">
										16									</td>
								<td class="eventless">
										17									</td>
								<td class="eventless">
										18									</td>
								<td class="eventless">
										19									</td>
								<td class="eventless">
										20									</td>
								<td class="eventless">
										21									</td>
				</tr><tr>				<td class="eventless">
										22									</td>
								<td class="eventless">
										23									</td>
								<td class="eventless">
										24									</td>
								<td class="eventless">
										25									</td>
								<td class="eventless">
										26									</td>
								<td class="eventless">
										27									</td>
								<td class="eventless">
										28									</td>
				</tr><tr>				<td class="eventless">
										29									</td>
								<td class="eventless">
										30									</td>
								<td class="eventless">
										31									</td>
								<td class="eventless-post">
										1									</td>
								<td class="eventless-post">
										2									</td>
								<td class="eventless-post">
										3									</td>
								<td class="eventless-post">
										4									</td>
						</tr>
	</tbody>
</table></div></div> -->							</div>
											</div>
				</div>
			</div>
			<div class="clear clearfix"></div>
		</div>	
			</div>
<%@ include file="footer.jsp" %>
</body>
</html>