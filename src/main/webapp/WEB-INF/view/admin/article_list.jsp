<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>文章列表</title>

</head>
<body>
	<div class="container">
		<div class="form-group">
			<select name="status">
				<option value="0">待审</option>
				<option value="1">已审</option>
				<option value="-1">未通过</option>
			</select>
			<button class="btn btn-success" type="button" onclick="query()">查询</button>
		</div>
		<table class="table table-bordered table-hover">
			<tr>
				<th>序号</th>
				<th>文章标题</th>
				<th>发布时间</th>
				<th>修改时间</th>
				<th>栏目</th>
				<th>分类</th>
				<th>作者</th>
				<th>当前状态</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${list}" var="c" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${c.title }</td>
					<td>${c.created}</td>
					<td>${c.updated}</td>
					<td>${c.cname }</td>
					<td>${c.catname }</td>
					<td>${c.username }</td>
					<td>${c.status==0?"待审":c.status==1?"已审":"未通过" }</td>
					<td><button class="btn btn-info" type="button"
							onclick="toDetail(${c.id})">查看详情</button></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="9">${pageInfo }</td>
			</tr>
		</table>

	</div>

	<script type="text/javascript">
	
	function query() {
		//在中间区域显示地址的内容
		 $('#content-wrapper').load("/article/getList?status="+$("[name='status']").val());
	}
	
	
		function toDetail(id) {
			//在中间区域显示地址的内容
			 $('#content-wrapper').load("/admin/toDetail?id="+ id); 
		}
		
	
		$(function(){
			
		 
	        $('.page-link').click(function (e) {
	        	  //获取点击的的url
	            var url = $(this).attr('data');
	           // console.log(url);
	           //在中间区域显示地址的内容
	            $('#content-wrapper').load(url);
	        });
		})
	</script>

</body>
</html>