<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
%>
<div class="modal fade" id="modal-container-28050" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">上传图片</h4>
			</div>
			<div class="modal-body">
				<form  id="uploadImages" method="post"  class="form-horizontal" enctype="multipart/form-data">
					<div class="form-group">
						<input type="file"  name="file" id="xxx"  accept="image/gif,image/jpeg,image/x-ms-bmp,image/x-png,image/png"/>
						<button type="button" class="btn btn-default uploadImages">上传</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">保存</button>
			</div>
		</div>

	</div>

</div>