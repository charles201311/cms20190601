<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1">

<title>用户列表</title>

</head>
<body>
	<div class="container-fluid">
		<div class="form-group">
			<label for="username">用户名</label> <input type="text"
				class="input-mini" name="username" value="${name }"
				id="username" placeholder="输入查询条件">
			<button class="btn btn-success" type="button" onclick="query()">查询</button>
		<button class="btn btn-success" type="button" onclick="toAdd()">增加</button>
		
		</div>
		<table class="table table-bordered table-hover">
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>生日</th>
				<th>昵称</th>
				<th>是否禁用</th>
				<th>注册时间</th>
				<th>修改时间</th>
				<th>url</th>
				<th>分数</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${list}" var="c" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${c.username }</td>
					<td>${c.gender==1?"男":"女" }</td>
					<td>${c.birthday }</td>
					<td>${c.nickname }</td>
					<td><button class="btn btn-info" type="button" onclick="update(${c.id},this)">${c.locked==1?"正常":"禁用" }</button></td>
					<td>${c.create_time }</td>
					<td>${c.update_time }</td>
					<td><a href="javascript:mopen('${c.url }')">${c.url }</a></td>
					<td>${c.score }</td>
					<td><button class="btn btn-info" onclick="toUpdate(${c.id})">修改</button><button class="btn btn-info" onclick="deleteById(${c.id})">删除</button></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="11">${pageInfo }</td>
			</tr> 
		</table>

	</div>

	<script type="text/javascript">
	//去增加
	function toAdd(){
			 $('#content-wrapper').load("/toAdd")
	}
	
	//去修改
	function toUpdate(id){
		 $('#content-wrapper').load("/toUpdate?id="+id)
		
	}
	//打开博客网站
	function mopen(url){
		window.open(url,'_blank');
	}
	
		function query() {
			var username = $("[name='username']").val();
		//	location.href="/getUserList";
			//在中间区域显示地址的内容
			 $('#content-wrapper').load("/getUserList?name="+ username); 
		}
		
		//更新用户 -启用或停用
		function update(id,obj){
			//  正常:1,禁用:0
			//得到按钮的名称  [正常:禁用]
			var locked =$(obj).text()
			 $.ajax({
				type:"post",
				data:{id:id,locked:locked=="正常"?0:1},
				url:"/updateUser",
				success:function(result){
				//	alert(result)
					if(result){
						//alert($(this).parent().text())
						$(obj).text(locked=="正常"?"禁用":"正常")
					
					}
				}
				
				
				
			}) 
			
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