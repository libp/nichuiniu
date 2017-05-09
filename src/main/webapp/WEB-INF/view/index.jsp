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

<title>你吹牛</title>
</head>
<body>
<div class="container">
	<div class="row clearfix " style="margin-top:50px;">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-8 column">
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-8 column">
			<div class="chuiniu">
				<div class="chuiniu-1 clearfix">
		       		<div class="chuiniu-1-1">
		       			人类将在2050年开发家庭室核聚变发电站，每家每户都有用不完的清洁安全能源
		       		</div>
		       		<div class="chuiniu-1-2">
			       		<button type="button" class="btn btn-default btn-lg">
							<span class="glyphicon glyphicon-thumbs-up"></span>
						</button>
					</div>
		       	</div>
		       	<div class="chuiniu-2">
		       		<div class="chuiniu-2-1">
		       			<img alt="图片不显示时显示文字" class="img-rounded img-responsive" src="images/common/default.png" />
					</div>
		       		<div class="chuiniu-2-2">
		       			<ul  class="list-unstyled">
						<li>马斯卡</li><li>2017年5月6日</li>
						<li><a href="www.baidu.com">参考链接</a></li>
						</ul>
		       		</div>
				</div>
	   		</div>
					
				
		
		</div>			
	</div>
</div>

</body>

</html>