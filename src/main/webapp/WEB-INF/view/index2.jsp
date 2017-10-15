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
<link rel="stylesheet" href="http://lib.baomitu.com/twitter-bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script src="http://lib.baomitu.com/jquery/3.1.0/jquery.min.js"></script>
<script src="http://lib.baomitu.com/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/index.js"></script>
<script>
	jQuery(function($) {
		nichuiniu.init('<%=basePath%>');
	});
</script>

<title>你吹牛</title>
</head>
<body>
<div class="row clearfix head" >
		<div class="col-md-2 column">
			<div class="head-logo">
				<img src="<%=basePath%>images/logo.svg" class="img-responsive"></img>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-word">
				<h2>你吹过的牛皮，这里都记着呢!</h2>
			</div>
		</div>
		<div class="col-md-5 column">
			<jsp:include page="../includes/logo.jsp"></jsp:include>
		</div>
	</div>
<div class="container">
	<div class="row clearfix">
		<main class="col-md-8 column" id="content">
			<div class="changeView">
				<span class="changeView-title">浏览角度：</span>
				<span class="changeView-detail changeView-detail-active">日</span>
				<span class="changeView-detail">周</span>
				<span class="changeView-detail">月</span>
				<span class="changeView-detail">点赞数</span>
			</div>
			<c:forEach items="${gridBean.rows}" var="items">
			<article class="flag">
				<div class="flag-body clearfix">
		       		<div class="flag-1">
		       			<p class="flag-date">2017/10/15</p>
					</div>
		       		<div class="flag-2">
		       			<div class="flag-round"><b></b></div>
					</div>
					<div class="flag-3">
						<a target="_blank" class="flag-a-pic" href="#">
							<img alt="文章标题" title="张三丰" src="<%=basePath%>images/picture/nichuiniustyle.png" class="flag-pic";>
						</a>
					</div>
					<div class="flag-4">
						<a target="_blank" class="flag-a-txt clearfix" href="#">
							港珠澳大桥海底隧道铺装路面 年底具备通车条件
						</a>
						<div class="flag-data">
							<span class="flag-span">100阅读&nbsp;⋅</span>
							<span class="flag-span">1评论&nbsp;⋅</span>
							<span class="flag-span">100点赞</span>
						</div>
					</div>
		       	</div>
		  	</article>
	   		</c:forEach> 
	   		<div class="flag-vertical-line"></div>
	   		<div>
	   			<span class="getmore">点击加载更多牛皮~</span>
	   		</div>
		</main>
		<aside class="col-md-4 column">
			<jsp:include page="../includes/right1.jsp"></jsp:include>
		</aside>
	</div>
</div>

</body>

</html>