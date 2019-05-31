<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>博文详情</title>

<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resource/css/bootstrap.min.css">
<script type="text/javascript">
//回到文章列表页面
function goList(){
	 $('#content-wrapper').load("/article/getList");
}


</script>
</head>
<body>
 <div class="container">
   <h2  style="color: green" align="center">${article.title }</h2>
   
   <br/>
<%--     <span style="float: right;"><a href="toUpdate?id=${blog.id }">编辑</a></span>
 --%>       <hr/>
   <dl>
    <dt>作者:${article.username }  发布时间:${article.created }    <dd ><a href="javascript:goList()">返回</a></dd> </dt>
    <hr/>
    <dd>${article.content }</dd>
  
  
    <dd><button class="btn btn-success" onclick="check(1)">通过</button>
       <button class="btn btn-warning" onclick="check(-1)">不通过</button>
    
    </dd>
   </dl>
 
    
 </div>


 <script type="text/javascript">
 function check(status){
	 $.ajax({
		type:"post",
		data:{status:status,id:'${article.id}',userId:'${article.user_id}'},
		url:"/article/check",
		success:function(obj){
			if(obj){
				alert("操作成功");
				goList();
			}
		}
		 
		 
		 
	 })
	 
	 
 }
 
 
 </script>
</body>
</html>