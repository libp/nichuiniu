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
					queryStoryList : nichuiniu.baseUrl + 'article/10',
				}
//			this.initialization();
			this.page();
		},
		initialization: function(){
			var _this = this;
			
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
			/*首页*/
			domLi= this.createLi("index",curPage);
			$(".pagination").append(domLi);
			if(curPage>1){
				domLi= this.createLi("lastPage",curPage-1);
				$(".pagination").append(domLi);
			}
			
			/*中间页*/
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
			/*尾页*/
			if(curPage<totalPage){
				domLi= this.createLi("nextPage",curPage+1);
				$(".pagination").append(domLi);
			}
			domLi= this.createLi("end",totalPage);
			$(".pagination").append(domLi);
				
		},
		createLi: function(i,curPage){
			var domA = $(document.createElement("a"));
			var domLi = $(document.createElement("li"));
			domLi.append(domA);
			if(i=="index"){
				domA.text("首页");
				domA.attr("href", "storyList?page="+1);
				return domLi
			}
			if(i=="lastPage"){
				domA.text("上一页");
				if(curPage>0){
					domA.attr("href", "storyList?page="+curPage);
				}else{
					return null;
				}
				
				return domLi
			}
			if(i=="nextPage"){
				domA.text("下一页");
				if(curPage>0){
					domA.attr("href", "storyList?page="+curPage);
				}else{
					return null;
				}
				
				return domLi
			}
			if(i=="end"){
				domA.text("尾页");
				domA.attr("href", "storyList?page="+curPage);
				return domLi
			}
			domA.text(i);
			domA.attr("href", "storyList?page="+i);
			if(i==curPage){
				domLi.addClass("active");
			}
			return domLi
		},
};
/**
 * 页面加载后监听各种事件
 * ajax请求参数如何设置，返回结果如何读取
 */
$(function(){
	  $(".agree").click(function(){
		  var _this = this;
		  var id = parseInt($(_this).attr("id"));
		  var agreetime = parseInt($(_this).attr("agreetime"));
		  if( id == null || ""==id){
			  id = "1";
		  }
		  if( agreetime == null || ""==agreetime){
			  agreetime = "0";
		  }
		  $.ajax({
			  type: 'POST',
			  url: 'thumbsUp',
			  data: {articleId:id,agreetime:agreetime},
			  dataType: 'json',
			  success: function(result) {
				  console.log(agreetime);
				  $(_this).children(".badge").text(result.agreetime);
				  $(_this).attr("disabled","disabled");
				  $(_this).attr("title","已赞");
			  }
			});
	  });
	});
