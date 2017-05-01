<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="description" content="overview &amp; stats" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
<link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${basePath }css/index.css" />
<script src="${basePath }js/index.js"></script>
<script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>

<title>你吹牛</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column">
		LOGO
		</div>
		<div class="col-md-6 column">
		LOGIN
		</div>
	</div>
	<form>
		<input></input>
	</form>
</div>

</body>

</html>