<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title></title>
<script type="text/javascript">
	function toDetail(id) {
		window.open("getArticleDetail?id=" + id);
	}
</script>
</head>
<body>

	<div class="container">
		<ul class="list-unstyled">
			<c:forEach items="${list}" var="c">

				<li class="media">
				 <img class="mr-3" src="/pic/${c.picture }"
					alt="图片未找到">
					<div class="media-body">
						<h5 class="mt-0 mb-1">${c.title }</h5>
						
					</div>
					
					</li>

			</c:forEach>
		</ul>
		<div>${pages }</div>

	</div>

</body>
</html>