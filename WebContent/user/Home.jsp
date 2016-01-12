<!DOCTYPE html>
<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="dao.*,vo.*,controller.*,java.util.List"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US">
<![endif]-->		
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Eco Green Wordpress</title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://crunchpress.net/demo/eco-green/xmlrpc.php">
	<meta name='robots' content='noindex,follow' />
<link rel="alternate" type="application/rss+xml" title="Eco Green Wordpress &raquo; Feed" href="http://crunchpress.net/demo/eco-green/?feed=rss2" />
<link rel="alternate" type="application/rss+xml" title="Eco Green Wordpress &raquo; Comments Feed" href="http://crunchpress.net/demo/eco-green/?feed=comments-rss2" />
<link rel='stylesheet' id='taqyeem-style-css'  href='<%=request.getContextPath()%>/user/css/style.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='ls-google-fonts-css'  href='css/css?family=Lato:100,300,regular,700,900%7COpen+Sans:300%7CIndie+Flower:regular%7COswald:300,regular,700&#038;subset=latin' type='text/css' media='all' />
<link rel='stylesheet' id='contact-form-7-css'  href='<%=request.getContextPath()%>/user/css/styles.css?ver=3.9.1' type='text/css' media='all' />
<link rel='stylesheet' id='cp-shortcode-css'  href='<%=request.getContextPath()%>/user/css/shortcode.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='ignitiondeck-base-css'  href='<%=request.getContextPath()%>/user/css/ignitiondeck-base.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='ignitiondeck-style-css'  href='<%=request.getContextPath()%>/user/css/ignitiondeck-style.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='<%=request.getContextPath()%>/user/css/font-awesome.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='<%=request.getContextPath()%>/user/css/woocommerce-smallscreen.css?ver=2.1.12' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='default-style-css'  href='<%=request.getContextPath()%>/user/css/style.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-bootstrap-css'  href='<%=request.getContextPath()%>/user/css/bootstrap.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-bootstrap-res-css'  href='<%=request.getContextPath()%>/user/css/bootstrap-responsive.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-jplayer-res-css'  href='<%=request.getContextPath()%>/user/css/jplayer.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-fontAW-css'  href='<%=request.getContextPath()%>/user/css/font-awesome.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-woo-commerce_wp-css'  href='<%=request.getContextPath()%>/user/css/wp-commerce.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-widget-default-css'  href='<%=request.getContextPath()%>/user/css/cp_widgets_default.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-event-manager-css'  href='<%=request.getContextPath()%>/user/css/event-manager.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-bx-slider-css'  href='<%=request.getContextPath()%>/user/css/bxslider.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-easy-chart-css'  href='<%=request.getContextPath()%>/user/css/chart.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-countdown-css'  href='<%=request.getContextPath()%>/user/css/jquery.countdown.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-content-slider-css'  href='css/content_slider_style.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='prettyPhoto-css'  href='<%=request.getContextPath()%>/user/css/prettyphoto.css?ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='googleFonts-css'  href='<%=request.getContextPath()%>/user/css/css?family=Open+Sans&#038;ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='menu-googleFonts-heading-css'  href='<%=request.getContextPath()%>/user/css/css?family=Roboto+Slab&#038;ver=4.0' type='text/css' media='all' />
<link rel='stylesheet' id='cp-accor-crunch-css'  href='<%=request.getContextPath()%>/user/css/accordion.css?ver=4.0' type='text/css' media='all' />
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.js?ver=1.11.1'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/tie.js?ver=4.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ajax_login_object = {"ajaxurl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php","redirecturl":"http:\/\/crunchpress.net\/demo\/eco-green","loadingmessage":"Sending user info, please wait..."};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/ajax-login-script.js?ver=4.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ajax_signup_object = {"ajaxurl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php","redirecturl":"http:\/\/crunchpress.net\/demo\/eco-green","loadingmessage":"Sending user info, please wait..."};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/ajax-signup-script.js?ver=4.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.core.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.widget.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.position.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.mouse.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.sortable.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.datepicker.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.menu.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.autocomplete.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.resizable.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.draggable.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.button.min.js?ver=1.10.4'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.ui.dialog.min.js?ver=1.10.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var EM = {"ajaxurl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php","locationajaxurl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php?action=locations_search","firstDay":"1","locale":"en","dateFormat":"dd\/mm\/yy","ui_css":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-content\/plugins\/events-manager\/includes\/css\/ui-lightness.css","show24hours":"","is_ssl":"","bookingInProgress":"Please wait while the booking is being submitted.","tickets_save":"Save Ticket","bookingajaxurl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php","bookings_export_save":"Export Bookings","bookings_settings_save":"Save Settings","booking_delete":"Are you sure you want to delete?","bb_full":"Sold Out","bb_book":"Book Now","bb_booking":"Booking...","bb_booked":"Booking Submitted","bb_error":"Booking Error. Try again?","bb_cancel":"Cancel","bb_canceling":"Canceling...","bb_cancelled":"Cancelled","bb_cancel_error":"Cancellation Error. Try again?","txt_search":"Search","txt_searching":"Searching...","txt_loading":"Loading...","event_reschedule_warning":"Are you sure you want to reschedule this recurring event? If you do this, you will lose all booking information and the old recurring events will be deleted.","event_detach_warning":"Are you sure you want to detach this event? By doing so, this event will be independent of the recurring set of events.","delete_recurrence_warning":"Are you sure you want to delete all recurrences of this event? All events will be moved to trash.","disable_bookings_warning":"Are you sure you want to disable bookings? If you do this and save, you will lose all previous bookings. If you wish to prevent further bookings, reduce the number of spaces available to the amount of bookings you currently have","booking_warning_cancel":"Are you sure you want to cancel your booking?"};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/events-manager.js?ver=5.53'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user//jquery.ddslick.min.js?ver=4.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var id_ajaxurl = "http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php";
var id_siteurl = "http:\/\/crunchpress.net\/demo\/eco-green\/";
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/ignitiondeck.js?ver=4.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/html5shive.js?ver=1.5.1'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://crunchpress.net/demo/eco-green/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://crunchpress.net/demo/eco-green/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.0" />
<meta name="generator" content="WooCommerce 2.1.12" />
<link rel='canonical' href='http://crunchpress.net/demo/eco-green/' />
<link rel='shortlink' href='http://crunchpress.net/demo/eco-green/' />
		<script type="text/javascript">
		var ajaxurl = 'http://crunchpress.net/demo/eco-green/wp-admin/admin-ajax.php';
		</script>
	<script type='text/javascript'>
/* <![CDATA[ */
var taqyeem = {"ajaxurl":"http://crunchpress.net/demo/eco-green/wp-admin/admin-ajax.php" , "your_rating":"Your Rating:"};
/* ]]> */
</script>
<style type="text/
" media="screen"> 

</style> 
		<script type="text/JavaScript">
		var ajaxurl = 'http://crunchpress.net/demo/eco-green/wp-admin/admin-ajax.php';
		var directory_url = 'http://crunchpress.net/demo/eco-green/wp-content/themes/eco-green';
		</script>
	<style type="text/css">body{background: !important;} .inner-pages h2 .txt-left{background:;}h1{ font-size:48px !important; }body{font-size:14px !important;}body,.comments-list li .text p, .header-4-address strong.info,.header-4-address a.email,strong.copy,.widget-box-inner p,.blog-post-box .text p,.box-1 p, .box-1 .textwidget,.get-touch-form input,.get-touch-form strong.title,.footer-copyright strong.copy,#inner-banner p,.welcome-text-box p,.about-me-text p,.about-me-text blockquote q,.team-box .text p,.accordition-box .accordion-inner p,.facts-content-box p,.our-detail-box p,.our-detail-box ul li,.widget_em_widget ul li,.sidebar-recent-post ul li p,blockquote p,blockquote q,.author-box .text p,.contact-page address ul li strong.title,.contact-page address ul li strong.ph,.contact-page address ul li strong.mob,.contact-page address ul li a.email,a.comment-reply-link,.timeline-project-box > .text p,.comments .text p,.event-row .text p,.project-detail p,.news-box .text p,.error-page p,.cp-columns p,.cp-list-style ul li,.customization-options ul li,.cp-accordion .accordion-inner strong,.list-box ul li,.list-box2 ul li,.list-box3 ul li,.tab-content p, .tab-content-area p,.blockquote-1 q,.blockquote-2 q,.map h3,.even-box .caption p,.header-4-address strong.info,.header-4-address a.email,strong.copy,.widget-box-inner p { font-family:"Open Sans";}h1, h2, h3, h4, h5, h6{font-family: "museo500";}.navigation ul{font-family:"Roboto Slab";}</style><style id="stylesheet">::selection {
					background: #B22222; /* Safari */
					color:#fff;
					}
				::-moz-selection {
					background: #B22222; /* Firefox */
					color:#fff;
				}.post-password-form p input[type="submit"],.sermon-detail-row .topbar-social li a, .share-socila ul li a, .donate-form ul li span:before, #nav li ul li a:hover, #nav li ul li:hover > a, #nav li.active > a, #nav li:hover > a, .currency-box .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus, .dropdown-submenu:hover > a, .dropdown-submenu:focus > a, .language-box .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus, .dropdown-submenu:hover > a, .dropdown-submenu:focus > a, .services-box:hover, .images-section .caption:before, a.plus, .next-event .caption:before, .chirty-store-box:hover .chirty-box, .home-testimonials .bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active, .accordion-heading.active span.close-panel, .accordion-heading:hover span.close-panel, .our-mission #bx-pager-2 > a.active .timeline-box span, .sponsor-box .round, .blog-box .text-box a.pic, .charity-box .bottom, .tag-box ul li a:hover, .social-box ul li a:hover, .address-box .fa:hover, .event-box .top .frame a, .event-box .top .text-box a, .event-box .bottom a.btn-register, .map-box .caption a.location, .progress-bar .progress-striped .bar, .crowed-funding .box .bottom-row, .crowed-funding .box .round, .funding-detail-progress .progress-striped .bar, .funding-detail-map-box .inner ul li a:hover, .about-accordion-box .accordion-heading.active, .about-accordion-box .accordion-heading:hover, .about-section-4 .box:hover .text-box, .grid .caption, .gallery-box:hover .text-box, .gallery-box .frame .caption, .view-section .box-1 .text-box a.readmore:hover, .amount-row:hover, .indicator-btn-row span, .accordion_cp:hover span.close-panel, .accordion-open span.close-panel, .tagcloud a, .donate-form ul li span, .product-box .frame .caption:before, .product-box .bottom strong.price, #portfolio-item-filter-1 li a, .showcoupon, .footer-social a:hover, .ticket-price, table.em-calendar td.eventful a, .tabs-box .nav-tabs > li.ui-state-active > a, .tabs-box .nav-tabs > li > a:hover, .nav-tabs > li > a:focus, .alert.success{
					background-color:#B22222;
				}#header, .our-services strong.title-line:after, .services-round, .services-box:hover a.readmore, .our-mission strong.title-line:after, .recent-news-post strong.title-line:after, .responsive-section-inner, .next-event, .our-mission #bx-pager-2 > a.active .timeline-box, .view-section .box-1 .text-box a.readmore, .view-section a.view:before, .text-box-1:before, .team-box .round, .our-process ul li:hover .process-box, .number-round, .slider-row .right-box a.view:hover, .btn-signup:hover, .btn-send-message:hover, .subscribe-newsletter .btn-subscribe:hover, .text-outer, .about-section-3 .frame:hover, .about-section-3 .text-box a.readmore:hover, .slider-row .right-box-2 a.view:hover, .event-box .bottom a.btn-register:hover, .blog-box .text-box a.btn-readmore:hover, .btn-submit2:hover, .funding-detail .bottom-row a.btn-detail:hover, .donate-box-2 a.btn-donate:hover, .contact-form input[type="submit"]:hover, .right-text-2 a.view, .indicator-btn-row a.btn-donate:hover, #footer{
					border-top-color:#B22222;
				}strong.logo a, .header-search strong.title span, .header-btn-search:hover .fa, .donate-box a.btn-donate span, .slider-row .right-box strong.date, .slider-row .right-box p a.more, .our-event a.view-all, .accordion-text-box .text-box a.readmore, .latest-blog-box a.name, .latest-blog-box strong.title, .latest-blog-box p a.more, .tags li a, .client-box h4, .client-box a.view, .twitter-updates p a, .twitter-updates a.link, .newsletter-text-box strong.title, .detail-row li a, .newsletter-text-box a.more, .copyrights-section strong.copy a.web, .accordion-heading:hover strong.title, .accordion-heading.active strong.title, #banner .caption h1 span, .timeline-text h3, .our-mission #bx-pager-2 > a.active strong.year, .generic-heading-2 strong.title-line:after, .generic-heading strong.title-line:after, .sponsor-box .text-box em, .generic-heading-3 strong.title-line:after, .blog-box .text-box strong a, .blog-box .text-box a.btn-readmore .fa, .sidebar-btn-search, .sidebar-tab .nav-tabs > li > a, .nav-pills > li > a, .sidebar-tab-content strong.title, .sidebar-charity-store .bx-wrapper .bx-prev:hover:before, .sidebar-charity-store .bx-wrapper .bx-next:hover:before, .user-detail a.web, .contact-twitter strong span, .blog-box .text-box blockquote q .fa-quote-left, .blog-box .text-box blockquote q .fa-quote-right, .comment-box a.add-comment, .comments .text-outer-1 strong.title span, .comments .text-outer-1 a.reply, .comment-row strong.marked , .comment-row strong.marked span, .event-box .top .text-box strong.title, .event-box .bottom .time-area strong.time, .event-box .bottom .time-area strong.date, .crowed-funding .box .text-box strong.amount, .funding-detail strong.text, .work-text-box h2, .detail-box strong.title, .view-section .box-1 .text-box h3, .view-section .box-1 .text-box a.admin, .view-section .box-1 .text-box a.readmore, .top-project .holder strong.text span, .about-box-1 .text-box strong.title, .about-accordion-box .accordion-heading .accordion-toggle, .team-box ul li a:hover, .about-section-3 .text-box ul li .fa, .about-section-3 .text-box strong.text, .our-process ul li:hover .process-box .fa, .our-process ul li:hover .process-outer a.title, .timeline-text a.btn-listen:hover, .subscribe-newsletter ul li a:hover .fa, .about-section-3 .text-box a.readmore:hover, .top-project .holder ul li a:hover .fa, .detail-box ul li:hover .fa, .sidebar-tab-content a.find-more:hover, .event-btn-send:hover, .donate-box-2 a.btn-donate:hover, .contact-form input[type="submit"]:hover, #contact-twitter > li:hover .fa, .donate-box a.btn-donate:hover, .amount-row a.cart, .indicator-section .holder .text-box strong.price, .indicator-section .holder .text-box a .fa, .contain_cp_accor .text-box a.readmore, .accordion_cp:hover .text-col strong.title, .accordion-open .text-col strong.title, .copyrights-section p a, .donate-box strong.join-our-cause span, .product-box .frame .caption .bottom-row a.like, .showlogin, .em-booking a, .em-my-bookings .table-wrap table td a, .css-my-bookings a, woocommerce-product-rating a, .woocommerce-review-link, .return-to-shop a, .timeline-text h3 a, .woocommerce .star-rating span:before, .woocommerce-page .star-rating span:before{
					color:#B22222;
				}.team-circle .cp-thumb img, #header, .our-services strong.title-line:after, .services-round, .services-box:hover a.readmore, .our-mission strong.title-line:after, .recent-news-post strong.title-line:after, .responsive-section-inner, .next-event, .our-mission #bx-pager-2 > a.active .timeline-box, .view-section .box-1 .text-box a.readmore, .view-section a.view:before, .text-box-1:before, .team-box .round, .our-process ul li:hover .process-box, .number-round, .slider-row .right-box a.view:hover, .btn-signup:hover, .btn-send-message:hover, .subscribe-newsletter .btn-subscribe:hover, .text-outer, .about-section-3 .frame:hover, .about-section-3 .text-box a.readmore:hover, .slider-row .right-box-2 a.view:hover, .event-box .bottom a.btn-register:hover, .blog-box .text-box a.btn-readmore:hover, .btn-submit2:hover, .funding-detail .bottom-row a.btn-detail:hover, .donate-box-2 a.btn-donate:hover, .contact-form input[type="submit"]:hover, .right-text-2 a.view, .indicator-btn-row a.btn-donate:hover, #footer, blockquote, blockquote:before, .comment-form input[type="submit"]:hover, .btn-container .cp-btn-normal:hover, .flickr_badge_image:hover, textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus{
				 border-color:#B22222;
				}.view-section a.view:after{
					border-color:transparent #B22222 transparent transparent;
				}.tag-box ul li a:hover:before{
					border-color:transparent transparent transparent #B22222;
				}.blog_listing .topbar-social a, .error-page, .error-search-btn, .slider-row .right-box a.view, .btn-signup, .btn-send-message, .timeline-text a.btn-listen, .contact-form input[type="submit"], .btn-submit2, .event-btn-send, .funding-detail .bottom-row a.btn-detail, .donation-rank-box a.btn-donation, .donate-box-2 a.btn-donate, .about-section-3 .text-box a.readmore, .right-text-2 a.view, .comment-form input[type="submit"], .donate-btn-submit, .em-booking-submit, .em-booking-login-form input[type="submit"], .product_view a.wishlist, .category_list_filterable li
				 {
					background-color:#B22222;
				}.pagination-all.pagination ul > li > a:hover, .pagination ul > li > a:focus, .pagination ul > .active > a, .pagination ul > .active > span, .pagination-all.pagination ul > .active > a, .pagination ul > .active > span {
					box-shadow:#950609 !important;
				}.get-touch-form .btn-search, .widget_product_search input[type="submit"], .get-touch-form input[type="submit"], .widget_product_widget .ignitiondeck a.learn-more-button, .widget_product_widget .ignitiondeck .progress-bar, .widget_em_calendar table.em-calendar thead, .widget_product_tag_cloud a, .edit-link a, .onsale, .custom_accordion_cp.accordion-close span, .custom_accordion_cp.accordion-open span{
					background-color:#B22222;
				}.sidebar-tab-content .text-box a, .sidebar-recent-post ul li .text a, .ignitiondeck h2.id-product-title a, .widget_recent_comments ul li, .logged-in-as a, .cart-collaterals h2 a, .summary .plus, .summary .minus, .product-quantity .minus, .product-quantity .plus, .cart-menu .minus, .cart-menu .plus, .related li h3, .woo_product li h3, .woo_product .span3 h3, .post-time a, .twitter-updates strong.time, .twitter-updates strong.time a{
					text-decoration:none;
					color:#B22222;
				}.woocommerce-tabs ul.tabs li.active{
					border-color:#B22222;
				}.summary button, .actions .button, .add_to_cart_button, .edit-link a, .added_to_cart, a.product_type_grouped, a.single_add_to_cart_button, .shipping_calculator .button, #payment .button, .checkout_coupon .button, .login .button{
					background-color:#B22222;
				}</style>      <!--Customizer CSS--> 
      <style type="text/css">
            
            
                 </style> 
      <!--/Customizer CSS-->
      </head>
