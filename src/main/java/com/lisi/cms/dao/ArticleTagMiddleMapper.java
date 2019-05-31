package com.lisi.cms.dao;

import com.lisi.cms.domain.ArticleTagMiddleKey;

public interface ArticleTagMiddleMapper {
    int deleteByPrimaryKey(ArticleTagMiddleKey key);

    int insert(ArticleTagMiddleKey record);

    int insertSelective(ArticleTagMiddleKey record);
}