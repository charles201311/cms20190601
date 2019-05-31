package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Comment;

public interface CommentService {
	
	//增加评论
	
	  int insertSelective(Comment record);

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
