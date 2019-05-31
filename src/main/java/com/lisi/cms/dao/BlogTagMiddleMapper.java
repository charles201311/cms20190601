package com.lisi.cms.dao;

import com.lisi.cms.domain.BlogTagMiddleKey;

public interface BlogTagMiddleMapper {
    int deleteByPrimaryKey(BlogTagMiddleKey key);
    //按照文章ID删除
    int deleteByBid(Integer bid);
    int insert(BlogTagMiddleKey record);

    int insertSelective(BlogTagMiddleKey record);
}