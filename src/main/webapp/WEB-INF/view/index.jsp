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
<link rel="stylesheet" href="${basePath }css/index.css" />
<link rel="stylesheet" href="${basePath }css/common/bootstrap.css" />
<script src="${basePath }js/common/jquery-3.1.0.min.js"></script>
<script src="${basePath }js/common/bootstrap.js"></script>
<script src="${basePath }js/index.js"></script>

<title>你吹牛</title>
</head>
<body>
<div class="container">
	<div class="row clearfix" style="margin-top:50px;">
		<div class="col-md-4 column">
		<p>${basePath } </p>
		</div>
		<div class="col-md-8 column">
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-8 column">
			<div class="row clearfix">
				<div class="col-md-8 column">
					<div class="panel-body">
			       		<h4>人类将在2050年开发家庭室核聚变发电站，每家每户都有用不完的清洁安全能源</h4>
			       		<small>马斯卡 <cite>超级核电站</cite></small>
			   		</div>
					<!-- <span class="label label-default">科技</span>
					<span class="label label-default">未来</span>
					<span class="label label-default">能源</span> -->
					<dl class="dl-horizontal">
						<dt>
							吹牛大王
						</dt>
						<dd>
							马斯卡
						</dd>
						<dt>
							吹牛日期
						</dt>
						<dd>
							2017年5月6日
						</dd>
						<dt>
							实现时间
						</dt>
						<dd>
							2050年
						</dd>
						<dt>
							牛皮出处
						</dt>
						<dd>
							美国之音
						</dd>
						<dt>
							消息来源
						</dt>
						<dd>
							www.voa.com/html/home/page/story/mask.html
						</dd>
					</dl>
				</div>
				<div class="col-md-4 column">
					<img alt="图片不显示时显示文字" class="img-rounded img-responsive" src="images/common/default.png" />
				</div>
			</div>
			
				
		</div>
		<div class="col-md-2 column">
		</div>			
	</div>
</div>

</body>

</html>