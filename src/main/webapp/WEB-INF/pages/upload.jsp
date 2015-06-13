<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link href="<c:url value="/resources/css/upload.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-2.1.4.js" />"></script>
<link href="/resources/css/upload.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload file</title>
</head>
<body>
	<div id="formDiv">

	<fieldset id="formFieldSet">
		<legend>File Upload</legend>
		<c:choose>
			<c:when test="${status==true}">
			<br>
				<strong> <c:out value="${message}" />
				</strong>
			</c:when>
			<c:otherwise>
			<br>
				<form:form id="uploadForm" action="upload" method="POST"
					modelattribute="fileUplaod" enctype="multipart/form-data">
					<div>
						<span><label for="fileselect">Files to upload:</label></span> <input
							type="file" id="fileselect" name="file" class="button" />
						<div id="filedrag">or drop files here</div>
					</div>
					<button type="submit" id="submitUpload" class="button">Upload
						Files</button>
				</form:form>
			</c:otherwise>
		</c:choose>
		</fieldset>
	</div>
</body>
</html>