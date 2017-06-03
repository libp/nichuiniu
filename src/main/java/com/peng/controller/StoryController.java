package com.peng.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
















import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.peng.common.GridBean;
import com.peng.entity.Story;
import com.peng.service.StoryService;




/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:31:54 
 * @version 1.0 
 * @return  
 */
@Controller
public class StoryController {
	
	Logger logger = Logger.getLogger(StoryController.class);
	
	@Resource
    private StoryService storyService;
	
	@RequestMapping("/")
	public ModelAndView mainPage(HttpServletRequest request,HttpServletResponse response) {
		logger.info("request index page........................");
		ModelAndView view = new ModelAndView("index");
		Map<String, String> map = new HashMap<String, String>();
		int page = 1;
		int rows = 10;
		GridBean gridBean = storyService.getStoryList(page, rows, map);
		view.addObject("gridBean", gridBean);
		return view;
	}
	
	@RequestMapping(value = "/storyList", method = { RequestMethod.GET })
    @ResponseBody
    public ModelAndView mainPage(HttpServletRequest request,
             @RequestParam(value = "page", required = false) Integer page) {
		logger.info("loading article list........................");
		ModelAndView view = new ModelAndView("index");
		Map<String, String> map = new HashMap<String, String>();
		int rows = 10;
		if( page == null || "".equals(page) || page < 1 ){
			page=1;
		}
		
		GridBean gridBean = storyService.getStoryList(page, rows, map);
		if(page>gridBean.getTotal()){
			page=gridBean.getTotal();
			gridBean = storyService.getStoryList(page, rows, map);
		}
		view.addObject("gridBean", gridBean);
        return view;
    }
	
	
	@RequestMapping("/article/{articleId}")
	public ModelAndView article(HttpServletRequest request,
			@PathVariable String articleId,HttpServletResponse response) {
		logger.info("loading article content........................");
		ModelAndView view = new ModelAndView("article");
		int t = Integer.parseInt(articleId);
		Story story = storyService.getStoryById(t);
		view.addObject("story", story);
		return view;
	}
	
	
	/**
	 * 点赞不做权限控制，谁都能点，次数也不限制
	 * @param request
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/thumbsUp")
	@ResponseBody
	public String thumbsUp(HttpServletRequest request,
			@RequestParam(value = "articleId",required = true) String articleId,
			@RequestParam(value = "agreetime",required = true) String agreetime){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("id", Integer.parseInt(articleId));
		map.put("agreetime", Integer.parseInt(agreetime)+1);
		int result = storyService.thumbsUp(map);
		if(result>0){
			logger.info("thumbsUp success . articleId="+articleId);
			return com.alibaba.fastjson.JSONArray.toJSONString(map);
		}else{
			logger.info("thumbsUp failure");
			map.put("agreetime", Integer.parseInt(agreetime));
			return com.alibaba.fastjson.JSONArray.toJSONString(map);
		}
	}
	
}