<body id="home" class="home page page-id-11 page-parent page-template-default">
<!--Wrapper Start-->
<div id="wrapper">
		 <!--LOGIN BOX START-->
		<div id="signin" class="modal hide fade" tabindex="-1" role="dialog"  aria-hidden="true">
						<form id="login" action="login" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>SIGN IN</h3>
				</div>
				<div class="modal-body">
					<label for="username">User Name</label>
					<input name="username" id="username" type="text" class="input-block-level">
					
					<label for="password">Password</label>
					<input name="password" id="password" type="password" class="input-block-level">
					
					<a class="lost" href="http://crunchpress.net/demo/eco-green/?page_id=302&lost-password">Lost your password?</a>
				</div>
				<div class="modal-footer">
					<p class="status"></p>
					<input class="btn-style" type="submit" value="Sign In" name="submit">
				</div>
				<input type="hidden" id="security" name="security" value="c0ba1b677b" /><input type="hidden" name="_wp_http_referer" value="/demo/eco-green/" />			</form> 
					</div>
		<!--LOGIN BOX END-->
		<!--SIGN UP BOX START-->
		<div id="signup" class="modal hide fade" tabindex="-1" role="dialog"  aria-hidden="true">
							<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>Sign up not allowed by admin.</h3>
				</div>
				<div class="modal-body">
					<p>Please content admin for registration.</p>
				</div>
				<div class="modal-footer">
					
				</div>
					</div>
  <!--Header Start-->
  <header id="header"> 
    <!--Navigation Area Start-->
    <div class="navigation-box home-page">
    		<div class="container">
			<strong class="logo"> <a
				href="http://crunchpress.net/demo/eco-green"> <img
					class="logo_img" width="175"  src="<%=request.getContextPath() %>/user/img/logo.png" style="height: 118px !important;"
					alt="Eco Green Wordpress">
			</a>
			</strong>
			<div class="top-bar-outer">
				<div class="nav-box">
					<div class="navbar">
						<button data-target=".nav-collapse" data-toggle="collapse"
							class="btn btn-navbar" type="button">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="nav-collapse collapse">
							<nav id="nav" class="desktop_view nav-collapse collapse"> <%-- <c:forEach items="${sessionScope.lssearch2 }" var="i">
										<ul id="menu-main-menu" class="">
											<li id="menu-item-56"
												class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-56"><a
												href="http://crunchpress.net/demo/eco-green/">${i.category_name }</a> --%>
							<li class="dropdown"><a class="dropdown-toggle" href="<%=request.getContextPath() %>/user/Home.jsp"
								data-toggle="dropdown">Home<b class="caret"></b>
							</a></li>
								<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">Regestration<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load1">CORD BLOOD</a></li>
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load3">DONOR</a></li>
								<li><a href="<%=request.getContextPath() %>/MenuController?flag=load">NORMAL</a></li>
							</ul>	
							</li>
						
							
						<%-- 	<c:forEach items="${sessionScope.menu}" var="i">
								<c:choose>
									<c:when test="${ not empty i.value }">
										<li class="dropdown"><a class="dropdown-toggle" href="#"
											data-toggle="dropdown"> ${i.key }<b class="caret"></b>
										</a>
											<ul class="dropdown-menu">
												<c:forEach items="${i.value }" var="j">
													<li><a href="<%=request.getContextPath() %>${j.url}">${j.subcat_name}</a></li>

												</c:forEach>
											</ul></li>

									</c:when>
									<c:otherwise>

										<li><a href="#">${i.key }</a></li>

									</c:otherwise>
								</c:choose>

							</c:forEach>
 --%>							<li class="dropdown"><a
								href="<%=request.getContextPath()%>/PackageController?flag=load_pack1">Packages<b
									class="caret"></b>
							</a></li>
						<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown" id="profile" ><a
								href="<%=request.getContextPath()%>/PhotoController?flag=load">View
									Profile<b class="caret"></b>
							</a></li>
						</c:if>
							<c:if test="${sessionScope.userID eq null }">
							<li class="dropdown" id="login"><a
								href="<%=request.getContextPath()%>/login.jsp">Login<b
									class="caret"></b>
							</a></li>
							</c:if>
								<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown" id="logout"><a
								href="<%=request.getContextPath()%>/LoginFilter?flag=logout">Logout<b
									class="caret"></b>
							</a></li>
							</c:if>
							<c:if test="${sessionScope.userID ne null }">
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">Comment<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath() %>/user/complaint.jsp">Complaint</a></li>
								<li><a href="<%=request.getContextPath() %>/user/feedback.jsp">Feedback</a></li>
								
							</ul>	
							</li>
							</c:if>
							<!-- <li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">About Us<b class="caret"></b>
							</a></li> -->

							</nav>
						</div>
					</div>
					<!--Currency Box Start-->
					<!-- <ul class="currency-box">
						<li class="cart-item"><a data-placement="bottom"
							data-toggle='tooltip' title="Shopping" class="btn-login"><i
								class="fa fa-shopping-cart"></i> Cart</a>
							<div class="widget_shopping_cart_content"></div></li>
					</ul> -->
					<!-- Currency Box End  -->
				</div>
				<div class="bottom-row">
					<form method="get" action="http://crunchpress.net/demo/eco-green/"
						class="header-search">
						<div class="input-box">
							<input name="s" required type="text" class="header-input">
							<button class="header-btn-search" id="searchsubmit" value="">
								<i class="fa fa-search"></i>
							</button>
						</div>

					</form>

					<div class="donate-box">
						<strong class="join-our-cause">JOIN OUR <span>CAMPAIGN!</span></strong>
						<strong class="title"> <span
							class="price">Donate and save life</span></strong> <a
							href="<%=request.getContextPath() %>/MenuController?flag=load3"
							class="btn-donate">Donate Now</a>
					</div>
				</div>
			</div>
		</div>
