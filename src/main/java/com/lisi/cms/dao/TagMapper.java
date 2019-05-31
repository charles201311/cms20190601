package com.lisi.cms.dao;

import com.lisi.cms.domain.Tag;

public interface TagMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
    //查询是否有指定的标签
    Integer selectCount(String tagname);
}