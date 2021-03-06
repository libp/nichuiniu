package com.peng.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;























import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.peng.common.GridBean;
import com.peng.entity.Article;
import com.peng.entity.Story;
import com.peng.service.ArticleService;
import com.peng.service.StoryService;




/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:31:54 
 * @version 1.0 
 * @return  
 */
@Controller
public class CheckArticleController {
	
	Logger logger = Logger.getLogger(CheckArticleController.class);
	
	@Resource
    private ArticleService articleService;
	
	@Resource
	private StoryService storyService;
	
	
	
	@RequestMapping(value = "/checkArticle", method = { RequestMethod.GET })
    @ResponseBody
    public ModelAndView mainPage(HttpServletRequest request,
             @RequestParam(value = "page", required = false) Integer page) {
		logger.info("loading no check article list........................");
		ModelAndView view = new ModelAndView("checkArticle");
		Map<String, String> map = new HashMap<String, String>();
		int rows = 50;
		if( page == null || "".equals(page) || page < 1 ){
			page=1;
		}
		
		GridBean gridBean = articleService.getStoryList(page, rows, map);
		if(page>gridBean.getTotal()){
			page=gridBean.getTotal();
			gridBean = articleService.getStoryList(page, rows, map);
		}
		view.addObject("gridBean", gridBean);
        return view;
    }
	
	/**
	 * 文章审核通过入库
	 * @param request
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/rightStory")
	@ResponseBody
	public String ok(HttpServletRequest request,
			@RequestParam(value = "articleId",required = true) String articleId
			){
		Map<String, String> map = new HashMap<String, String>();
		int id = Integer.parseInt(articleId);
		Article article = articleService.selectByPrimaryKey(id);
		int update = articleService.updateArticltStauts(id);
		if(update>0) {
			logger.info("article has update isuse to 1 article id is"+id);
		}
		
		Story story = new Story();
		if(article!=null){
			String currtentTime = String.valueOf(System.currentTimeMillis());
			story.setTitle(article.getTitle());
			story.setContent(article.getContent());
			story.setNum(currtentTime);
			story.setAuthor(article.getAuthor());
			story.setCreatetime(changeTimeFormate(article.getCreatetime()));
			//TODO 实现时间先空着
//			story.setRealizetime("");
			story.setOriginplace(article.getWebname());
			story.setSource(0);  //0表示爬虫采集
			story.setUrl("article/"+currtentTime);
		}
		int result = storyService.insertSelective(story);
		if(result>0){
			logger.info("article has inserto into story table ,article id is "+id);
			map.put("result","success");
			return com.alibaba.fastjson.JSONArray.toJSONString(map);
		}else{
			logger.info("article into default ,article id is "+id);
			return null;
		}
		
	}
	
	/**
	 * 不符合要求 删除该文章（实际是改变文章在后台的显示状态）
	 * @param request
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/deleteStory")
	@ResponseBody
	public String delete(HttpServletRequest request,
			@RequestParam(value = "articleId",required = true) String articleId
			){
		int id = Integer.parseInt(articleId);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("Id", id);
		map.put("IsUse", 2);
		int update = articleService.updateArticltStauts2(map);
		 
		if(update>0){
			Map<String, String> map2 = new HashMap<String, String>();
			map2.put("result","success");
			logger.info("article has change isuse to 2(not suitable) article id is "+id);
			return com.alibaba.fastjson.JSONArray.toJSONString(map2);
		}else{
			return null;
		}
		
	}
	
	/**
	 * 编辑文章
	 * @param request
	 * @param num
	 * @return
	 */
	@RequestMapping("/editArticle/{num}")
	@ResponseBody
	public ModelAndView editArticle(HttpServletRequest request,
			@PathVariable(value = "num") String num
			){
		ModelAndView view = new ModelAndView("editArticle");
		int id = Integer.parseInt(num);
		Article article = articleService.selectByPrimaryKey(id);
		view.addObject("article",article);
		logger.info("edit article id is "+id);
		
		return view;
	}
	
	/**
	 * 保存修改，并发布文章
	 * @param request
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/editArticle/saveEdit")
	@ResponseBody
	public String saveEidt(HttpServletRequest request,
			@RequestParam(value = "title",required = true) String inputTitle,
			@RequestParam(value = "author",required = true) String inputAuthor,
			@RequestParam(value = "imageName",required = true) String imageName,
			@RequestParam(value = "inputCreatetime",required = true) String inputCreatetime,
			@RequestParam(value = "inputTag",required = true) String inputTag,
			@RequestParam(value = "abstractArt",required = true) String abstractArt,
			@RequestParam(value = "inputUrl",required = true) String inputUrl
			){
		Map<String, String> map = new HashMap<String, String>();
		int update = articleService.updateArticltStauts(1111);
		String webname = articleService.getWebNameById(211);
		if(update>0) {
			logger.info("article has update isuse to 1 article id is"+1111);
		}
		
		Story story = new Story();
		String currtentTime = String.valueOf(System.currentTimeMillis());
		story.setTitle(inputTitle);
		story.setContent(abstractArt);
		story.setNum(currtentTime);
		story.setAuthor(inputAuthor);
		//TODO  时间精细到分秒，方便排序
		story.setCreatetime(changeTimeFormate(inputCreatetime));
		story.setOriginplace(webname);
		story.setSource(0);  //0表示爬虫采集
		story.setUrl("article/"+currtentTime);
		int result = storyService.insertSelective(story);
		if(result>0){
			logger.info("article has inserto into story table ,article id is "+111);
			map.put("result","success");
			return com.alibaba.fastjson.JSONArray.toJSONString(map);
		}else{
			logger.info("article into default ,article id is "+111);
			return null;
		}
	}
	
	public String changeTimeFormate(String time){
		DateFormat format1 = new SimpleDateFormat("yyyy年MM月dd日");      
		Date date = null;    
		try {    
           date = format1.parse(time);   
		} catch (ParseException e) {    
           e.printStackTrace();    
		} 
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		return formatter.format(date);
	}
	
	
	
}

