package com.peng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.peng.common.GridBean;
import com.peng.dao.ArticleMapper;
import com.peng.entity.Article;
import com.peng.service.ArticleService;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:24:05 
 * @version 1.0 
 * @return  
 */

@Component
public class ArticleServiceImpl implements ArticleService{
	
	@Resource
	private ArticleMapper articleMapper;
	

	@Override
	public GridBean getStoryList(int page, int rows, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<Article> list = null;
		GridBean gridBean = null;
		//pageHelper分页拦截器 紧跟在这个方法后的第一个mybatis查询会被进行分页
		PageHelper.startPage(page, rows);
		list = articleMapper.getStoryList(map);
		int totalpage = ((Page<?>) list).getPages();
		Long totalNum = ((Page<?>) list).getTotal();
		gridBean = new GridBean(page, totalpage, totalNum.intValue(), list);
		return gridBean;
	}


	@Override
	public Article selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		
		Article a = articleMapper.selectByPrimaryKey(id);
		
		return a;
	}


	@Override
	public int updateArticltStauts(Integer id) {
		// TODO Auto-generated method stub
		return articleMapper.updateArticltStauts(id);
	}
	
	@Override
	public int updateArticltStauts2(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return articleMapper.updateArticltStauts2(map);
	}


	@Override
	public String getWebNameById(Integer id) {
		// TODO Auto-generated method stub
		return articleMapper.getWebNameById(id);
	}

}

