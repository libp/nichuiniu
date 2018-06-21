/**
 * 页面加载后监听各种事件
 * ajax请求参数如何设置，返回结果如何读取
 */
$(function(){
//	$('#summernote').summernote();
	
	//TODO 上传文件可以用promise试试
	$(".uploadImages").click(function(){
		var formData = new FormData($("#uploadImages")[0]); 
		$.ajax({
		  type: 'POST',
		  url: 'uploadFile',
		  data: formData,
		  async: false,  
          cache: false,  
          contentType: false,  
          processData: false,
          dataType:'json',
		  success: function(result){
			  $("#imageName").val(result.picName);
			  let baseurl =  $("#imagePath")[0].src;
			  let url = baseurl+'images/upload/'+result.picName;
			  $("#imagePath").attr('src',url);
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
	
	$(".publish_article").click(function(){
		  var _this = this;
		  var title = $('#inputTitle').val();
		  var author = $('#inputAuthor').val();
		  var imageName = $('#imageName').val();
		  var inputCreatetime = $('#inputCreatetime').val();
		  var inputTag = $('#inputTag').val();
		  var abstractArt = $('#abstractArt').val();
		  var inputUrl = $('#inputUrl').val();
		  
		  $.ajax({
			  type: 'POST',
			  url: 'saveEdit',
			  data: {"title":title,"author":author,"imageName":imageName,"inputCreatetime":inputCreatetime,"inputTag":inputTag,"abstractArt":abstractArt,"inputUrl":inputUrl},
			  dataType: 'json',
			  success: function(result) {
				  console.info(result.result);
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

	

