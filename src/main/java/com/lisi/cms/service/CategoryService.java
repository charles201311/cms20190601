package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

public interface CategoryService {


	/**
	 * 
	 * @Title: getCateGoryListByCid 
	 * @Description: 根据栏目ID 查询该栏目下所有分类信息
	 * @param cid
	 * @return
	 * @return: List<Map>
	 */
	List<Map> getCateGoryListByCid(Integer cid);
}
