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
	<h3 style="color: green;" align="center">博文详情</h3>
	<dl>
	  <dt>${blog.title }  <span style="float: right;"><a href="javascript:toUpdate(${blog.id })">编辑</a></span></dt>
	  <dd>${blog.content }</dd>
	
	</dl>
	<script type="text/javascript">
	function toUpdate(id){
		$("#center").load("/blog/toUpdate?id="+id)
		
	}
	
	</script>
</body>
</html>