<%--       <div class="container">
		<strong class="logo">
					<a href="http://crunchpress.net/demo/eco-green">
				<img class="logo_img" width="175" height="124" src="img/logo.png" alt="Eco Green Wordpress">
			</a>
		</strong>
        <div class="top-bar-outer">
          <div class="nav-box">
            <div class="navbar">
				<button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar" type="button">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
              <div class="nav-collapse collapse">
                  						<nav id="nav" class="desktop_view nav-collapse collapse">
							<ul id="menu-main-menu" class=""><li id="menu-item-56" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-has-children menu-item-56"><a href="<%=request.getContextPath() %>/user/Home.jsp">Home</a>

</li>
<li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-57"><a href="http://crunchpress.net/demo/eco-green/?page_id=20">Registration</a>
<ul class="sub-menu">
	<li id="menu-item-73" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-73"><a href="http://crunchpress.net/demo/eco-green/?page_id=26">How We Work</a></li>
	<li id="menu-item-74" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-74"><a href="http://crunchpress.net/demo/eco-green/?page_id=24">Where We Work</a></li>
</ul>
</li>
<li id="menu-item-58" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-58"><a href="http://crunchpress.net/demo/eco-green/?page_id=46">Blog</a>
<ul class="sub-menu">
	<li id="menu-item-334" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-334"><a href="http://crunchpress.net/demo/eco-green/?p=225">Blog Detail</a></li>
	<li id="menu-item-477" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-477"><a href="http://crunchpress.net/demo/eco-green/?page_id=475">Post Types</a></li>
	<li id="menu-item-625" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-625"><a href="http://crunchpress.net/demo/eco-green/?page_id=617">Blog W/D Sidebar</a>
	<ul class="sub-menu">
		<li id="menu-item-629" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-629"><a href="http://crunchpress.net/demo/eco-green/?page_id=599">Blog W/D Left Sidebar</a></li>
		<li id="menu-item-624" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-624"><a href="http://crunchpress.net/demo/eco-green/?page_id=595">Blog W/D Right Sidebar</a></li>
		<li id="menu-item-626" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-626"><a href="http://crunchpress.net/demo/eco-green/?page_id=619">Blog W/D Dual Sidebar</a></li>
		<li id="menu-item-627" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-627"><a href="http://crunchpress.net/demo/eco-green/?page_id=621">Blog W/D L Dual Sidebar</a></li>
		<li id="menu-item-623" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-623"><a href="http://crunchpress.net/demo/eco-green/?page_id=601">Blog W/D R Dual Sidebar</a></li>
	</ul>
</li>
</ul>
</li>
<li id="menu-item-63" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-63"><a href="http://crunchpress.net/demo/eco-green/?page_id=42">Event</a>
<ul class="sub-menu">
	<li id="menu-item-420" class="menu-item menu-item-type-post_type menu-item-object-event menu-item-420"><a href="http://crunchpress.net/demo/eco-green/?event=green-walk">Event Detail</a></li>
</ul>
</li>
<li id="menu-item-65" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-65"><a href="http://crunchpress.net/demo/eco-green/?page_id=28">Gallery</a>
<ul class="sub-menu">
	<li id="menu-item-306" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-306"><a href="http://crunchpress.net/demo/eco-green/?page_id=304">Gallery Two Column</a></li>
	<li id="menu-item-68" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68"><a href="http://crunchpress.net/demo/eco-green/?page_id=32">Gallery Three Columns</a></li>
	<li id="menu-item-66" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-66"><a href="http://crunchpress.net/demo/eco-green/?page_id=34">Gallery Four Columns</a></li>
	<li id="menu-item-282" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-282"><a href="http://crunchpress.net/demo/eco-green/?page_id=280">Video Gallery</a></li>
	<li id="menu-item-293" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-293"><a href="http://crunchpress.net/demo/eco-green/?page_id=291">Catalog</a></li>
</ul>
</li>
<li id="menu-item-61" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-61"><a href="http://crunchpress.net/demo/eco-green/?page_id=50">Crowd Funding</a>
<ul class="sub-menu">
	<li id="menu-item-339" class="menu-item menu-item-type-post_type menu-item-object-ignition_product menu-item-339"><a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus">Project Detail</a></li>
	<li id="menu-item-582" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-582"><a href="http://crunchpress.net/demo/eco-green/?page_id=571">Projects w/d Left Sidebar</a></li>
	<li id="menu-item-583" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-583"><a href="http://crunchpress.net/demo/eco-green/?page_id=569">Projects w/d Right Sidebar</a></li>
</ul>
</li>
<li id="menu-item-441" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-441"><a href="http://crunchpress.net/demo/eco-green/?page_id=299">Shop</a>
<ul class="sub-menu">
	<li id="menu-item-328" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-328"><a href="http://crunchpress.net/demo/eco-green/?page_id=326">Products</a></li>
	<li id="menu-item-319" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-319"><a href="http://crunchpress.net/demo/eco-green/?page_id=300">Cart</a></li>
	<li id="menu-item-318" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-318"><a href="http://crunchpress.net/demo/eco-green/?page_id=301">Checkout</a></li>
	<li id="menu-item-317" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-317"><a href="http://crunchpress.net/demo/eco-green/?page_id=302">My Account</a></li>
</ul>
</li>
<li id="menu-item-309" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-309"><a href="http://crunchpress.net/demo/eco-green/?page_id=307">Pages</a>
<ul class="sub-menu">
	<li id="menu-item-483" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-483"><a href="http://crunchpress.net/demo/eco-green/?page_id=478">Team</a>
	<ul class="sub-menu">
		<li id="menu-item-481" class="menu-item menu-item-type-post_type menu-item-object-team menu-item-481"><a href="http://crunchpress.net/demo/eco-green/?team=steve-fox">Team Detail</a></li>
	</ul>
</li>
	<li id="menu-item-486" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-486"><a href="http://crunchpress.net/demo/eco-green/?page_id=484">Portfolio</a>
	<ul class="sub-menu">
		<li id="menu-item-482" class="menu-item menu-item-type-post_type menu-item-object-portfolio menu-item-482"><a href="http://crunchpress.net/demo/eco-green/?portfolio=we-are-the-saviours-of-planet-earth">Portfolio Detail</a></li>
	</ul>
</li>
	<li id="menu-item-525" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-525"><a href="http://crunchpress.net/demo/eco-green/?page_id=490">Shortcodes</a>
	<ul class="sub-menu">
		<li id="menu-item-524" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-524"><a href="http://crunchpress.net/demo/eco-green/?page_id=495">Accordion</a></li>
		<li id="menu-item-523" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-523"><a href="http://crunchpress.net/demo/eco-green/?page_id=497">Buttons</a></li>
		<li id="menu-item-522" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-522"><a href="http://crunchpress.net/demo/eco-green/?page_id=499">Columns</a></li>
		<li id="menu-item-521" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-521"><a href="http://crunchpress.net/demo/eco-green/?page_id=501">Lists</a></li>
		<li id="menu-item-520" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-520"><a href="http://crunchpress.net/demo/eco-green/?page_id=503">Map</a></li>
		<li id="menu-item-519" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-519"><a href="http://crunchpress.net/demo/eco-green/?page_id=505">Quotes</a></li>
		<li id="menu-item-518" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-518"><a href="http://crunchpress.net/demo/eco-green/?page_id=507">Tabs</a></li>
		<li id="menu-item-517" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-517"><a href="http://crunchpress.net/demo/eco-green/?page_id=509">Team</a></li>
		<li id="menu-item-516" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-516"><a href="http://crunchpress.net/demo/eco-green/?page_id=511">Testimonials</a></li>
		<li id="menu-item-515" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-515"><a href="http://crunchpress.net/demo/eco-green/?page_id=513">Typography</a></li>
	</ul>
