package com.lisi.cms.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lisi.cms.service.ArticleService;
import com.lisi.cms.service.CategoryService;
import com.lisi.cms.service.ChannelService;

@Controller
public class CategoryController {
	
	@Resource
	private CategoryService categoryService;
	@Resource
	private ArticleService articleService;
	
	
	//根据栏目ID 获取其下所有分类.并且获取该栏目的下所有文章
	@RequestMapping("/getCategoryList")
	public String getCategoryList(Model model,Integer cid) {
		//获取分类
		List<Map> list = categoryService.getCateGoryListByCid(cid);
		model.addAttribute("list", list);
		//获取文章
		List<Map> list2 = articleService.getArticlListByChannelId(cid);
		model.addAttribute("articleList", list2);
		
		
		
		return "main/categorylist";
	}

}
