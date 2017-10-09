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
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script src="http://lib.sinaapp.com/js/jquery/3.1.0/jquery-3.1.0.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="<%=basePath%>js/admin.js"></script>

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

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
			       		<button type="button" class="btn btn-info btn-sm active agree ok" num="${items.id}">
							<span class="glyphicon glyphicon-ok"></span>
						</button>
						<button type="button" class="btn btn-danger btn-sm active  delete" num="${items.id}">
							<span class="glyphicon glyphicon-remove"></span>
						</button>
						<button type="button" class="btn btn-warning btn-sm active edit" num="${items.id}" data-toggle="modal" data-target="#modal-container-598106">
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