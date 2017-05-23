/**
 * 
 */
var nichuiniu = {
		init: function(localhost){
			this.baseUrl = localhost;
			this.options = {
					test : '#test',
				}
				this.action = {
					queryStoryList : nichuiniu.baseUrl + 'storyList',
				}
			this.initialization();
			
		},
		initialization: function(){
			var _this = this;
			$.ajax({
				type : 'get',
				url : _this.action.queryStoryList,
				dataType : 'json',
				success : function(result) {
					var listall = "";
					for(var i = 0; i < result.rows.length; i++){
						var obj = result.rows[i];
						lista = "<div class=\"chuiniu\"><div class=\"chuiniu-1 clearfix\"><div class=\"chuiniu-1-1\"><p><a href=\""+obj.url+"\">"
							+obj.title+"</a></p></div><div class=\"chuiniu-1-2\"><button type=\"button\" class=\"btn btn-default btn-lg\">"
							+"<span class=\"glyphicon glyphicon-thumbs-up\"></span>&nbsp;<span class=\"badge\">"+obj.agreetime+"</button></div></div>"
							+"<div class=\"chuiniu-2\"><div class=\"chuiniu-2-2\"><ul class=\"list-inline\"><li>"+obj.author+"</li><li>"
							+obj.createtime+"</li></ul></div></div></div>";
						listall+=lista;
						}
					$("#content").html(listall);
				   }
			});
		},
}


/*分页功能*/
var page = {
		init: function(page,total,records,size){
			var pageList = "";
			var currentPage = "1";
			pageList = "<li><a href="storyList?page=1">首页</a></li><li><a href=\"+storyList?page=2+\"><<</a></li>";
			if(i < total){
				pageList = pageList+"<li><a href="storyList?page=i">i</a></li>"
			}
			pageList = pageList+"<li><a href="storyList?page=currentPage+1)+\">>></a></li><li><a href=\"+storyList?page=total+\">尾页</a></li>";
			$("#pagination").html(pageList);
			
			
			this.options = {
					xxxx : '#pagenum',
				}
			this.action = {
				queryStoryList : nichuiniu.baseUrl + 'storyList',
			}
			
		},
}

