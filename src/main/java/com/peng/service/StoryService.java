package com.peng.service;

import java.util.List;
import java.util.Map;

import com.peng.common.GridBean;
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
	
	/**
	 * 根据Id查询牛皮
	 * @param id
	 * @return
	 */
	public Story getStoryById(int id);
	
	/**
	 * 根据分页批量查询牛皮
	 * @param page
	 * @param rows
	 * @param map
	 * @return
	 */
	public GridBean getStoryList(int page, int rows,Map<String, String> map);
	
	/**
	 * 点赞
	 * @param id
	 * @return
	 */
	public int thumbsUp(Map<String, Integer> map);
}

