package com.lisi.cms.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lisi.cms.domain.User;

/**
 * 
 * @ClassName: UserMapper
 * @Description: 维护用户基本信息
 * @author: charles
 * @date: 2019年5月20日 下午3:18:52
 */
public interface UserMapper {
	/**
	 * 
	 * @Title: selectListByName
	 * @Description: * 按照名称模糊查询
	 * @param name
	 * @return
	 * @return: List<Map>
	 */
	List<Map> selectListByName(@Param("username") String username);

	/**
	 * 
	 * @Title: updateByPrimaryKeySelective
	 * @Description: 如果User 的locked是1:则为禁用. 0:表示启用
	 * @param record
	 * @return
	 * @return: int
	 */
	int updateByPrimaryKeySelective(User record);

	int deleteByPrimaryKey(Integer id);

	/**
	 * 
	 * @Title: insert
	 * @Description: 增加用户或注册用户
	 * @param record
	 * @return
	 * @return: int
	 */
	int insert(User record);

	/**
	 * 
	 * @Title: getUser
	 * @Description: 登录
	 * @param name
	 * @return
	 * @return: User
	 */
	User getUser(String name);

	int insertSelective(User record);

	User selectByPrimaryKey(Integer id);

	int updateByPrimaryKey(User record);
    
	Map getById(Integer id);
}