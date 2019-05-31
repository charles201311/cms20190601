package com.lisi.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @ClassName: AdminController 
 * @Description: 后台主页面进入控制
 * @author: charles
 * @date: 2019年5月23日 下午4:40:51
 */
@RequestMapping("admin")
@Controller
public class AdminController {

	
	@RequestMapping({"index","/",""})
	public String toIndex() {
		return "admin/index";
	}
}
