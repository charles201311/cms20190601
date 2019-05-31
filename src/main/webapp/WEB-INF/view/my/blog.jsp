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
	<h3 style="color: green;" align="center">发表博客</h3>
	<form>
		<div class="form-group">
			<input type="text" name="title" class="form-control" id="title"
				placeholder="请输入标题">
		</div>

		<div class="form-group">
			<textarea class="form-control" name="content" id="content"
				rows="10" placeholder="请输入内容"></textarea>
		</div>
   
   
      <div>
        <span id="tags"/>
      
         <input type="button" class="btn btn-sm btn-info" value="添加标签" onclick="addTag()">
      
      
      </div>
      
      
      <br/>
      <div align="center">
        
         <input type="button" class="btn btn-info" value="发布博客" onclick="add()">
      </div>

       
	</form>
	
	<script type="text/javascript">
	function addTag(){
	  	
		$("#tags").append("<input type='text' name='tagName' >");
		
	}
	//发布博客
	function add(){
		$.ajax({
			 type:"post",
			 data:$("form").serialize(),
			 url:"/blog/add",
			 success:function(obj){
				 if(obj){
					$("#center").load("/blog/toSuccess");
				 }
			 }
			
			
			
		})
	}
	
	</script>
</body>
</html>