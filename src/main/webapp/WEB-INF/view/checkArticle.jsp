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
<link rel="stylesheet" href="<%=basePath%>css/common/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath%>css/admin.css" />
<script src="<%=basePath%>js/common/jquery-3.1.0.min.js"></script>
<script src="<%=basePath%>js/common/bootstrap.js"></script>
<script src="<%=basePath%>js/admin.js"></script>
<script>
	jQuery(function($) {
		admin.init('<%=basePath%>');
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
				<h2>找牛皮!</h2>
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
			       		<button type="button" class="btn btn-info btn-lg active agree ok" id="${items.id}">
							<span class="glyphicon glyphicon-ok"></span>
						</button>
						<button type="button" class="btn btn-warning btn-lg active agree" id="${items.id}">
							<span class="glyphicon glyphicon-pencil"></span>
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
	   			<ul class="pagination" curPage="${gridBean.page}" totalPage="${gridBean.total}">
				</ul>
	   		</nav>
		</main>
	</div>
</div>

</body>

</html>