package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Article;

public interface ArticleService {

	/**
	 * 按照状态查询所有文章
	 * 
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

	/**
	 * 增加文章,及文章的标签
	 * 
	 * @Title: insertSelective
	 * @Description: TODO
	 * @param record
	 * @param tagName
	 * @return
	 * @return: int
	 */
	boolean insertSelective(Article record, String tagName);

	int updateByPrimaryKeySelective(Article record);

	int updateByPrimaryKeyWithBLOBs(Article record);

	int updateByPrimaryKey(Article record);
}
