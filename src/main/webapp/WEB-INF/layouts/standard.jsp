<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>SpringWeb Flow Showcase</title>
		<script type="text/javascript" src="<c:url value="/resources/dojo/dojo.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/spring/Spring.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/spring/Spring-Dojo.js" />"></script>
	</head>
	<body class="tundra">
		<div id="page" class="container">
			<div>
				<h1>Spring Web Flow Showcase</h1>
				<hr/>
			</div>
			<div>
				<tiles:insertAttribute name="body"/>
			</div>
		</div>
	</body>
</html>