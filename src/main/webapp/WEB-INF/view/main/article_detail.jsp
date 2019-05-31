<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>博文详情</title>

<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<h2 style="color: green" align="center">${article.title }</h2>

		<br />
		<%--     <span style="float: right;"><a href="toUpdate?id=${blog.id }">编辑</a></span>
 --%>
		<hr />
		<dl>
			<dt>作者:${article.username } 发布时间:${article.created }</dt>
			<hr />
			<dd>${article.content }</dd>
		</dl>

	</div>
	<hr>
	<div align="center">
		<textarea id="content" rows="6" cols="140" name="content"></textarea>

		<button class="btn btn-success" onclick="comment()">评论</button>
	</div>

<hr>
	<div>
		<dl>
			<c:forEach items="${list }" var="l">
				<dt>${l.username } &nbsp; ${l.created } </dt>

				<dd>${l.content }</dd>

			</c:forEach>
		</dl>

	</div>
	
</body>

	<script type="text/javascript">
	   function comment(){
		/*    //从session中获取当前登录的对象
		   var user ='${sessionScope.user.username}';
		   if(user=="" ||user==null){
			   alert("请登录后再评论");
			   return ;
			   
		   } */
		   
		   
		   
		   $.ajax({
			   type:"post",
			   data:{content:$("#content").val(),articleId:'${article.id}'},
			   url:"/addComment",
			   success:function(obj){
				   if(obj){
					   alert("评论成功!");
					   window.location.reload();
				   }else{
					   alert("评论失败,可能你没有登录!");
				   }
			   }
			   
		   })
		   
	   }
	
	</script>
</html>