package com.peng.dao;

import java.awt.Stroke;
import java.util.List;
import java.util.Map;

import com.peng.entity.Story;

public interface StoryMapper {
    public int deleteByPrimaryKey(Integer id);

    public int insert(Story record);

    public int insertSelective(Story record);

    /**
     * 根据ID获取牛皮
     */
    public Story selectByPrimaryKey(int id);

    public int updateByPrimaryKeySelective(Story record);

    public int updateByPrimaryKey(Story record);
    
    /**
     * 获取所有牛皮
     */
    public List<Story> getStoryList(Map<String,String> map);
}