package com.peng.dao;

import com.peng.entity.Story;

public interface StoryMapper {
    public int deleteByPrimaryKey(Integer id);

    public int insert(Story record);

    public int insertSelective(Story record);

    public Story selectByPrimaryKey(int id);

    public int updateByPrimaryKeySelective(Story record);

    public int updateByPrimaryKey(Story record);
}