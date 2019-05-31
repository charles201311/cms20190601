package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Article;

public interface ArticleMapper {
	
	/**
	 * 按照状态查询所有文章
	 * @Title: getList 
	 * @Description: TODO
	 * @param status
	 * @return
	 * @return: List<Map>
	 */
	List<Map> getList(Integer status);
	
	
	/**
	 * 
	 * @Title: getArticlListByChannelId 
	 * @Description: 按照频道id查询 文章列表
	 * @param cid
	 * @return
	 * @return: List<Map>
	 */
	List<Map> getArticlListByChannelId(Integer cid);
	
	/**
	 * 
	 * @Title: getArticlListByChannelId 
	 * @Description: 按照分类id查询 文章列表
	 * @param cid
	 * @return
	 * @return: List<Map>
	 */
	List<Map> getArticlListByCategorylId(Integer cid);
	/**
	 * 
	 * @Title: selectByPrimaryKey 
	 * @Description: 根据文章ID查询文章明细
	 * @param id
	 * @return
	 * @return: Article
	 */
	
	  Article selectByPrimaryKey(Integer id);
	  Map getArticleById(Integer id);
	
    int deleteByPrimaryKey(Integer id);

    int insert(Article record);

    int insertSelective(Article record);


    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}