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

<link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script src="<%=basePath%>js/common/jquery-3.1.0.min.js"></script>
<script src="<%=basePath%>js/common/bootstrap.js"></script>
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
			<div class="head-login">
				<a href=""><img src="<%=basePath%>images/weixin.svg" class="img-responsive"></img></a>
				<a href=""><img src="<%=basePath%>images/weibo.svg" class="img-responsive"></img></a>
				<p>点击登录</p>
			</div>
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
			<div class="main-right">
				<h3 class="title">社区</h3>
				<div class="">
					<p>QQ群：12345678</p>
					<p><a href=""><i class="fa fa-weibo"></i> 官方微博</a></p>
					<p>百度贴吧</p>
				</div>
			</div>
		</aside>
	</div>
</div>

</body>
</html>