</li>
</ul>
</li>
<li id="menu-item-60" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60"><a href="http://crunchpress.net/demo/eco-green/?page_id=54">Contact</a></li>
</ul>						</nav>
					              </div>
            </div>
            <!--Currency Box Start-->
            <ul class="currency-box">
									<li class="cart-item"><a data-placement="bottom" data-toggle='tooltip' title="Shopping" class="btn-login"><i class="fa fa-shopping-cart"></i> Cart</a>
												<div class="widget_shopping_cart_content"></div>
											</li>
									            </ul>
            <!--Currency Box End--> 
          </div>
          <div class="bottom-row">
            <form method="get" action="http://crunchpress.net/demo/eco-green/" class="header-search">
              <div class="input-box">
                <input name="s" required type="text" class="header-input">
                <button class="header-btn-search" id="searchsubmit" value=""><i class="fa fa-search"></i></button>
              </div>
			  
            </form>
			
			 <div class="donate-box"><strong class="join-our-cause">JOIN OUR <span>CAMPAIGN!</span></strong> 					<strong class="title">DONATION SO FAR: <span class="price">$450 000</span></strong>
					<a href="http://crunchpress.net/demo/eco-green/?page_id=320" class="btn-donate">Donate Now</a>
				</div>          </div>
        </div>
      </div> --%>
    </div>    
    <!--Navigation Area End--> 

  <div id="banner" class="banner_rock main-slider"><div class="banner_slider"><div class="border_slider cp-banner"><script type="text/javascript">jQuery(document).ready(function($){$("#abc123").bxSlider({mode: 'fade',minSlides: 1,maxSlides: 1,pager:true,controls:true,hideControlOnEnd: true,easing: "swing",auto: true,autoHover:true,speed:1500,pagerCustom: "#bx_slider_cap"});});</script><ul id="abc123" class="banner_sliderr" ><li><img src="<%=request.getContextPath()%>/user/img/IMG_20150411_123402.jpg" style="height: 552px !important;width: 100% !important;"alt=""/><div class="caption"><div class="holder"><a href="#"><h1>Cordblood </h1></a><strong class="title">One Chance , One Choice.</strong></div></div></li><li><img src="<%=request.getContextPath()%>/user/img/IMG_20150411_123004.jpg" style="height: 552px !important;width: 100% !important;" alt=""/><div class="caption"><div class="holder"><h1>Your <span>baby's </span>CordBlood </h1><strong class="title">The Gift Of a Lifetime</strong></div></div></li><li><img src="<%=request.getContextPath()%>/user/img/blood.jpg" style="height: 552px !important;width: 100% !important;" alt=""/><div class="caption"><div class="holder"><h1>Give <span> Birth </span>To <span>Hope</span></h1><strong class="title">Donate CordBlood</strong></div></div></li><li><img src="<%=request.getContextPath()%>/user/img/large (4).jpg" style="height: 552px !important;width: 100% !important;" alt=""/><div class="caption"><div class="holder"></div></div></li></ul><div class="bx_pager_cp" id="bx_slider_cap">
					<a data-slide-index="0" href="" class="rollIn animated">
						<img src="<%=request.getContextPath()%>/user/img/IMG_20150411_123402.jpg" alt="img" style="height: 80px !important;width: 80px !important;"/>
					</a>
					<a data-slide-index="1" href="" class="rollIn animated">
						<img src="<%=request.getContextPath()%>/user/img/IMG_20150411_123004.jpg" alt="img"  style="height: 80px !important;width: 80px !important;"/>
					</a>
					<a data-slide-index="2" href="" class="rollIn animated">
						<img src="<%=request.getContextPath()%>/user/img/blood.jpg" alt="img" style="height: 80px !important;width: 80px !important;" style="height: 80px !important;width: 80px !important;"/>
					</a>
					<a data-slide-index="3" href="" class="rollIn animated">
						<img src="<%=request.getContextPath()%>/user/img/large (4).jpg" alt="img"  style="height: 80px !important;width: 80px !important;"/>
					</a></div></div></div></div>	</header>
 	<!--Main Start-->
	<div id="main">
				<!--CONTANT SECTION START-->
		<div class="content ">
			<div class="full-width-content">
								<!--BREADCRUMS END-->
				<!--MAIN CONTANT ARTICLE START-->
				<div class="main-content">
					<div class="page_content row-fluid">
												<div id="block_content_first" class="1-sidebar">
							<div class="row-fluid">
								<div class="container inner-container-cp" ><div class="row-fluid" style="padding-top:0px;padding-bottom:70px;float:left;"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading">
          <h2>Our Services</h2>
          <strong class="title-line">What we are doing</strong> </div></article><article class="span3 mbtm feature fadeIn cp_load mbtm first"> <div class="services-box">
			<div class="services-round">
				<a href="http://crunchpress.net/demo/eco-green/?p=466" class="inner sprite-1"><i class="fa fa-recycle"></i></a>
			</div>
			<h3>CordBlood Storage</h3>
			<p>Cord blood banking involves collecting blood left in your newborn's umbilical cord and placenta and storing it  for  future  medical  use.    </p>
			<a href="http://www.babycenter.com/0_cord-blood-banking-what-it-is-why-consider-it_1362261.bc" class="readmore">Read More<i class="fa fa-arrow-right"></i></a>
		</div></article><article class="span3 mbtm feature fadeIn cp_load mbtm 0.25"> <div class="services-box">
			<div class="services-round">
				<a href="http://www.babycenter.com/0_cord-blood-banking-what-it-is-why-consider-it_1362261.bc" class="inner sprite-1"><i class="fa fa-flash"></i></a>
			</div>
			<h3>Cordblood  Transplant</h3>
			<p>Cord blood is one of three sources of blood-forming cells used in transplants. The other two sources are bone marrow and peripheral blood stem cells.</p>
			<a href="http://www.bprch.com/article/S1521-6926(99)90023-3/abstract" class="readmore">Read More<i class="fa fa-arrow-right"></i></a>
		</div></article><article class="span3 mbtm feature fadeIn cp_load mbtm 0.5"> <div class="services-box">
			<div class="services-round">
				<a href="http://www.bprch.com/article/S1521-6926(99)90023-3/abstract" class="inner sprite-1"><i class="fa fa-cog"></i></a>
			</div>
			<h3>Pattern Matching</h3>
			<p>Human leukocyte antigen (HLA) is a protein  or marker found on most cells in your body and is used to match you with a donor for your bone marrow or cord blood transplant.</p>
			<a href="http://bethematch.org/for-patients-and-families/finding-a-donor/hla-matching/" class="readmore">Read More<i class="fa fa-arrow-right"></i></a>
		</div></article><article class="span3 mbtm feature fadeIn cp_load mbtm 0.75"> <div class="services-box">
			<div class="services-round">
				<a href="http://bethematch.org/for-patients-and-families/finding-a-donor/hla-matching/" class="inner sprite-1"><i class="fa fa-lightbulb-o"></i></a>
			</div>
			<h3>Awareness</h3>
			<p>Through cultivation of stem cells extracted from the cord blood, patients with spinal injuries have a great chance of having their damaged nervous system repaired.</p>
			<a href="http://www.cordblood.com/benefits-cord-blood/umbilical-cord-blood-banking" class="readmore">Read More<i class="fa fa-arrow-right"></i></a>
		</div></article></div></div><%-- <div style="float:left;width:100%;padding-top:40px;padding-bottom:40px;background-color:#fff;background-image:url();background-attachment:Scroll;" class="full-width"><div class="container"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading">
          <h2>Our Mission</h2>
          <strong class="title-line">Highlights from our four decades of results</strong> </div></article><article class="span12 mbtm mbtm our-mission first">			<script type="text/javascript">
			jQuery(document).ready(function ($) {
				"use strict";
				if ($('#news-10').length) {
					$('#news-10').bxSlider({
						pagerCustom: '#bx-pager-2',
						mode:'fade'
					});
				}
			});
			</script>
			<div id="bx-pager-2"><a data-slide-index="0" href=""><strong class="year">2014</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="1" href=""><strong class="year">2013</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="2" href=""><strong class="year">2012</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="3" href=""><strong class="year">2011</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="4" href=""><strong class="year">2010</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="5" href=""><strong class="year">2009</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="6" href=""><strong class="year">2008</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="7" href=""><strong class="year">2007</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="8" href=""><strong class="year">2006</strong><div class="timeline-box"><span></span></div></a><a data-slide-index="9" href=""><strong class="year">2005</strong><div class="timeline-box"><span></span></div></a></div>
				<div class="text-outer">
					<ul id="news-10" class="timeline-slider">		
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=we-are-the-saviours-of-planet-earth">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/14-300x300.jpg" class="attachment-570x300 wp-post-image" alt="1" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=we-are-the-saviours-of-planet-earth">We are the saviours of planet earth</a></h3>                  
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut </p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=commitment-to-diversity">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/21-300x300.jpg" class="attachment-570x300 wp-post-image" alt="2" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=commitment-to-diversity">Recycling Rubbish</a></h3>                  
									<p>Nam. Vitae tortor erat ultrices faucibus tempus pellentesque etiam rhoncus id, diam Blandit praesent est volutpat curae; nam aptent curae; dictumst faucibus dictum condimentum porta semper bibendum au</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=we-think-differently-about-how-to-solve">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/31-300x300.jpg" class="attachment-570x300 wp-post-image" alt="3" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=we-think-differently-about-how-to-solve">Save Tropic Forests</a></h3>                  
									<p>Proin litora non per euismod vitae tortor vestibulum gravida orci rutrum netus orci donec taciti laoreet consequat auctor class mauris, eros massa ad lectus dui, scelerisque curae; facilisis hendrerit</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=ullamco-laboris-nisi">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/41-300x300.jpg" class="attachment-570x300 wp-post-image" alt="4" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=ullamco-laboris-nisi">The Earth is very fragile structure</a></h3>                  
									<p>Elementum ad interdum vulputate. Faucibus vestibulum dapibus facilisis aenean eros dui duis inceptos mattis ut nonummy commodo platea ullamcorper felis. Elementum dictumst Cras. Primis sit ultrices te</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=malesuada-ligula-tristique">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/51-300x300.jpg" class="attachment-570x300 wp-post-image" alt="5" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=malesuada-ligula-tristique">HOW TO PROTECT NATURE</a></h3>                  
									<p>Vitae amet dictum convallis urna tristique facilisi. Varius nostra suscipit montes primis magnis volutpat mus luctus semper vel inceptos cum rhoncus hendrerit torquent ullamcorper Taciti Ipsum malesua</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=felis-sapien-id-sociis-duis-hac-cubilia">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/61-300x300.jpg" class="attachment-570x300 wp-post-image" alt="6" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=felis-sapien-id-sociis-duis-hac-cubilia">HOW TO IMPROVE OUR RECYCLING PROCESS</a></h3>                  
									<p>Per. Parturient hendrerit risus dignissim facilisis ligula platea laoreet laoreet fermentum convallis maecenas blandit dictum posuere, sagittis pellentesque lectus velit praesent, placerat ad leo pulv</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=vel-scelerisque-est-nam">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/81-300x300.jpg" class="attachment-570x300 wp-post-image" alt="8" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=vel-scelerisque-est-nam">Help Together to Heal the Earth</a></h3>                  
									<p>Per. Parturient hendrerit risus dignissim facilisis ligula platea laoreet laoreet fermentum convallis maecenas blandit dictum posuere, sagittis pellentesque lectus velit praesent, placerat ad leo pulv</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=sociis-nibh-aliquam-tellus">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/91-300x300.jpg" class="attachment-570x300 wp-post-image" alt="9" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=sociis-nibh-aliquam-tellus">Get Green Be Well</a></h3>                  
									<p>Velit dapibus aliquet interdum id sollicitudin viverra conubia pede suspendisse Semper tempor class ligula cras neque neque suspendisse scelerisque tempor. Risus placerat. Ridiculus vestibulum. Congue</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=tempus-potenti-iaculis-ridiculus">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/101-300x300.jpg" class="attachment-570x300 wp-post-image" alt="10" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=tempus-potenti-iaculis-ridiculus">How to clean the Earth</a></h3>                  
									<p>Per. Parturient hendrerit risus dignissim facilisis ligula platea laoreet laoreet fermentum convallis maecenas blandit dictum posuere, sagittis pellentesque lectus velit praesent, placerat ad leo pulv</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
							
						<!--LIST ITEM START-->
						<li>
							<div class="outer-text">
								<div class="frame">
									<a href="http://crunchpress.net/demo/eco-green/?portfolio=placerat-mus-rhoncus">
										<img width="300" height="300" src="<%=request.getContextPath()%>/user/img/111-300x300.jpg" class="attachment-570x300 wp-post-image" alt="11" />									</a>
								</div>
								<div class="timeline-text">
									<h3><a href="http://crunchpress.net/demo/eco-green/?portfolio=placerat-mus-rhoncus">Reducing Polution</a></h3>                  
									<p>Per. Parturient hendrerit risus dignissim facilisis ligula platea laoreet laoreet fermentum convallis maecenas blandit dictum posuere, sagittis pellentesque lectus velit praesent, placerat ad leo pulv</p>
								</div>
							</div>
						</li>
						<!--LIST ITEM START-->
					
					</ul>
				</div></article></div></div><div class="container inner-container-cp" ><div class="row-fluid" style="padding-top:40px;padding-bottom:40px;float:left;"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading">
          <h2>Recent Images From Gallery</h2>
          <strong class="title-line">this is the list of our recent work which we have done</strong> </div></article><article class="span12 mbtm overflow_class mbtm first"><div class="gallery gallery-page row-fluid normal_listing"><div class="images-section">
								<div id="da-thumbs" class="da-thumbs-2"><div class="catalogue-view">											<img src="<%=request.getContextPath()%>/user/img/13-350x350.jpg" alt="">
											<div class="frame">
												<div class="caption">
													<div class="caption-inner">
														<a href="http://crunchpress.net/demo/eco-green/?page_id=304">
															<i class="fa fa-link"></i>
														</a>
													</div>
												</div>
											</div>
										</div><div class="catalogue-view">											<img src="<%=request.getContextPath()%>/user/img/images (2).jpg" alt="">
											<div class="frame">
												<div class="caption">
													<div class="-inner">
														<a href="http://crunchpress.net/demo/eco-green/?page_id=32">
															<i class="fa fa-link"></i>
														</a>
													</div>
												</div>
											</div>
										</div><div class="catalogue-view">											<img src="<%=request.getContextPath()%>/user/img/images (3).jpg" alt="">
											<div class="frame">
												<div class="caption">
													<div class="caption-inner">
														<a href="http://crunchpress.net/demo/eco-green/?page_id=34">
															<i class="fa fa-link"></i>
														</a>
													</div>
												</div>
											</div>
										</div><div class="catalogue-view">											<img src="<%=request.getContextPath()%>/user/img/10-350x350.jpg" alt="">
											<div class="frame">
												<div class="caption">
													<div class="caption-inner">
														<a href="http://crunchpress.net/demo/eco-green/?page_id=291">
															<i class="fa fa-link"></i>
														</a>
													</div>
												</div>
											</div>
										</div></div></div></div></article><article class="span12 mbtm wrapper fadeIn cp_load first"><div style="float:left;width:100%;margin-top:20px;margin-bottom:20px" class="clear"></div></article><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="responsive-section-inner">
          <div class="left-box">
            <h3>Responisive Website Design Template</h3>
            <strong class="title">Congratulations on starting your own professional website!</strong>
            <p>Proin sed odio et ante adipiscing lobortis. Lorem ipsum dolor sit amet, consectetue elit. Quisque eleLorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin sed odio et ante adipiscing lobortis.</p>
          </div>
          <div class="right-box">
            <ul>
              <li><a href="#"><i class="fa fa-laptop"></i></a></li>
              <li><a href="#"><i class="fa fa-tablet"></i></a></li>
              <li><a href="#"><i class="fa fa-mobile-phone"></i></a></li>
            </ul>
          </div>
        </div></article></div></div>--%><div class="container inner-container-cp" ><div class="row-fluid" style="padding-top:05px;padding-bottom:60px;float:left;"><article class="span4 mbtm fadeIn cp_load mbtm upcoming-events-box first">			<script>
				jQuery(document).ready(function ($) {
					"use strict";
					//custom animation for open/close
					$.fn.slideFadeToggle = function(speed, easing, callback) {
						return this.animate({opacity: 'toggle', height: 'toggle'}, speed, easing, callback);
					};

					$('.accordion_cp').accordion({
						defaultOpen: 'first_event_class',
						//cookieName: 'nav',
						speed: 'slow',
						animateOpen: function (elem, opts) { //replace the standard slideUp with custom function
							elem.next().stop(true, true).slideFadeToggle(opts.speed);
						},
						animateClose: function (elem, opts) { //replace the standard slideDown with custom function
							elem.next().stop(true, true).slideFadeToggle(opts.speed);
						}
					});
				});
			</script> 
			<% EventDAO e=new EventDAO(); 
			
			List ls=e.searchDesc();
			HttpSession session1=request.getSession();
			session1.setAttribute("lssearch",ls);
			%>
			<div class="upcoming-heading">
					<h3>Our Events</h3>
					 <c:forEach items="${sessionScope.lssearch}" var="i" varStatus="j" >
					 <c:if test="${j.count lt 4 }">
					<div class="" id="upcoming_event-19">					
					<div class="accordion_cp" id="first_event_class">
						<div class="text-col">
						<p><strong class="date">${i.event_date}</strong></p>
						</div>
						<div class="text-col" style="clear: left;">
							<strong class="title">${i.event_name }</strong>
							<strong class="location"><i class="fa fa-map-marker"></i>${i.event_place}</strong>							<strong class="time"><i class="fa fa-clock-o"></i>${i.event_date}</strong>
						</div>
						<span class="close-panel"><i class="fa fa-minus"></i></span>
					</div>
					<div class="contain_cp_accor">
						<div class="content_cp_accor">
							<div class="frame"><%--<a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=415"> <img width="80" height="80" src="<%=request.getContextPath()%>/user/img/5-80x80.jpg" class="attachment-80x80 wp-post-image" alt="5" /></a> --%></div>
                            <div class="text-box">
                                <p>${i.event_description}</p>
                              
							</div>
						</div>
					</div>
				
								
					<%-- <div class="accordion_cp" id="first_event_class-1911">
						<strong class="date">11/20</strong>
						<div class="text-col">
							<strong class="title">A Walk for Heal</strong>
							<strong class="location"><i class="fa fa-map-marker"></i>Alaska</strong>							<strong class="time"><i class="fa fa-clock-o"></i>November 20, 2014</strong>
						</div>
						<span class="close-panel"><i class="fa fa-minus"></i></span>
					</div>
					<div class="contain_cp_accor">
						<div class="content_cp_accor">
							<div class="frame"><a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=401"><img width="80" height="80" src="<%=request.getContextPath()%>/user/img/62-80x80.jpg" class="attachment-80x80 wp-post-image" alt="6" /></a></div>
                            <div class="text-box">
                                <p>Senectus duis est suspendisse elit nam. Dignissim et ad mus ultricies est, felis tellus lectus. Rhon</p>
                                <a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=401" class="readmore">Read More</a>
							</div>
						</div>
					</div>
								
					<div class="accordion_cp" id="first_event_class-1914">
						<strong class="date">11/19</strong>
						<div class="text-col">
							<strong class="title">Environment Saf</strong>
							<strong class="location"><i class="fa fa-map-marker"></i>Florida</strong>							<strong class="time"><i class="fa fa-clock-o"></i>November 19, 2014</strong>
						</div>
						<span class="close-panel"><i class="fa fa-minus"></i></span>
					</div>
					<div class="contain_cp_accor">
						<div class="content_cp_accor">
							<div class="frame"><a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=409">




