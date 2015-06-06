<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%-- <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"> --%>
<script src="<c:url value="/resources/js/jquery-2.1.4.js" />"></script>
<script src="<c:url value="/resources/js/upload.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="upload" action="upload" method="POST"
		enctype="multipart/form-data">

		<fieldset>
			<legend>File Upload</legend>

			<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE"
				value="300000" />

			<div>
				<label for="fileselect">Files to upload:</label> <input type="file"
					id="fileselect" name="fileselect[]" multiple="multiple" />
				<div id="filedrag">or drop files here</div>
			</div>

			<div id="submitbutton">
				<button type="submit">Upload Files</button>
			</div>

		</fieldset>

	</form>

	<div id="messages">
		<p>Status Messages</p>
	</div>
</body>
</html>