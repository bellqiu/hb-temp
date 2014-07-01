<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE>
<html>
<head>
		<title><tiles:getAsString name="title" /> - ${site.siteName } </title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="Cache-Control" content="no-cache" />
		<meta content="" name="keywords">
		<meta content="" name="description">
		
		<!-- Import css/js -->
		<style type="text/css">
				 @import url("${site.resourceServer}${site.webResourcesFolder}/css/blitzer/reset.css");
				 @import url("${site.resourceServer}${site.webResourcesFolder}/css/blitzer/common.css");
				 @import url("${site.resourceServer}${site.webResourcesFolder}/css/blitzer/GlobalNav.css");
			<c:forEach items="${site.css }" var="css">
		   		 @import url("${site.resourceServer}${site.webResourcesFolder}${css}");
			</c:forEach>
		</style>
		
		<script src="${site.resourceServer}${site.webResourcesFolder}/js/jquery-1.9.0.js" type="text/javascript"></script>
		<script src="${site.resourceServer}${site.webResourcesFolder}/js/jquery-ui-1.10.0.custom.js" type="text/javascript"></script>
		<script src="/local-static-content/js/HB-io.js" type="text/javascript"></script>
		<script src="${site.resourceServer}${site.webResourcesFolder}/js/widget/NavMenu/GlobalNav.js" type="text/javascript"></script>
		<script src="${site.resourceServer}${site.webResourcesFolder}/js/widget/Slides/Slides.js" type="text/javascript"></script>
		
		<c:forEach items="${site.js }" var="js">
			<script src="${site.resourceServer}${site.webResourcesFolder}${js}" type="text/javascript"></script>
		</c:forEach>
		
</head>
<body>
	<div id="top">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="main">
		<tiles:insertAttribute name="body"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>