<img width="80" height="80" src="<%=request.getContextPath()%>/user/img/10-80x80.jpg" class="attachment-80x80 wp-post-image" alt="10" /></a></div>
                            <div class="text-box">
                                <p>Quisque feugiat lorem inceptos eros ut in congue nec lectus sit tristique arcu. Sodales. Sodales sol</p>
                                <a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=409" class="readmore">Read More</a>
							</div>
						</div>
					</div>
 --%>			 </div>	
 			</c:if>
 </c:forEach>	
      </div></article><%-- <article class="span4 mbtm fadeIn cp_load mbtm 0.333333333333">			<script>
				jQuery(document).ready(function ($) {
					"use strict";
					if ($('#next_event-20').length) {
						$('#next_event-20').bxSlider({
							minSlides: 1,
							maxSlides: 1
						});
					}
				});
			</script>
						<div class="next-event">
				<h3>Next Events</h3>										<!--Next Event Start-->
						
						  <div class="frame"> <a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=415"><img width="260" height="300" src="<%=request.getContextPath()%>/user/img/5-260x300.jpg" class="attachment-260x300 wp-post-image" alt="5" /></a>
							<div class="caption-2"><strong class="title">Green Walk</strong></div>
							<div class="caption-3"><strong class="title">Time Left:</strong></div>
							<div class="caption"><a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=415"><i class="fa fa-plus"></i></a></div>
						  </div>
						  <div class="time-box">
							<div class="counter-box"><script>
					jQuery(function () {
						var austDay = new Date();
						austDay = new Date(2015, 05-1, 14,00,00);
						jQuery("#countdown-box-2").countdown({
						labels: ["Years", "Months", "Weeks", "Days", "Hours", "Minutes", "Seconds"],
						until: austDay
						});
						jQuery("#year").text(austDay.getFullYear());
					});                
				</script>
				<div id="countdown-box-2" class="defaultCountdown"></div>
				</div>
											<a href="http://crunchpress.net/demo/eco-green/?post_type=event&#038;p=415" class="plus"><i class="fa fa-plus"></i></a> </div>
						</div>
						<!--Next Event End-->
								
	</article> --%>
	<div class="next-event" style="width: 370px !important; border-color: #f2f2f2"></div>
	<article class="span4 mbtm mbtm latest-news-box 0.666666666667">		<script type="text/javascript">
			jQuery(document).ready(function ($) {
				"use strict";
				if ($('#blog-slider-21').length) {
					$('#blog-slider-21').bxSlider({
						minSlides: 1,
						maxSlides: 1,
						auto:true,
						mode:'fade',
					});
				}
			});
		</script>
		
		<div class="latest-blog">
            <h3>Latest From Blog</h3>
			<ul id="blog-slider-21">		
				<li>
					<div class="latest-blog-box">
						<div class="frame">
							<a href="<%=request.getContextPath()%>/user/collection.jsp"><div class="post_featured_image thumbnail_image"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/IMG_20150411_123033.jpg" class="attachment-360x300 wp-post-image" alt="11" /></div></a>
						</div>
						<div class="blog-round">
							<img alt='' src='http://1.gravatar.com/avatar/d5b797d1f4cd2c237cd28fa6bbec2814?s=96&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D96&amp;r=G' class='avatar avatar-96 photo team-img margin avatar-96 photo' height='96' width='96' />
						</div>
						<!-- <a href="http://crunchpress.net/demo/eco-green/?p=223" class="mnt">
							August 15, 2014<i class="fa fa-clock-o"></i>
						</a> -->
						<a href="" class="name">
							by admin						</a>
						<strong class="title">Collection Process</strong>
						<p>After your baby is born and before the placenta is delivered, the umbilical cord is clamped and cut, the same as it would be for any normal delivery. The cord is rigorously cleaned to ensure a sterile collection, and then the cord blood is collected by your healthcare professional. <a href="<%=request.getContextPath()%>/user/collection.jsp" class="more">More</a></p>
					</div>
				</li>
						
				<li>
					<div class="latest-blog-box">
						<div class="frame">
							<a href="<%=request.getContextPath()%>/user/banking.jsp"><div class="post_featured_image thumbnail_image"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/images (1).jpg"  style="height: 300px !important;width: 360px !important;" class="attachment-360x300 wp-post-image" alt="12" /></div></a>
						</div>
						<div class="blog-round">
							<img alt='' src='http://1.gravatar.com/avatar/d5b797d1f4cd2c237cd28fa6bbec2814?s=96&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D96&amp;r=G' class='avatar avatar-96 photo team-img margin avatar-96 photo' height='96' width='96' /></a>
						</div>
						
						<a href="" class="name">
							by admin						</a>
						<strong class="title">Cord blood benefits sibling</strong>
						<p>When you store your babys cord blood, you are storing an important medical resource. As of 2014, there have been over 1 million Hematopoietic stem cell transplants and 30,000 cord blood transplants performed worldwide, and that number is increasing every day. <a href="<%=request.getContextPath()%>/user/banking.jsp" class="more">More</a></p>
					</div>
				</li>
				
			</ul>
        </div></article></div></div><%-- <div style="float:left;width:100%;padding-top:50px;padding-bottom:0px;background-color:#fff;background-image:url();background-attachment:Scroll;" class="full-width"><div class="container"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading">
          <h2>Our Green Products</h2>
          <strong class="title-line">this is the list of our recent work which we have done</strong> 
