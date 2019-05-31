package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.Category;

public interface CategoryMapper {
	/**
	 * 
	 * @Title: getCateGoryListByCid 
	 * @Description: 根据栏目ID 查询该栏目下所有分类信息
	 * @param cid
	 * @return
	 * @return: List<Map>
	 */
	List<Map> getCateGoryListByCid(Integer cid);
	
	
    int deleteByPrimaryKey(Integer id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
    
    
}