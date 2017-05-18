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
<body>
<div class="row clearfix head" >
		<div class="col-md-2 column">
			<div class="head-logo">
				<img src="images/logo.svg" class="img-responsive"></img>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-word">
				<h2>你吹过的牛皮，这里都记着呢</h2>
			</div>
		</div>
		<div class="col-md-5 column">
			<div class="head-login">
				<a href=""><img src="images/weixin.svg" class="img-responsive"></img></a>
				<a href=""><img src="images/weibo.svg" class="img-responsive"></img></a>
				<p>点击登录</p>
			</div>
		</div>
	</div>
<div class="container">
	<div class="row clearfix">
		<main class="col-md-8 column">
			<article class="chuiniu">
				<header class="chuiniu-title">
					<h1>标题标题标题标题标题标题标题标题标题标题标题标题标题</h1>
					<section class="chuiniu-meta">
						<span>作者：张三</span>
						<span>•</span>
						<span>2017年5月18日</span>
					</section>
				</header>
				<section class="chuiniu-content">
					<p>虽然通过浏览器管理 Ghost 博客虽然很方便，但是在多个 tab 之间切换有时候也会很麻烦，嗯，如果能有一个独立的 app 应该使用起来会更爽一些！</p>

					<p>今天的主角来了，Ghost 桌面版 APP -- Ghost Desktop！</p>
					
					<p>目前，Ghost Desktop 还处于早期阶段，但是已经是一个全功能版本了，并且 Ghost Desktop 运行良好，支持自动更新，已经完全支持 Mac、Windows 和 Linux 平台了。补充一下，Ghost Desktop 是<a href="https://github.com/tryghost/ghost-desktop">完全开源</a>的（这还用说吗？）。</p>
					
					<p>其实 Ghost Desktop 于数周前就已经开放给大家预览了。</p>
					
					<p>众所周知，Ghost 是一个有非盈利组织支持的开源项目。Ghost Desktop 由志愿者 Felix Rieseberg 独立开发的，并且他还是一位微软的开源布道者。</p>
					
					<p>官方下载地址（且慢点击，先看下面）：<a href="https://ghost.org/downloads/">https://ghost.org/downloads/</a></p>
					
					<p>由于 <strong>众所周知</strong> 的原因，某些网站或服务在国内是不存在的，这其中就包括 Amazon 的云存储，悲伤的是 Github 用的就是 Amazon 的云存储，更悲伤的是 Ghost Desktop 利用的是 Github 提供的下载，说白了，你在国内还真下载不了。所以 GhostChina 把安装包搬运到墙内给大家提供一点儿方便：</p>
					
					<ul>
					<li>Windows(For Windows 7 &amp; newer): <a href="http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-windows-setup.exe">http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-windows-setup.exe</a></li>
					<li>Mac(For OS X 10.9 &amp; newer): <a href="http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-osx.zip">http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-osx.zip</a></li>
					<li>Linux(For Ubuntu 64-bit): <a href="http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-debian.deb">http://dl.ghostchina.com/desktop/ghost-desktop-0.3.2-debian.deb</a></li>
					</ul>
				</section>
				<footer class="chuiniu-footer">
					你吹过的牛皮，这里都记着呢
				</footer>
	   		</article> 
	   		<div id="demo1"></div>		
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