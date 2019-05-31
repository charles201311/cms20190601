package com.lisi.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("my")
@Controller
public class MyController {
	
	@RequestMapping({"index","/",""})
	public String toIndex() {
		return "my/index";
	}
	//跳转到文件发布页面
    @RequestMapping("toPublish")
	public String toPublish() {
    	
    	return "/my/article_publish";
		
	}
	
}
