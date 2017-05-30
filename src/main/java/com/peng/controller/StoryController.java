package com.peng.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;















import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
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
		logger.info("systemt begin run........................");
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
             @RequestParam(value = "page", required = true) Integer page) {
		logger.info("loading article list........................");
		ModelAndView view = new ModelAndView("index");
		Map<String, String> map = new HashMap<String, String>();
		int rows = 10;
		if(page<1){
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
	
}

