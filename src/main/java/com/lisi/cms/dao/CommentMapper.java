package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKeyWithBLOBs(Comment record);

    int updateByPrimaryKey(Comment record);
    /**
     * 
     * @Title: getListByArticleId 
     * @Description: 根据文章ID 获取评论列表
     * @param articleId
     * @return
     * @return: List<Map>
     */
    List<Map> getListByArticleId(Integer articleId);
    
}