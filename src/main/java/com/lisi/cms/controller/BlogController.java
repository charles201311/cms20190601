package com.lisi.cms.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lisi.cms.domain.Blog;
import com.lisi.cms.service.BlogService;

@RequestMapping("blog")
@Controller
public class BlogController {

	@Resource
	private  BlogService  blogService;
	
	//跳转的增加博客页面
	@RequestMapping("toBlog")
	public String toIndex() {
		return "my/blog";
	}
	
	
	//发布博客
	
	@ResponseBody
	@RequestMapping("add")
	public boolean add(Blog blog,String[] tagName) {
		
		return	blogService.addBlog(blog, tagName);
		
	}
	
	//博文列表
	
	@RequestMapping("toList")
	public String toList(Model model) {
		
		List<Map> list = blogService.getList();
		model.addAttribute("list", list);
		return	"my/blog_list";
		
	}
	
	//查看文章的明细
	@RequestMapping("toDetail")
	public String toDetail(Integer id,Model model) {
		Blog blog = blogService.selectByPrimaryKey(id);
		model.addAttribute("blog", blog);
		
		return "my/blog_detail";//
	}
	
	//跳转到修改页面
	@RequestMapping("toUpdate")
	public String toUpdate(Integer id,Model model) {
		Blog blog = blogService.selectByPrimaryKey(id);
		model.addAttribute("blog", blog);
		
		return "my/blog_update";//
	}
	
	
	//执行修改
	   @ResponseBody
		@RequestMapping("update")
		public boolean update(Blog blog) {
			return blogService.updateByPrimaryKeyWithBLOBs(blog)>0;
		}
		
	
	//删除
		@RequestMapping("toDeleteById")
		public String toDeleteById(Integer id,Model model) {
			//先删除
			blogService.deleteByPrimaryKey(id);
			//在查询
			List<Map> list = blogService.getList();
			model.addAttribute("list", list);
			
			return "my/blog_list";
		}
	
	//跳转到发布成功页面
		@RequestMapping("toSuccess")
		public String success() {
			return	"/my/blog_success";
		}
}
