package com.lisi.cms.dao;

import com.lisi.cms.domain.BlogTag;

public interface BlogTagMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(BlogTag record);

    int insertSelective(BlogTag record);
    //自定义的插入
    int insertTname (String tname);

    BlogTag selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(BlogTag record);

    int updateByPrimaryKey(BlogTag record);
}