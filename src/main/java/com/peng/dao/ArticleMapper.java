package com.peng.dao;

import java.util.List;
import java.util.Map;

import com.peng.entity.Article;

public interface ArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    
    /**
     * 更新文章状态为符合要求
     * @param id
     * @return
     */
    public int updateArticltStauts(Integer id);
    
    public int updateArticltStauts2(Map<String, Integer> map);
    
    /**
     * 获取所有文章
     */
    public List<Article> getStoryList(Map<String,String> map);
    
    public String getWebNameById(Integer id);
    
}