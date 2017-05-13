package com.peng.service;

import java.util.List;

import com.peng.entity.Story;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:23:10 
 * @version 1.0 
 * @return  
 */

public interface StoryService {
	/**
	 * 获取牛皮内容
	 */
	public List<Story> getStoryContent();
	
	public Story getStoryById(int id);
}

