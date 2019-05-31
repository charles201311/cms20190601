<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title></title>
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function update() {
		
	
		$.ajax({

			type : "post",
			data : $("form").serialize(),
			url : "/updateUser",
			success : function(obj) {
				if (obj) {
					alert("修改成功");
					$('#content-wrapper').load("/getUserList");
				}
			}

		})

	}
	
	function goback(){
		$('#content-wrapper').load("/getUserList");
	}
</script>

</head>
<body>
	<div class="container">


		<form action="">
			<div class="form-group">
				<input type="text" class="form-control" name="username"
					value="${map.username }" placeholder="请输入连接名称"> <input
					type="hidden" name="id" value="${map.id }">
			</div>

			<div class="form-group">
			 男:	<input type="radio"  name="gender" value="${map.gender }" ${map.gender ==1?"checked":""}>
			女:	<input type="radio" name="gender" value="${map.gender }" ${map.gender ==0?"checked":""}>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" name="url"
					value="${map.url }" placeholder="请输入连接地址">
			</div>
			<button type="button" class="btn btn-primary" onclick="update()">修改</button>
			<button type="button" class="btn btn-primary" onclick="goback()">返回</button>



		</form>
	</div>

</body>
</html>