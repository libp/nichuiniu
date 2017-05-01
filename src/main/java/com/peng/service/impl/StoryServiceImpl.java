package com.peng.service.impl;

import javax.annotation.Resource;

import com.peng.dao.StoryMapper;
import com.peng.service.StoryService;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:24:05 
 * @version 1.0 
 * @return  
 */

public class StoryServiceImpl implements StoryService{
	
	@Resource
	private StoryMapper storyMapper;
	
	@Override
	public String getStoryContent(int id) {
		// TODO Auto-generated method stub
		String content = storyMapper.getStoryContent(id);
		return content;
		
	}

}

