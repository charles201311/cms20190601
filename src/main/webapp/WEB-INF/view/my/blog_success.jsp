<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>publish</title>

<script src="/resource/js/jquery-3.2.1.js"></script>

</head>
<body>
<div align="center">
	<h2 style="color: green;" >发布成功</h1>
	
	<a href="javascript:toList()">点击查看文章</a>
	</div>
	<script type="text/javascript">
	
	
	function toList(){
		//在中间区域显示
		$("#center").load("/blog/toList")
		
	}</script>
</body>
</html>