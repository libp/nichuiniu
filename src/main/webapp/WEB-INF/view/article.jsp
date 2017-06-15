<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<meta name="description" content="你吹牛、吹牛，你吹过的牛皮" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
<link rel="shortcut icon" href="<%=basePath%>images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script src="http://lib.sinaapp.com/js/jquery/3.1.0/jquery-3.1.0.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="<%=basePath%>js/index.js"></script>
<script>
	jQuery(function($) {
		<%-- nichuiniu.init('<%=basePath%>'); --%>
	});
</script>

<title>你吹牛</title>
</head>
<body>
<body>
<div class="row clearfix head" >
		<div class="col-md-2 column">
			<div class="head-logo">
				<img src="<%=basePath%>images/logo.svg" class="img-responsive"></img>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-word">
				<h2>你吹过的牛皮，这里都记着呢</h2>
			</div>
		</div>
		<div class="col-md-5 column">
			<jsp:include page="../includes/logo.jsp"></jsp:include>
		</div>
	</div>
<div class="container">
	<div class="row clearfix">
		<main class="col-md-8 column">
			<article class="chuiniu">
				<header class="chuiniu-title">
					<h1><c:out value="${story.title}"/></h1>
					<section class="chuiniu-meta">
						<span>作者：<c:out value="${story.author}"/></span>
						<span>•</span>
						<span><c:out value="${story.createtime}"/></span>
					</section>
				</header>
				<section class="chuiniu-content">
					${story.content}
				</section>
				<footer class="chuiniu-footer">
					你吹过的牛皮，这里都记着呢
				</footer>
	   		</article> 
		</main>
		<aside class="col-md-4 column">
			<jsp:include page="../includes/right1.jsp"></jsp:include>
		</aside>
	</div>
</div>

</body>
</html>