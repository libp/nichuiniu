package com.peng.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;















import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		logger.info("系统开始运行........................");
		ModelAndView view = new ModelAndView("index");
		String basePath = request.getScheme() + "://" + request.getServerName() + ":"
                + request.getServerPort() + request.getContextPath() + "/";
		request.setAttribute("basePath", basePath);
		Map<String, String> map = new HashMap<String, String>();
		int page = 1;
		int rows = 12;
		GridBean gridBean = storyService.getStoryList(page, rows, map);
		String result = JSONArray.toJSONString(gridBean);
		Story story = storyService.getStoryById(1);
		
		return view;
	}
}

