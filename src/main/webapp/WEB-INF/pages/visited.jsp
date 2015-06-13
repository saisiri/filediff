<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/css/map.css" />" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
path {
	stroke: white;
	stroke-width: 0.25px;
	fill: grey;
}
</style>
<title>World tour</title>
</head>
<body>
<div id="map_container">
</div>
<script src="<c:url value="/resources/js/topojson.v1.js" />"></script>
<script src="<c:url value="/resources/js/jquery-2.1.4.js" />"></script>
<script src="<c:url value="/resources/js/d3.min.js" />"></script>
<script src="<c:url value="/resources/js/countries_data.js" />"></script>
<script src="<c:url value="/resources/js/worldMap.js" />"></script>
</body>
</html>