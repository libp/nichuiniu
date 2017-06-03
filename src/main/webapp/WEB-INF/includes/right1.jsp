<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
			<div class="main-right">
				<h3 class="title">社区</h3>
				<div class="">
					<p>QQ群：12345678</p>
					<p><a href="http://weibo.com/p/1005056262804779/home?from=page_100505&mod=TAB#place" target="_blank"><i class="fa fa-weibo"></i> 官方微博</a></p>
					<p>微信交流</p>
					<img alt="微信图片" src="<%=basePath%>images/weixin2code.png">
				</div>
			</div>