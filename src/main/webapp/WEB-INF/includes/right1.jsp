<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
			<div class="main-right">
				<h3 class="title">社区</h3>
				<div class="">
					<p>QQ群：553013338</p>
					<%-- <img alt="QQ群" src="<%=basePath%>images/553013338.png"> --%>
					<p><a href="http://weibo.com/p/1005056262804779/home?from=page_100505&mod=TAB#place" target="_blank"><i class="fa fa-weibo"></i> 官方微博</a></p>
					<p>微信交流</p>
					<img alt="微信图片" src="<%=basePath%>images/weixin2code.png">
				</div>
			</div>
			<div class="main-right" style="margin-top:25px;">
				<h3 class="title">公告</h3>
				<div class="">
					<p>本站部分内容采自互联网，所有侵权，请联系网站管理员（924701358@qq.com）。本站将在收到邮件48小时内删除侵权文章！</p>
				</div>
			</div>