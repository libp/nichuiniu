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
//			this.initialization();
			this.page();
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
		/*分页功能*/
		page:function(){
			var curPage = parseInt($(".pagination").attr("curPage"));
			var totalPage = parseInt($(".pagination").attr("totalPage"));
			var pagenum = 5;
			if(curPage>totalPage){
				curPage=totalPage;
			}
			if(curPage<0){
				curPage=1;
			}
			var middlenum = Math.ceil(pagenum/2); 
			if(curPage<=middlenum||totalPage<pagenum){
				for(var i = 1;i<=pagenum&&i<=totalPage;i++){
					domLi= this.createLi(i,curPage);
					$(".pagination").append(domLi);
				}
			}else if(curPage+middlenum>totalPage){
				for(var i = 1;i<=pagenum&&i<=totalPage;i++){
					var j = totalPage-pagenum+i;
					domLi= this.createLi(j,curPage);
					$(".pagination").append(domLi);
				}
			}else{
				for(var i = 1;i<=pagenum;i++){
					var j = curPage-middlenum+i;
					domLi= this.createLi(j,curPage);
					$(".pagination").append(domLi);
				}
			}
			
				
		},
		createLi: function(i,curPage){
			var domA = $(document.createElement("a"));
			domA.attr("href", "storyList?page="+i);
			var domLi = $(document.createElement("li"));
			domLi.append(domA);
			domA.text(i);
			if(i==curPage){
				domLi.addClass("active");
			}
			return domLi
		}
}


		