</div></article><article class="span12 mbtm mbtm latest-news-box first"><div class="chirty-store">
      <div class="generic-heading">
		<div class="container">
        <div class="row-fluid">
		
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=244"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/7.jpg" class="attachment-full wp-post-image" alt="7" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=244">Green Built int</a>...</h3>
                <p>Adipiscing euismod varius cras. Varius nostra erat</p>
                <div class="amount-row"> <strong class="price">&pound;199</strong> <a href="http://crunchpress.net/demo/eco-green/?product=244" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
	
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=varius-platea-blandit-ornare-maecenas-dictumst"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/8.jpg" class="attachment-full wp-post-image" alt="8" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=varius-platea-blandit-ornare-maecenas-dictumst">Green Cleaning </a>...</h3>
                <p>Cubilia senectus lacus. Ornare feugiat nunc natoqu</p>
                <div class="amount-row"> <strong class="price">&pound;395</strong> <a href="http://crunchpress.net/demo/eco-green/?product=varius-platea-blandit-ornare-maecenas-dictumst" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
	
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=platea-quam-montes-id-eleifend-pharetra-ad-erat"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/6.jpg" class="attachment-full wp-post-image" alt="6" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=platea-quam-montes-id-eleifend-pharetra-ad-erat">Green Walk</a>...</h3>
                <p>Urna lorem cras mus at donec maecenas faucibus. Mo</p>
                <div class="amount-row"> <strong class="price">&pound;389</strong> <a href="http://crunchpress.net/demo/eco-green/?product=platea-quam-montes-id-eleifend-pharetra-ad-erat" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
	
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/2.jpg" class="attachment-full wp-post-image" alt="2" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet">Planting a Tree</a>...</h3>
                <p>Hymenaeos. Consectetuer feugiat sit est bibendum i</p>
                <div class="amount-row"> <strong class="price">&pound;295</strong> <a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
	
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet-2"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/1.jpg" class="attachment-full wp-post-image" alt="1" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet-2">Planting Balled</a>...</h3>
                <p>Vel enim sem maecenas hendrerit dictum elementum l</p>
                <div class="amount-row"> <strong class="price">&pound;195</strong> <a href="http://crunchpress.net/demo/eco-green/?product=mauris-et-ligula-quis-erat-dignissim-imperdiet-2" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
	
      
          <div class="span2">
            <div class="chirty-box">
              <div class="frame"><a href="http://crunchpress.net/demo/eco-green/?product=conubia-eleifend-lorem-aliquam"><img width="614" height="614" src="<%=request.getContextPath()%>/user/img/4.jpg" class="attachment-full wp-post-image" alt="4" /></a> </div>
              <div class="text-box">
				<h3><a href="http://crunchpress.net/demo/eco-green/?product=conubia-eleifend-lorem-aliquam">Project On Savi</a>...</h3>
                <p>Hymenaeos. Consectetuer feugiat sit est bibendum i</p>
                <div class="amount-row"> <strong class="price">&pound;250</strong> <a href="http://crunchpress.net/demo/eco-green/?product=conubia-eleifend-lorem-aliquam" class="cart"><i class="fa fa-shopping-cart"></i></a> </div>
              </div>
            </div>
          </div>
        
    <!--Our Chrity Store End--> 
    
    
	</div>
      </div></div></div></article></div></div> --%>
      <% VideoDAO v=new VideoDAO(); 
			
			List v1=v.searchDesc();
			HttpSession session3=request.getSession();
			session3.setAttribute("lssearch",v1);
			%>
      <div style=" float:left;width:100%;padding-top:50px;padding-bottom:50px; background-color:rgba(0,0,0,0.8);background-attachment:Scroll;" class="full-width"><div class="container"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading white_color">
          <h2>Our Featured Video</h2>
        <!--   <strong class="title-line"></strong> </div></article><article class="span12 mbtm  first">		<div class="span7"> -->
			<div class="featured-video-col">
				<h3><a href="http://crunchpress.net/demo/eco-green/?p=468">Video Post</a></h3>
				<c:forEach items="${sessionScope.lssearch}" var="i" varStatus="j" >
					 <c:if test="${j.count eq 1}">
					 
					 <%System.out.println("inside condition"); %>
					 <object width="100%" height="450">
			<param name="allowscriptaccess" value="always" >
			<param name="allowfullscreen" value="true" >
			<param name="wmode" value="transparent" >
			<param name="bgcolor" value="#000000" >
			 <video controls preload="auto" autoplay="autoplay" ><source src="<%=request.getContextPath() %>/doc/${i.video_path }"></source></video>
			
		</object>
					
					 </c:if>
					 </c:forEach>
					<
				<!-- <a href="http://crunchpress.net/demo/eco-green/?p=468"><div class="post_featured_image thumbnail_image"><div class="blog-thumbnail-video"> -->
		<!-- <object width="100%" height="450">
			<param name="allowscriptaccess" value="always" >
			<param name="allowfullscreen" value="true" >
			<param name="wmode" value="transparent" >
			<param name="bgcolor" value="#000000" >
			<param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=98255070&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" />
			<embed src="http://vimeo.com/moogaloop.swf?clip_ids=98255070&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="100%" height="450" wmode="transparent" bgcolor="#000000" />
		</object> --></div></div></a>
			</div>
		</div><%-- 
		<div class="span5">
			<div class="featured-video-text">
				<h3>Feature Posts</h3>
				<ul>
											<li>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?p=549"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/7-360x300.jpg" class="attachment-360x300 wp-post-image" alt="7" /></a>
							</div>
							<div class="text-box">
								<div class="number-round">1</div>
								<strong class="title"><a href="http://crunchpress.net/demo/eco-green/?p=549">Audio Post</a></strong>
								<p>Lorem Ipsum is simpl</p>
								<a href="http://crunchpress.net/demo/eco-green/?p=549" class="readmore">Read More</a>
							</div>
						</li>
											<li>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?p=223"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/11-360x300.jpg" class="attachment-360x300 wp-post-image" alt="11" /></a>
							</div>
							<div class="text-box">
								<div class="number-round">2</div>
								<strong class="title"><a href="http://crunchpress.net/demo/eco-green/?p=223">Blog w/d Dual Sidebar</a></strong>
								<p>Duis praesent mattis</p>
								<a href="http://crunchpress.net/demo/eco-green/?p=223" class="readmore">Read More</a>
							</div>
						</li>
											<li>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?p=213"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/6-360x300.jpg" class="attachment-360x300 wp-post-image" alt="6" /></a>
							</div>
							<div class="text-box">
								<div class="number-round">3</div>
								<strong class="title"><a href="http://crunchpress.net/demo/eco-green/?p=213">Blog w/d Dual Sidebar L</a></strong>
								<p>Fermentum dolor ut p</p>
								<a href="http://crunchpress.net/demo/eco-green/?p=213" class="readmore">Read More</a>
							</div>
						</li>
											<li>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?p=215"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/7-360x300.jpg" class="attachment-360x300 wp-post-image" alt="7" /></a>
							</div>
							<div class="text-box">
								<div class="number-round">4</div>
								<strong class="title"><a href="http://crunchpress.net/demo/eco-green/?p=215">Blog w/d Dual Sidebar R</a></strong>
								<p>In tempor, blandit n</p>
								<a href="http://crunchpress.net/demo/eco-green/?p=215" class="readmore">Read More</a>
							</div>
						</li>
											<li>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?p=219"><img width="360" height="300" src="<%=request.getContextPath()%>/user/img/9-360x300.jpg" class="attachment-360x300 wp-post-image" alt="9" /></a>
							</div>
							<div class="text-box">
								<div class="number-round">5</div>
								<strong class="title"><a href="http://crunchpress.net/demo/eco-green/?p=219">Blog w/d Left Sidebar</a></strong>
								<p>Arcu. Netus mollis p</p>
								<a href="http://crunchpress.net/demo/eco-green/?p=219" class="readmore">Read More</a>
							</div>
						</li>
									</ul>
			</div>
		</div> --%>
		</article></div></div><%-- <div class="container inner-container-cp" ><div class="row-fluid" style="padding-top:50px;padding-bottom:60px;float:left;"><article class="span12 mbtm fadeIn cp_load mbtm column first"><div class="generic-heading">
          <h2>Recent Posts</h2>
          <strong class="title-line">Highlights from our four decades of results</strong> </div></article><article class="span12 mbtm mbtm recent-post first">		<script type="text/javascript">
			jQuery(document).ready(function ($) {
				"use strict";
				if ($('#recent-slider-33').length) {
					$('#recent-slider-33').bxSlider({
						minSlides: 1,
						maxSlides: 1,
						auto:true,
						mode:'fade',
						pagerCustom: '#bx-pager-cp'
					});
				}
			});
		</script>
			<div class="slider-row">
			<ul id="recent-slider-33" class="recent-slider">
										<!--Recent Posts Section Start-->
				<li>
					<div class="left-box"> <a href="http://crunchpress.net/demo/eco-green/?p=549"><img width="1600" height="900" src="<%=request.getContextPath()%>/user/img/7-1600x900.jpg" class="attachment-1600x900 wp-post-image" alt="7" /></a>
						<div class="caption">
							<div class="left"> 
								<strong class="title">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500</strong> 
							</div>
							<div class="right"><a href="http://crunchpress.net/demo/eco-green/?p=549" class="search"><i class="fa fa-plus"></i></a> </div>
						</div>
					</div>
				</li>
											<!--Recent Posts Section Start-->
				<li>
					<div class="left-box"> <a href="http://crunchpress.net/demo/eco-green/?p=466"><img width="1600" height="900" src="<%=request.getContextPath()%>/user/img/102-1600x900.jpg" class="attachment-1600x900 wp-post-image" alt="10" /></a>
						<div class="caption">
							<div class="left"> 
								<strong class="title">Nostra. Torquent dignissim. Euismod placerat lectus netus pulvinar, rutrum, est duis etiam nisi, netus nostra nulla. Eget risus augue sagittis luctus </strong> 
							</div>
							<div class="right"><a href="http://crunchpress.net/demo/eco-green/?p=466" class="search"><i class="fa fa-plus"></i></a> </div>
						</div>
					</div>
				</li>
											<!--Recent Posts Section Start-->
				<li>
					<div class="left-box"> <a href="http://crunchpress.net/demo/eco-green/?p=472"><img width="1600" height="900" src="<%=request.getContextPath()%>/user/img/6-1600x900.jpg" class="attachment-1600x900 wp-post-image" alt="6" /></a>
						<div class="caption">
							<div class="left"> 
								<strong class="title">Tempus eros etiam nascetur vel, diam class nascetur curabitur cras conubia ultrices sit tellus dapibus blandit magnis, purus posuere luctus imperdiet,</strong> 
							</div>
							<div class="right"><a href="http://crunchpress.net/demo/eco-green/?p=472" class="search"><i class="fa fa-plus"></i></a> </div>
						</div>
					</div>
				</li>
											<!--Recent Posts Section Start-->
				<li>
					<div class="left-box"> <a href="http://crunchpress.net/demo/eco-green/?p=464"><img width="1600" height="900" src="<%=request.getContextPath()%>/user/img/122-1600x900.jpg" class="attachment-1600x900 wp-post-image" alt="12" /></a>
						<div class="caption">
							<div class="left"> 
								<strong class="title">A mattis rhoncus non facilisi dictumst mollis quam lacinia consequat duis aenean vestibulum imperdiet, ad, nulla hac elementum lobortis sed habitasse </strong> 
							</div>
							<div class="right"><a href="http://crunchpress.net/demo/eco-green/?p=464" class="search"><i class="fa fa-plus"></i></a> </div>
						</div>
					</div>
				</li>
								</ul>
			<div class="right-text-2">
			<h3>Latest News</h3>				<div id="bx-pager-cp">
												<a data-slide-index="0" href="http://crunchpress.net/demo/eco-green/?p=549" >
								<div class="right-box">
									<strong class="date">28/08</strong>
									<span class="comment"><i class="fa fa-comment-o"></i>0</span>
									<span class="like"><i class="fa fa-crosshairs"></i>84</span>									<p class="title">Audio Post</p> 
								</div>
							</a>			
													<a data-slide-index="1" href="http://crunchpress.net/demo/eco-green/?p=466" >
								<div class="right-box">
									<strong class="date">28/08</strong>
									<span class="comment"><i class="fa fa-comment-o"></i>0</span>
									<span class="like"><i class="fa fa-crosshairs"></i>188</span>									<p class="title">Featured Post</p> 
								</div>
							</a>			
													<a data-slide-index="2" href="http://crunchpress.net/demo/eco-green/?p=472" >
								<div class="right-box">
									<strong class="date">28/08</strong>
									<span class="comment"><i class="fa fa-comment-o"></i>0</span>
									<span class="like"><i class="fa fa-crosshairs"></i>155</span>									<p class="title">Slider Post</p> 
								</div>
							</a>			
													<a data-slide-index="3" href="http://crunchpress.net/demo/eco-green/?p=464" >
								<div class="right-box">
									<strong class="date">28/08</strong>
									<span class="comment"><i class="fa fa-comment-o"></i>0</span>
									<span class="like"><i class="fa fa-crosshairs"></i>91</span>									<p class="title">Soundcloud Post</p> 
								</div>
							</a>			
													
				</div>
									<a href="http://crunchpress.net/demo/eco-green/?cat=64" class="view">View All Articles</a>
							</div>
			<!--Recent Posts Section End--> 
		</div>	
