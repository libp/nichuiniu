package com.peng.service;

import java.util.Map;

import com.peng.common.GridBean;
import com.peng.entity.Article;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:23:10 
 * @version 1.0 
 * @return  
 */

public interface ArticleService {
	
	
	public Article selectByPrimaryKey(Integer id);
	
	
	/**
	 * 根据分页批量查询文章
	 * @param page
	 * @param rows
	 * @param map
	 * @return
	 */
	public GridBean getStoryList(int page, int rows,Map<String, String> map);
	
	public int updateArticltStauts(Integer id);
	
	public int updateArticltStauts2(Map<String, Integer> map);
	
	public String getWebNameById(Integer id);
	
}

