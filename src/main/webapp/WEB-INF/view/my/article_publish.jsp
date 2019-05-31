<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content") != null ? request.getParameter("content") : "";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>publish</title>



	<script
		src="/resource/js/jquery-3.2.1.js"></script>

	<script>
		KindEditor.ready(function(K) {
			window.editor1 = K.create('textarea[name="content"]', {
				cssPath : '/resource/kindeditor/plugins/code/prettify.css',
				uploadJson : '/resource/kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '/resource/kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
		function query(){
		alert(editor1.html())
			//alert( $("[name='content1']").attr("src"))
		} 
	</script>

</head>
<body>
	<h3 style="color: green;" align="center">发表文章</h3>
	<form id="form">
		<div class="form-group">
			<input type="text" name="title" class="form-control" id="title"
				placeholder="请输入标题">
		</div>

		<div class="form-group">
			<textarea class="form-control" name="content" id="content"
				rows="10" ></textarea>
		</div>
		<div class="form-group">
		  文章logo:	<input type="file" name="file" class="form-control" id="file"
				>
		</div>
		
		<div>
		   <!-- 文章标签 -->
		 <div id="tags">
		 
		 </div>
		<!-- 标签 一个文章可以有多个标签,多个标签页也可以属于一个文章 -->
      <button type="button" onclick="addTag()" class="btn btn-success">增加文章标签</button>	
   
		</div>
		    <br/>
   <div class="form-group">
			栏目:<select id="channel" name="channelId"> 
			     <option value="">请选择</option>
			 </select>
				分类:<select id="categoryId" name="categoryId">  </select>
		</div>
		
   
      
      <br/>
      <div align="center">
        
         <input type="button" class="btn btn-info" value="发布" onclick="add()">
      </div>

       
	</form>
	
	<script type="text/javascript">
	  function addTag(){
		  $("#tags").append("<input type='text' name='tagName' > &nbsp;");
		  
		  
	  }
	
	
	//加载文章栏目和分类
	$(function(){
		
		//获取栏目
		$.ajax({
			type:"get",
			url:"/getChannelList",
			success:function(list){
				for(var i in list){
					$("#channel").append("<option value='"+list[i].id+"'>"+list[i].name+"</option>")
				}
			}
			
		})
		
		$("#channel").change(function(){
			//alert($(this).val())
			//先清空已有分类信息
			$("#categoryId").empty();
			$.ajax({
			 	type:"get",
			 	data:{cid:$(this).val()},
			 	url:"/getCategoryListByCid",
			 	success:function(list){
					for(var i in list){
						$("#categoryId").append("<option value='"+list[i].id+"'>"+list[i].name+"</option>")
					}
				}
				
			})
			
			
		})
		
		
	})
	
	
	//发布文章
	function add(){
		//alert(editor1.html())
		//序列化表单数据带文件
		 var formData = new FormData($( "#form" )[0]);
		//改变formData的值
		//editor1.html() 是富文本的内容
		 formData.set("content",editor1.html());
		$.ajax({
			type:"post",
			data:formData,
			// 告诉jQuery不要去处理发送的数据
			processData : false,
			// 告诉jQuery不要去设置Content-Type请求头
			contentType : false,
			url:"/addArticle",
			success:function(obj){
				if(obj){
					alert("发布成功!")
				}else{
					alert("发布失败!")
				}
			}
			
			
			
			
		})
		
		
	}
	
	</script>
	
	
	
</body>
</html>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>