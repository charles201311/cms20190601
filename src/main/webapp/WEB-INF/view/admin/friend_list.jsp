<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>友情链接列表</title>
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>

<script type="text/javascript">
function query(){
	var name =$("[name='name']").val();
	$('#content-wrapper').load("/friend/toList?name="+name);
	
}


function toUpdate(id){

	$('#content-wrapper').load("/friend/toUpdate?id="+id);	
	
}

</script>

</head>
<body>

	<div class="row form-group mx-sm-3 mb-2">
		<div class="col">

			<input type="text" class="form-control " name="name" value="${name }" placeholder="请输入名称">
		</div>
		<div class="col">
			<input type="button" class="btn btn-success" onclick="query()" value="查询">
		</div>

	</div>


	<table class="table table-hover">




		<thead>
			<tr>
				<th scope="col">序号</th>
				<th scope="col">名称</th>
				<th scope="col">地址</th>
				<th scope="col">创建时间</th>
				<th scope="col">操作</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="f" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${f.text }</td>
					<td>${f.url }</td>
					<td>${f.created }</td>
					<td><button type="button" onclick="toUpdate(${f.id})">修改</button>|删除</td>
				</tr>
			</c:forEach>

			<tr>
				<td colspan="5">${pageInfo }</td>
			</tr>
		</tbody>



	</table>


</body>
</html>