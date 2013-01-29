<%-- Document   : standard.jsp --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<html xmlns:jsp="http://java.sun.com/JSP/Page"
    xmlns:c="http://java.sun.com/jsp/jstl/core"
    xmlns:fn="http://java.sun.com/jsp/jstl/functions"
    xmlns:tiles="http://tiles.apache.org/tags-tiles"
    xmlns:spring="http://www.springframework.org/tags"
	xmlns:sec="http://www.springframework.org/security/tags"
    xmlns:util="urn:jsptagdir:/WEB-INF/tags/util">

	<head>

		<title>Tiles Example</title>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=8"/>
		<meta name="description" content="add" />
		<meta name="robots" content="noodp" />
		<meta name="verify-v1" content="get-code" />
		<meta name="google-site-verification" content="get-code" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=1" />
		<c:set var="base" value="${pageContext.request.contextPath}" scope="application" />
		<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="request" />
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico?v=1" />
        <script src="${base}/js/jquery-1.7.1.min.js"></script>
        <script src="${base}/js/jquery-ui-1.8.17.custom.min.js"></script>
        <script src="${base}/js/plugins/jquery.cookie.js"></script>
        <script src="${base}/js/plugins/jquery.columnmanager.js"></script>
        <script src="${base}/js/plugins/jquery.dataTables.min.js"></script>
        <script src="${base}/js/plugins/jquery.placeholder.min.js"></script>
        <script src="${base}/js/global.js?v=0.0.1"></script>
        <script src="${base}/js/dropdown.js"></script>

		<link rel="stylesheet" type="text/css" href="${base}/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="${base}/css/jquery-ui-1.8.17.custom.css" />
		<link rel="stylesheet" type="text/css" href="${base}/css/jquery.dataTables.css" />
        <link rel="stylesheet" type="text/css" href="${base}/css/global.css?v=0.0.1" />
        <script>
        // Initialize Datepicker
        try { $(".datepicker").datepicker(); } catch (e) { }
        $.datepicker.setDefaults({
        	autoSize: true,
	        changeMonth: true,
			changeYear: true
       	});
        var contextPath = "${contextPath}";
        var currentUserId = "${currentUserDto.userId}";

        </script>
	 <c:if test="${not empty currentUserDto}">
	 	<script src="${base}/js/alert.js"></script>
	 	<script>notificationsAjax();</script>
	 </c:if>
	</head>

	<body id="home">

	<div class="container">
		<div class="inner-wrap">

			<tiles:insertAttribute name="header" ignore="true" />
			<tiles:insertAttribute name="body" ignore="true" />

			<tiles:insertAttribute name="adminUserForm" ignore="true" />
			<tiles:insertAttribute name="userUserForm" ignore="true" />

			<tiles:insertAttribute name="emailForm" ignore="true" />
			<tiles:insertAttribute name="alertForm" ignore="true" />

		</div>
		<tiles:insertAttribute name="footer" ignore="true" />

		<div id="dialog-delete" title="Confirm Delete" class="hidden">
  			<p id="delete-message">Are you sure you would like to delete this record?</p>
		</div>

		<div id="dialog-alert" title="Alert Message" class="hidden">
  			<p id="dialog-alert-message"></p>
		</div>

	</div>

	</body>
</html>