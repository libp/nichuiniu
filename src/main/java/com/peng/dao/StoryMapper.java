package com.peng.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.peng.entity.Story;
@Repository
public interface StoryMapper {
    public int deleteByPrimaryKey(Integer id);

    public int insert(Story record);

    public int insertSelective(Story record);

    /**
     * 根据ID获取牛皮
     */
    public Story selectByPrimaryKey(int id);
    
    /**
     * 根据Num 编号获取牛皮
     */
    public Story getStoryByNum(String num);

    public int updateByPrimaryKeySelective(Story record);

    public int updateByPrimaryKey(Story record);
    
    /**
     * 获取所有牛皮
     */
    public List<Story> getStoryList(Map<String,String> map);
    
    public int thumbsUp(Map<String,Integer> map);
}