</article></div></div> --%><%-- <div style="float:left;width:100%;padding-top:50px;padding-bottom:50px;background-color:rgba(0,0,0,0.8);background-image:url(http://crunchpress.net/demo/eco-green/wp-content/uploads/2014/08/52.png);background-attachment:Scroll;" class="full-width"><div class="container"><article class="span12 mbtm mbtm indicator-section first">		<script type="text/javascript">
        jQuery(document).ready(function($) {
			$('#indicatore-cp-slider-36').bxSlider({  
				speed: 500,
				mode: 'fade',
			});
        });
        </script>
		<ul id="indicatore-cp-slider-36">
							<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod">Planting Trees: A Green Community Project</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod"><img src="<%=request.getContextPath()%>/user/img/123.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$15000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod"  class="icon"><i class="fa fa-calendar-o"></i>-67 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=eros-eleifend-tempus-euismod" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend">How to Help Save the Butterfly</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend"><img src="<%=request.getContextPath()%>/user/img/2.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$10000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend"  class="icon"><i class="fa fa-calendar-o"></i>-87 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=et-euismod-ac-sit-eleifend" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus">It&#8217;s time to ban bee:killing pesticides</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus"><img src="<%=request.getContextPath()%>/user/img/4.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$50000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus"  class="icon"><i class="fa fa-calendar-o"></i>-66 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=nec-urna-auctor-phasellus" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient">Plant Trees to Save the Environment</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient"><img src="<%=request.getContextPath()%>/user/img/7.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$25000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient"  class="icon"><i class="fa fa-calendar-o"></i>-77 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=iaculis-porttitor-sem-parturient" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula">Bees Lives in Green Nature</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula"><img src="<%=request.getContextPath()%>/user/img/8.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$3000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula"  class="icon"><i class="fa fa-calendar-o"></i>-59 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=ultrices-facilisis-ligula" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim">Planting trees, changing minds</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim"><img src="<%=request.getContextPath()%>/user/img/12.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$5000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim"  class="icon"><i class="fa fa-calendar-o"></i>-65 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=lacus-sodales-dignissim" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus">Trees clean the air</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus"><img src="<%=request.getContextPath()%>/user/img/6.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$1000.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus"  class="icon"><i class="fa fa-calendar-o"></i>-71 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=cubilia-luctus" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
									<li>
						<div class="holder">
							<h2><a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus">Energy Allocation</a></h2>
							<div class="frame">
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus"><img src="<%=request.getContextPath()%>/user/img/3.jpg" alt=""></a>
							</div>
						  <div class="text-box">
							<strong class="price">$500.00</strong>
							<h2>Pledged of $0 Goal</h2>
							<div class="progress-bar">
							  <div class="progress progress-striped active">
								<div style="width:0%;" class="bar"></div>
							  </div>
							</div>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus" class="icon"><i class="fa fa-user"></i>677 Pledgers</a>
							<a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus"  class="icon"><i class="fa fa-calendar-o"></i>-72 Days Left</a>
							<div class="indicator-btn-row">
								<span>or</span>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus" class="btn-donate">Donate Now</a>
								<a href="http://crunchpress.net/demo/eco-green/?ignition_product=pharetra-vestibulum-conubia-metus" class="btn-donate">View Details</a>
							</div>
						  </div>
						</div>
					</li>
					
         
         
        </ul>


	</article></div></div> --%><div class="container inner-container-cp" ><div class="row-fluid" style="padding-top:10px;padding-bottom:0px;float:left;"><article class="span12 mbtm mbtm home-testimonials first">			<script type="text/javascript">
			jQuery(document).ready(function($) {
				$('#home-textimonials-slider-39').bxSlider({  minSlides: 1, maxSlides: 1, mode: 'fade', });
			});
			</script>
<% FeedbackDAO e1=new FeedbackDAO(); 
			System.out.println("Inside search...");
			List ls1=e1.search_top();
			HttpSession session2=request.getSession();
			session2.setAttribute("lssearch",ls1);
			System.out.println(ls1.size());
			%>
        
								<ul id="home-textimonials-slider-39">	
								 <c:forEach items="${sessionScope.lssearch}" var="i1" varStatus="j" >
								  <c:if test="${j.count lt 6 }">
								 <c:set var="i" value="${i1[0]}"></c:set>	
								  <c:set var="k" value="${i1[1]}"></c:set> 		
									<li>
						<div class="testimonials-box">
						  	<div class="span5 mbtm mbtm" style="margin-top:45px "> <p>${i.message }</p>
						  	
						  	</div>
							<div class="testimonials-text">
								<i class="fa fa-quote-right"></i>
							
							</div>
							
							<div class="testimonials-frame">
								<img width="233" height="159" src="<%=request.getContextPath()%>/doc/${k.path}" style="width: 233px !important;height: 159px !important;" class="attachment-233x159 wp-post-image" alt="23" />							</div>
							<div class="client-box">
								<h4>${i.user_id.user_name }</h4>
								<strong class="title"> Say About Us</strong> 
							</div>
						</div>
					</li>
					</c:if>
						</c:forEach>
					
					
					<%-- 					<li>
						<div class="testimonials-box">
							<div class="testimonials-text">
								<i class="fa fa-quote-right"></i>
								<p>Ut nibh nunc aliquam luctus mus. Eleifend metus cras nascetur auctor molestie dolor aliquam suscipit id vulputate at, cubilia congue. Vulputate iaculi</p>
							</div>
							<div class="testimonials-frame">
								<img width="233" height="159" src="<%=request.getContextPath()%>/user/img/531-233x159.jpg" class="attachment-233x159 wp-post-image" alt="53" />							</div>
							<div class="client-box">
								<h4>Nisi Inceptos</h4>
								<strong class="title">Happy Clients say about us</strong> <a href="http://crunchpress.net/demo/eco-green/?testimonial=nisi-inceptos" class="view">View More</a>
							</div>
						</div>
					</li>
				 --%>
					
									<%-- 	<li>
						<div class="testimonials-box">
							<div class="testimonials-text">
								<i class="fa fa-quote-right"></i>
								<p>Fusce lorem. Risus praesent litora vehicula magnis auctor id ultrices nisi lacinia Maecenas lorem. Taciti laoreet massa a cursus augue vulputate dolor</p>
							</div>
							<div class="testimonials-frame">
								<img width="233" height="159" src="<%=request.getContextPath()%>/user/img/631-233x159.jpg" class="attachment-233x159 wp-post-image" alt="63" />							</div>
							<div class="client-box">
								<h4>Sed</h4>
								<strong class="title">Happy Clients say about us</strong> <a href="http://crunchpress.net/demo/eco-green/?testimonial=sed" class="view">View More</a>
							</div>
						</div>
					</li>
					
										<li>
						<div class="testimonials-box">
							<div class="testimonials-text">
								<i class="fa fa-quote-right"></i>
								<p>Quisque gravida. Auctor natoque. Elementum turpis. Gravida convallis ridiculus vitae lacinia sem vestibulum enim neque porta. Taciti justo nostra. Ele</p>
							</div>
							<div class="testimonials-frame">
								<img width="233" height="159" src="<%=request.getContextPath()%>/user/img/432-233x159.jpg" class="attachment-233x159 wp-post-image" alt="43" />							</div>
							<div class="client-box">
								<h4>Venenatis Metus</h4>
								<strong class="title">Happy Clients say about us</strong> <a href="http://crunchpress.net/demo/eco-green/?testimonial=venenatis-metus" class="view">View More</a>
							</div>
						</div>
					</li>
					
										<li>
						<div class="testimonials-box">
							<div class="testimonials-text">
								<i class="fa fa-quote-right"></i>
								<p>Enim. Eleifend aenean elementum Consequat tempus vivamus odio, dictum porta. Odio hac conubia ullamcorper dictumst in tortor quisque at congue nisi di</p>
							</div>
							<div class="testimonials-frame">
								<img width="233" height="159" src="<%=request.getContextPath()%>/user/img/331-233x159.jpg" class="attachment-233x159 wp-post-image" alt="33" />							</div>
							<div class="client-box">
								<h4>Vestibulum Magna</h4>
								<strong class="title">Happy Clients say about us</strong> <a href="http://crunchpress.net/demo/eco-green/?testimonial=vestibulum-magna" class="view">View More</a>
							</div>
						</div>
					</li>
				 --%>	
										  </ul>
    <!--Home Testimonials End-->
		</article></div></div>							</div>
						</div>
											</div>
				</div>
			</div>
			<div class="clear clearfix"></div>
		</div>	
			</div>	
	<div class="clear"></div>
  <!--Footer Start-->
  <footer id="footer"> 
    <!--Footer Section 2 Start-->
   <%--  <section class="footer-section-2">
      <div class="container">
        <div class="row">
			<div class="span4"><div class="widget twitter_widget footer-box-1"><h4>Twitter Updates</h4><div class="latest-twitter-box"><div class="twitter-updates">			<ul class="twitter-5" id="twitter-updates-slider">
			
							<li>
					<div class="twitter-text"> 
						<p>Tumblr for Politicize is now live, <a href="http://themeforest.net/item/politicize-political-responsive-tumblr-theme/8719022" rel="external">http://t.co/lkUT6oKiZV</a></p>
						<a href="http://twitter.com/CrunchPress/status/504899732792025088"></a>						
												<strong class="time"><a href="http://twitter.com/CrunchPress">@CrunchPress dot Com</a></strong>
						<strong class="time">-07-Nov-09</strong>
					</div>
				</li>
								<li>
					<div class="twitter-text"> 
						<p>WordPress version of Politicize theme is available now,  <a href="http://themeforest.net/item/politicize-political-responsive-wordpress-theme/8689963" rel="external">http://t.co/8j1LLMrwbq</a></p>
						<a href="http://twitter.com/CrunchPress/status/504544386458210304"></a>						
												<strong class="time"><a href="http://twitter.com/CrunchPress">@CrunchPress dot Com</a></strong>
						<strong class="time">-07-Nov-09</strong>
					</div>
				</li>
							</ul>
		</div>
	</div>
	</div></div><div class="span4"><div class="widget cp_gallery_image_show"><h4>Latest Image Gallery</h4>				<div class="gallery_image_show sidebar-event-gallery">
                <div class="gallery-box-2">
                  <ul class="gallery">
						<li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/13.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/13-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/12.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/12-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/11.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/11-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/10.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/10-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/9.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/9-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/8.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/8-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/7.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/7-80x80.jpg" alt="" /></a></li><li><a data-rel="prettyPhoto[gallery1]" href="<%=request.getContextPath()%>/user/img/6.jpg"  title=""><img src="<%=request.getContextPath()%>/user/img/6-80x80.jpg" alt="" /></a></li>				
					</ul>
                </div>
			</div>
			</div></div><div class="span4"><div class="widget widget_tag_cloud"><h4>Environmental Tags</h4><div class="tagcloud"><a href='http://crunchpress.net/demo/eco-green/?tag=aliquip' class='tag-link-59' title='3 topics' style='font-size: 13.3846153846pt;'>aliquip</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=consectetur' class='tag-link-46' title='9 topics' style='font-size: 20.5641025641pt;'>consectetur</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=dolor' class='tag-link-44' title='10 topics' style='font-size: 21.2820512821pt;'>dolor</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=enim' class='tag-link-52' title='6 topics' style='font-size: 17.8717948718pt;'>enim</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=exercitatio' class='tag-link-55' title='4 topics' style='font-size: 15.1794871795pt;'>exercitatio</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=incidedunt' class='tag-link-48' title='8 topics' style='font-size: 19.6666666667pt;'>incidedunt</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=ipsum' class='tag-link-43' title='1 topic' style='font-size: 8pt;'>ipsum</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=laboris' class='tag-link-57' title='4 topics' style='font-size: 15.1794871795pt;'>laboris</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=lorem' class='tag-link-42' title='1 topic' style='font-size: 8pt;'>lorem</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=lorem-ipsum' class='tag-link-51' title='10 topics' style='font-size: 21.2820512821pt;'>lorem.ipsum</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=menim' class='tag-link-49' title='9 topics' style='font-size: 20.5641025641pt;'>menim</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=nisi' class='tag-link-58' title='3 topics' style='font-size: 13.3846153846pt;'>nisi</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=nostrud' class='tag-link-54' title='5 topics' style='font-size: 16.6153846154pt;'>nostrud</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=quis' class='tag-link-53' title='6 topics' style='font-size: 17.8717948718pt;'>quis</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=sit' class='tag-link-45' title='11 topics' style='font-size: 22pt;'>sit</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=tempor' class='tag-link-47' title='8 topics' style='font-size: 19.6666666667pt;'>tempor</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=test' class='tag-link-28' title='6 topics' style='font-size: 17.8717948718pt;'>test</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=ullamco' class='tag-link-56' title='3 topics' style='font-size: 13.3846153846pt;'>ullamco</a>
