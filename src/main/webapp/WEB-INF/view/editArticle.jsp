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

<script src="<%=basePath%>js/editArticle.js"></script>
<script src="<%=basePath%>js/admin.js"></script>
<!-- include summernote css/js-->
<link href="http://lib.baomitu.com/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://lib.baomitu.com/summernote/0.8.4/summernote.js"></script>


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
		<div class="col-md-8 column">
				<div class="form-group">
					<label for="inputTitle" class="col-sm-2 control-label">牛皮标题</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"  id="inputTitle"  value="${article.title}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputAuthor" class="col-sm-2 control-label">牛皮出处</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputAuthor"  value="${article.author}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputfile" class="col-sm-2 control-label">上传图片</label>
					<div class="col-sm-10">
						<a id="modal-28050" href="#modal-container-28050" role="button" id="inputfile" data-toggle="modal">点击上传图片</a>
						<img  id="imagePath" src="<%=basePath%>" class="img-responsive" />
						<input type="hidden"  id="imageName"  value=""/>
						<input type="file"  name="file" id="xxx"  accept="image/gif,image/jpeg,image/x-ms-bmp,image/x-png,image/png"/>
					</div>
				</div>
				<div class="form-group">
					<label for="inputCreatetime" class="col-sm-2 control-label">吹牛时间</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"  id="inputCreatetime"  value="${article.createtime}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputCreatetime" class="col-sm-2 control-label">吹牛标签</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"  id="inputTag"  value="通过自动分析文章内容提取">
					</div>
				</div>
				<div class="form-group">
					<label for="abstract" class="col-sm-2 control-label">文章概要</label>
					<div class="col-sm-10">
						<textarea class="form-control"  id="abstractArt"  value=""></textarea >
					</div>
				</div>
				<div class="form-group">
					<label for="summernote" class="col-sm-2 control-label">原文链接</label>
					<div class="col-sm-10">
						<input type="text" class="form-control"  id="inputUrl"  value="${article.url}">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="button" class="publish_article btn btn-default">发布</button>
					</div>
				</div>
				
		</div>
		</div>
	</div>
</div>


<jsp:include page="../includes/uploadPic.jsp"></jsp:include>


</body>

</html>