package com.peng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.peng.common.GridBean;
import com.peng.dao.StoryMapper;
import com.peng.entity.Story;
import com.peng.service.StoryService;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:24:05 
 * @version 1.0 
 * @return  
 */

@Component
public class StoryServiceImpl implements StoryService{
	
	@Resource
	private StoryMapper storyMapper;
	
	@Override
	public List<Story> getStoryContent() {
		// TODO Auto-generated method stub
		return null;
		
	}
	
	public Story getStoryById(int id){
		Story story = storyMapper.selectByPrimaryKey(id);
		return story;
	}

	@Override
	public GridBean getStoryList(int page, int rows, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<Story> list = null;
		GridBean gridBean = null;
		//pageHelper分页拦截器 紧跟在这个方法后的第一个mybatis查询会被进行分页
		PageHelper.startPage(page, rows);
		list = storyMapper.getStoryList(map);
		int totalpage = ((Page<?>) list).getPages();
		Long totalNum = ((Page<?>) list).getTotal();
		gridBean = new GridBean(page, totalpage, totalNum.intValue(), list);
		return gridBean;
	}

	@Override
	public int thumbsUp(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		int result = storyMapper.thumbsUp(map);
		return result;
	}

	@Override
	public int insertSelective(Story story) {
		// TODO Auto-generated method stub
		int result = storyMapper.insertSelective(story);
		return result;
	}

	@Override
	public Story getStoryByNum(String Num) {
		// TODO Auto-generated method stub
		Story story = storyMapper.getStoryByNum(Num);
		return story;
	}

}

