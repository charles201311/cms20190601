package com.lisi.cms.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.lisi.cms.domain.Article;
import com.lisi.cms.domain.Comment;
import com.lisi.cms.domain.User;
import com.lisi.cms.service.ArticleService;
import com.lisi.cms.service.CategoryService;
import com.lisi.cms.service.ChannelService;
import com.lisi.cms.service.CommentService;
/**
 * 
 * @ClassName: ArticleController 
 * @Description: 文章
 * @author: charles
 * @date: 2019年5月23日 下午4:41:10
 */
@Controller
public class ArticleController {
	
	
	@Resource
	private ArticleService articleService;
	@Resource
	private ChannelService channelService;
	@Resource
	private CategoryService categoryService;
	
	@Resource
	private CommentService commentService;
	/**
	 * 根据分类获取文章
	 * @Title: getArticlListByCategorylId 
	 * @Description: TODO
	 * @param model
	 * @param cid
	 * @return
	 * @return: String
	 */
	@RequestMapping("/getArticlListByCategoryId")
	public String getArticlListByCategorylId(Model model,Integer cid) {
		List<Map> list = articleService.getArticlListByCategorylId(cid);
		model.addAttribute("list", list);
		return "main/articletitlelist";//跳转文章类别
	}

	
	
/*
	@RequestMapping("/getArticlListByChannelId")
	public String getArticlListByChannelId(Model model,Integer cid) {
		List<Map> list = articleService.getArticlListByChannelId(cid);
		model.addAttribute("list", list);
		return "main/categorylist";
	}*/
	
	
	//获取所有栏目
	@ResponseBody
	@RequestMapping("/getChannelList")
	public List<Map> getChannelList() {
	
		return  channelService.getChannelList();
	}
	
	//根据栏目ID获取所有分类
	@ResponseBody
	@RequestMapping("/getCategoryListByCid")
	public List<Map> getArticlListByCategoryId(Integer cid) {
	
		return  categoryService.getCateGoryListByCid(cid);
	}
	
	
	//保存发布文章
	@ResponseBody
	@RequestMapping("/addArticle")
	public boolean  add(String tagName, @RequestParam("file") MultipartFile file,Article article,
			
			HttpSession session) throws IllegalStateException, IOException {
		
		
		String path ="d:/pic/";//文件上传的保存路径
		if(!file.isEmpty()) {
			
			//a.jpg
			//获取原始上传的文件名称
		  String filename = file.getOriginalFilename();
		  //对文件名称重命名.为了防止文件名称重复
		  String newFileName =UUID.randomUUID()+filename.substring(filename.lastIndexOf("."));
			
		  File file2 = new File(path+newFileName);
		  //把文件写入硬盘
		  file.transferTo(file2);
		  //文件的路径
		  article.setPicture(newFileName);
		  
		}
		article.setStatus(0);//文章的默认状态为 0:即未审核
		//从session获取对象
		User user = (User) session.getAttribute("user");
		if(null!=user) {
		article.setUserId(user.getId());
		}
		return  articleService.insertSelective(article,tagName);
	}
	
	//前台-文章的具体信息
	@RequestMapping("/toDetail")
	public String toDetail(Integer id,Model model) {
		Map article = articleService.getArticleById(id);
		model.addAttribute("article", article);
		//查询出该文章评论明细
		List<Map> list = commentService.getListByArticleId(id);
		model.addAttribute("list", list);
		
		return "/main/article_detail";
	}
	
	//增加评论
	@ResponseBody
	@RequestMapping("addComment")
	public boolean addComment(Comment comment,HttpSession session) {
		//如果用户不能登录
		User user = (User) session.getAttribute("user");
		if(null==user) {
			return false;
		}
		//评论人
		comment.setUserId(user.getId());
		
		return commentService.insertSelective(comment)>0;
		
	}
	
	
	
	
	//后台审核-文章的具体信息
	@RequestMapping("/admin/toDetail")
	public String toDetail_admin(Integer id,Model model) {
		Map article = articleService.getArticleById(id);
		model.addAttribute("article", article);
		return "/admin/article_detail";
	}
	
	
	//文章后台管理--获取所有文章
	@RequestMapping("/article/getList")
	public String getList(@RequestParam(defaultValue="0")Integer status,Model model) {
		List<Map> list = articleService.getList(status);
		model.addAttribute("list", list);
		
		return "/admin/article_list";
	}
	
	
	
	//审核文章
	@ResponseBody
	@RequestMapping("/article/check")
	public boolean articleCheck(Article article) {
	
		return  articleService.updateByPrimaryKeySelective(article)>0;
	}
}
