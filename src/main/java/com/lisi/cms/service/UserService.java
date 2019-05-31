package com.lisi.cms.service;

import java.util.List;
import java.util.Map;

import com.lisi.cms.domain.User;

public interface UserService {
	
	/**
	 * 
	 * @Title: getById 
	 * @Description: 根据Id返回用户对象
	 * @param id
	 * @return
	 * @return: Map
	 */
	Map getById(Integer id);
	
	//注册
	int insertSelective(User record);
 /**
    
     * @Title: selectListByName 
     * @Description: * 按照名称模糊查询,验证用户是否存在
     * @param name
     * @return
     * @return: List<Map>
     */
    List<Map> selectListByName(String name);


    /**
     * 
     * @Title: getUser 
     * @Description: 登录
     * @param name
     * @return
     * @return: User
     */
    User getUser(String name);
    
    
    
    
    /**
     * 
     * @Title: updateByPrimaryKeySelective 
     * @Description: 如果User 的locked是1:则为禁用. 0:表示启用
     * @param record
     * @return
     * @return: int
     */
    int updateByPrimaryKeySelective(User record);
    /**
     * 
     * @Title: selectByPrimaryKey 
     * @Description: TODO
     * @param id
     * @return
     * @return: User
     */
    User selectByPrimaryKey(Integer id);

}
