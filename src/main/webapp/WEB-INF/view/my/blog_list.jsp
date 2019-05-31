<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>publish</title>

<script src="/resource/js/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resource/css/cms.css?v=1.1" />
</head>
<body>
<div class="container">

	<h3 style="color: green;" align="center">博文列表</h3>

	<!-- <dl> 标签用于结合 <dt> （定义列表中的项目）和 <dd> （描述列表中的项目）。 -->
	<c:forEach items="${list }" var="l">
		<dl>
			<dt>${l.title }</dt>
			<dd>
				作者:${l.author } 发布时间: ${l.created} <span
					style="float: right; margin-right: 50px"><a class="murl" href="javascript:void(0)" data="/blog/toDetail?id=${l.id}">查看</a>|<a class="murl" href="javascript:void(0)" data="/blog/toDeleteById?id=${l.id}">删除</a></span>
			</dd>
		</dl>
		<hr style="height: 1px; border: none; border-top: 1px dashed #0066CC;" />
	</c:forEach>
</div>
<script type="text/javascript">

 $(function(){
	 $(".murl").click(function(){
		var url= $(this).attr("data");
		alert(url)
		 $("#center").load(url)
		 
	 })
	 
	 
	 
 })

</script>
</body>
</html>