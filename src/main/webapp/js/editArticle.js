/**
 * 
 */
var editArticle = {
		init: function(localhost){
			this.baseUrl = localhost;
			this.options = {
					test : '#test',
				}
				this.action = {
					queryStoryList : editArticle.baseUrl + 'article/10',
				}
//			this.initialization();
		},
		initialization: function(){
			var _this = this;
			
		},
};
/**
 * 页面加载后监听各种事件
 * ajax请求参数如何设置，返回结果如何读取
 */
$(function(){
	$('#summernote').summernote();
	  
	$(".uploadImages").click(function(){
		var formData = new FormData($( "#uploadImages" )[0]); 
		console.log(formData);
		$.ajax({
		  type: 'POST',
		  url: 'uploadFile',
		  data: formData,
		  dateType:'JSON',
		  async: false,  
          cache: false,  
          contentType: false,  
          processData: false,
		  success: function(result){
			  console.info("upload success"+result);
		  },
		  error: function(XMLHttpRequest, textStatus, errorThrown) {
			  console.info(XMLHttpRequest.status);
			  console.info(XMLHttpRequest.readyState);
			  console.info(textStatus);
		  },
		  complete: function(XMLHttpRequest, textStatus) {
			  this; // 调用本次AJAX请求时传递的options参数
		  }
		});
	  });
	

});

	
function saveReport() { 
	// jquery 表单提交 
	$("#showDataForm").ajaxSubmit(function(message) { 
	// 对于表单提交成功后处理，message为提交页面saveReport.htm的返回内容 
	}); 

	return false; // 必须返回false，否则表单会自己再做一次提交操作，并且页面跳转 
	} 