<a href='http://crunchpress.net/demo/eco-green/?tag=veniam' class='tag-link-50' title='9 topics' style='font-size: 20.5641025641pt;'>veniam</a></div>
</div></div>        </div>
      </div>
    </section>
    <!--Footer Section 2 End--> 
        <!--Footer Top Section Start-->
    <section class="footer-top-section">
      <div class="container">
        <div class="row-fluid">
          <div class="span6">
            <div class="left"> <i class="fa fa-envelope"></i> <strong class="title">Subscribe For Email Updates</strong>               <p>via email get updated about Environment News & Donation Events</p>             </div>          </div>
          <div class="span6">
            <div class="right">
								<form class="subscribe-form newsletter get-touch-form" id="frm_newsletter" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=', 'popupwindow', 'scrollbars=yes,width=600,height=550');return true">
						 <div class="field-set-section"> <input type="text" class="subscribe-input input-newsletter feedemail-input" name="email" onblur="this.value=this.value==''?'Enter your email':this.value;" onfocus="this.value=this.value=='Enter your email'?'':this.value" value="Enter your email" />
						  <input type="hidden" value="" name="uri"/>
						  <input type="hidden" name="loc" value="en_US"/>
						  <button class="btn-search btn-submit-news" id="btn_newsletter" ><i class="fa fa-angle-double-right"></i></button></div>
					</form>
			            </div>
          </div>
        </div>
      </div>
    </section>
    <!--Footer Top Section End--> 
    
    <!--Footer Section 3 Start-->
    <section class="footer-section-3">
		<div class="container">
			<div class="row">
				<div class="span4"><div class="widget cp_flicker"><h4> Flickr Widget</h4>
<!--<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=10&display=latest&size=t&layout=x&source=user&user=18867172%40N00"></script>-->
<!--<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=6&display=latest&size=latest&layout=x&source=user&$type=7400386@N05"></script>-->


		<script type="text/javascript" src="js/badge_code_v2.gne.js"></script>

 --%><!-- End of Flickr Badge -->
	</div></div><div class="span4"><div class="widget widget_text">			<div class="textwidget" style="margin-top: 30px"><address class="contact-box">
            <strong class="title">Contact Us</strong>
              <strong class="number"><span>Address:</span>
            <p>405, Sigma Legacy,
Above Nissan Motors Showroom,
IIM Road, Nr. Panjrapole Cross Rd,
Amabawadi,Ahmedabad - 380015.</p>
            <strong class="number"><span>Phone:</span> 079-32446066</strong> <a href="mailto:" class="email"><span>e-mail:</span> innoventaa.technocrats@gmail.com</a> 
            </address></div>

		</div></div><div class="span4"><div class="widget widget_text">			<div class="textwidget"><div class="footer-map" style="margin-left: 350px">
<div class="cp-map-containter"><!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=true"></script> --><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.967077570395!2d72.54745599999998!3d23.024981000000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84e62bdec3db%3A0x74b4f1f715bb5fb0!2sInnoventaa+Technology!5e0!3m2!1sen!2sin!4v1428932845352" width="370" height="245" frameborder="0" style="border:0"></iframe><!-- <script type='text/javascript'>
		jQuery(document).ready(function($) {	
			'use strict';		
			var map;
			var myLatLng = new google.maps.LatLng(48.8582,2.2945)
			var myOptions = {
				zoom: 14,
				center: myLatLng,
				disableDefaultUI: true,
				zoomControl: true,
				styles:[
					{
						stylers: [
							{ hue: '#B22222' },
							{ saturation: -10 },
						]
					}
				],
				scrollwheel: false,
				navigationControl: false,
				mapTypeControl: true,
				scaleControl: false,
				draggable: true,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			map = new google.maps.Map(document.getElementById('map_canvas-2'),myOptions);
			
			var marker = new google.maps.Marker({
			  position: map.getCenter(),
			  map: map
			});
			marker.getPosition();
			
			var infowindow = new google.maps.InfoWindow({
				content: 'CrunchPress',
				position: myLatLng
			});
			infowindow.open(map);
		});
		</script> --><!-- <div style="width:100%;height:250px;" id="map_canvas-2" class="map_canvas"></div> --></div></div></div>
		</div></div>			</div>
		</div>
    </section>
    <!--Footer Section 3 End--> 
    <!--CopyRights Section Start-->
   <!--  <section class="copyrights-section">
		<div class="container">
			<div class="footer-social-box ">
									<ul class="footer-social">
						<li><a title="Facebook" class="social-color-1" href="#"><i class="fa fa-facebook"></i></a></li>						<li><a title="Twitter" class="social-color-2" href="#"><i class="fa fa-twitter"></i></a></li>						<li><a title="Delicious" class="social-color-3" href="#"><i class="fa fa-delicious"></i></a></li>						<li><a title="Google Plus" class="social-color-4" href="#"><i class="fa fa-google-plus"></i></a></li>						<li><a title="LinkedIn" class="social-color-5" href="#"><i class="fa fa-linkedin"></i></a></li>						<li><a title="Youtube" class="social-color-6" href="#"><i class="fa fa-youtube"></i></a></li>												<li><a title="Vimeo" class="social-color-3" href="#"><i class="fa fa-vimeo-square"></i></a></li>						<li><a title="Pinterest" class="social-color-4" href="#"><i class="fa fa-pinterest"></i></a></li>																							</ul>	
							</div>
			<strong class="copy">COPYRIGHT © 2014  By <a href="http://crunchpress.com/" target="_blank" class="web">CrunchPress.com</a></strong>		</div>
    </section>
   -->  <!--CopyRights Section End--> 
  </footer>
  <!--Footer End--> 
</div>
<!--Wrapper End-->
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","sending":"Sending ..."};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/scripts.js?ver=3.9.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/demo\/eco-green\/wp-admin\/admin-ajax.php","ajax_loader_url":"\/\/crunchpress.net\/demo\/eco-green\/wp-content\/plugins\/woocommerce\/assets\/images\/ajax-loader@2x.gif","i18n_view_cart":"View Cart","cart_url":"http:\/\/crunchpress.net\/demo\/eco-green\/?page_id=300","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/add-to-cart.min.js?ver=2.1.12'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.blockUI.min.js?ver=2.60'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/demo\/eco-green\/wp-admin\/admin-ajax.php","ajax_loader_url":"\/\/crunchpress.net\/demo\/eco-green\/wp-content\/plugins\/woocommerce\/assets\/images\/ajax-loader@2x.gif"};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/woocommerce.min.js?ver=2.1.12'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.cookie.min.js?ver=1.3.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/demo\/eco-green\/wp-admin\/admin-ajax.php","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/cart-fragments.min.js?ver=2.1.12'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var loader = {"site_loader":"","element_loader":""};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/cp_loader.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/underscore-min.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/comment-reply.min.js?ver=4.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ajax_var = {"url":"http:\/\/crunchpress.net\/demo\/eco-green\/wp-admin\/admin-ajax.php","nonce":"c14f289b3f"};
/* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/bootstrap.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/frontend_scripts.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/social_slider_main.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/bxslider.min.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.fitvids.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery_countdown.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/easy-pie-chart.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/excanvas.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.accordion.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user//jquery_content_slider.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.flexisel.js?ver=1.0'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/user/js/jquery.prettyphoto.js?ver=1.0'></script>
<script type='text/javascript' src<%=request.getContextPath()%>/user/js/pretty_script.js?ver=1.0'></script>
</body>
</html>