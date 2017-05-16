<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" %>
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

<link rel="stylesheet" href="${basePath }css/common/bootstrap.css" />
<link rel="stylesheet" href="${basePath }css/index.css" />
<script src="${basePath }js/common/jquery-3.1.0.min.js"></script>
<script src="${basePath }js/common/bootstrap.js"></script>
<script src="${basePath }js/index.js"></script>
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
				<img src="${basePath }images/logo.svg" class="img-responsive"></img>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-word">
				<h2>你吹过的牛皮，这里都记着呢</h2>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-login">
				<a href=""><img src="${basePath }images/weixin.svg" class="img-responsive"></img></a>
				<a href=""><img src="${basePath }images/weibo.svg" class="img-responsive"></img></a>
				<p>点击登录</p>
			</div>
		</div>
	</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column" id ="content">
			<!-- <div class="chuiniu">
				<div class="chuiniu-1 clearfix">
		       		<div class="chuiniu-1-1">
		       			<p>
							<a href=""></a>
						</p>
		       		</div>
		       		<div class="chuiniu-1-2">
			       		<button type="button" class="btn btn-default btn-lg">
							<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;<span class="badge">12</span>
						</button>
					</div>
		       	</div>
		       	<div class="chuiniu-2">
		       		<div class="chuiniu-2-2">
		       			<ul  class="list-inline">
						<li>马斯克</li><li>2017年5月6日</li>
						</ul>
		       		</div>
				</div>
	   		</div> -->
	   		
	   		<div>
				<ul class="pagination">
					<li>
						 <a href="#">Prev</a>
					</li>
					<li>
						 <a href="#">1</a>
					</li>
					<li>
						 <a href="#">2</a>
					</li>
					<li>
						 <a href="#">3</a>
					</li>
					<li>
						 <a href="#">4</a>
					</li>
					<li>
						 <a href="#">5</a>
					</li>
					<li>
						 <a href="#">Next</a>
					</li>
				</ul>
			</div>		
		</div>
		<div class="col-md-4 column">
			<div class="main-right">
				<h3 class="title">社区</h3>
				<div class="">
					<p>QQ群：12345678</p>
					<p><a href=""><i class="fa fa-weibo"></i> 官方微博</a></p>
					<p>百度贴吧</p>
				</div>
			</div>
			
			
		</div>
	</div>

</div>

</body>

</html>