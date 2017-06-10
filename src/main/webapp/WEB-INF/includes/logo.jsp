<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
			<div class="head-login">
				<a href=""><img src="<%=basePath%>images/weixin.svg" class="img-responsive"></img></a>
				<a href=""><img src="<%=basePath%>images/weibo.svg" class="img-responsive"></img></a>
				<!--<p>做成腾讯样式的</p> 包括分享 -->
			</div>