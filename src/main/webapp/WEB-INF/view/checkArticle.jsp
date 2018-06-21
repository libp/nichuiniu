<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<meta name="description" content="你吹牛看古今牛皮，你吹牛以时间线的形式记录古往今来名人机构说过的大话吹过的牛皮" />
<meta name="keywords" content="吹牛、你吹牛、大话、牛皮"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />


<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
<link rel="shortcut icon" href="<%=basePath%>images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="http://lib.baomitu.com/twitter-bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script src="http://lib.baomitu.com/jquery/3.1.0/jquery.min.js"></script>
<script src="http://lib.baomitu.com/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/admin.js"></script>
<!-- include summernote css/js-->
<link href="http://lib.baomitu.com/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://lib.baomitu.com/summernote/0.8.4/summernote.js"></script>

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
			<article class="chuiniu" id="${items.id}">
				<div class="chuiniu-1 clearfix">
		       		<div class="chuiniu-1-1">
		       			<p>
							<a href="${items.url}">${items.title}</a>
						</p>
		       		</div>
		       		<div class="chuiniu-1-2">
						<div class="delete" num="${items.id}">
							<a href="javascript:void()" class="flag-a-txt">
								<span class="glyphicon glyphicon-remove"></span>
							</a>
						</div>
						<div class="editArticle" num="${items.id}">
							<a target="_blank" class="flag-a-txt" href="editArticle/${items.id}">
								<span class="glyphicon glyphicon-pencil"></span>
							</a>
						</div>
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
	   		
			<!-- 遮罩窗体 -->
			<div class="modal fade" id="modal-container-598106" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 900px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="cloesEdit_x">×</button>
							<p id="modalID" style="display:none"></p>
							<div class="input-group input-group-lg modal-input-margin">
					            <span class="input-group-addon">标题</span>
					            <input type="text" class="form-control" placeholder="文章标题" id="myModalLabel" name="title">
					        </div>
					        <div class="input-group input-group-lg modal-input-margin">
					            <span class="input-group-addon">作者</span>
					            <input type="text" class="form-control" placeholder="文章作者" id="myModalLabel-author" name="author">
					        </div>
					        <div class="input-group input-group-lg modal-input-margin">
					            <span class="input-group-addon">时间</span>
					            <input type="text" class="form-control" placeholder="文章发布时间" id="myModalLabel-createtime" name="createtime">
					        </div>
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal" id="cloesEdit_btn">关闭</button> <button type="button" class="btn btn-primary save">保存</button>
						</div>
						<div class="modal-body">
							<div id="summernote"></div>
						</div>
						
					</div>
				</div>
			</div>
			
		</main>
		<aside class="col-md-4 column">
			<jsp:include page="../includes/right2.jsp"></jsp:include>
		</aside>
	</div>
</div>

</body>

</html>