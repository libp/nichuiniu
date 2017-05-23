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
				<p>做成腾讯样式的</p><!-- 包括分享 -->
			</div>
		</div>
	</div>
<div class="container">
	<div class="row clearfix">
		<main class="col-md-8 column" id="content">
			<c:forEach items="${gridBean.rows}" var="items">
			<article class="chuiniu">
				<div class="chuiniu-1 clearfix">
		       		<div class="chuiniu-1-1">
		       			<p>
							<a href="${items.url}">${items.title}</a>
						</p>
		       		</div>
		       		<div class="chuiniu-1-2">
			       		<button type="button" class="btn btn-default btn-lg">
							<span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;<span class="badge">${items.agreetime}</span>
						</button>
					</div>
		       	</div>
		       	<div class="chuiniu-2">
		       		<div class="chuiniu-2-2">
		       			<ul  class="list-inline">
						<li>${items.author}</li><li>${items.createtime}</li>
						</ul>
		       		</div>
				</div>
		  	</article>
	   		</c:forEach> 
	   		<nav>
	   			<ul class="pagination">
		   			<li><a href="storyList?page=1">首页</a></li>
		   			<c:set var="currentPage" value="${gridBean.page}"/>
		   			<c:set var="totalPage" value="${gridBean.total}"/>
		   			
		   			<c:if test="${ currentPage> 1}">
		   				<li><a href="storyList?page=${gridBean.page-1}"><<</a></li>
		   			</c:if>
	   				<c:if test="${currentPage > 2}">
					   <li><a href="storyList?page=${currentPage-2}">${currentPage-2}</a></li>
					   <li><a href="storyList?page=${currentPage-1}">${currentPage-1}</a></li>
					</c:if>
					<li><a href="storyList?page=${currentPage}">${currentPage}</a></li>
					<li><a href="storyList?page=${currentPage+1}">${currentPage+1}</a></li>
					<li><a href="storyList?page=${currentPage+2}">${currentPage+2}</a></li>
					<li><a href="#">...</a></li>
					
					<c:if test="${ currentPage< totalPage}">
		   				<li><a href="storyList?page=${gridBean.page+1}">>></a></li>
		   			</c:if>
				    
				    <li><a href="storyList?page=${gridBean.total+1}">尾页</a></li>    
				</ul>
	   		</nav>
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