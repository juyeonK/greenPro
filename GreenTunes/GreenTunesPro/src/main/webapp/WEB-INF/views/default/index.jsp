<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
body{
	margin: 0;
}
.page_wrap{
	padding-left: 50px;
	padding-right: 50px;
}
.left_menu{
	height: 400px;;
	width: 200px;
	position: fixed;
	top: 150px;
	background-color: #D5D5D5;
}
.menu_button{
	padding-left: 200px;
}
</style>


</head>
<body>
	<div class="page_wrap">
		<div class="header">
			<jsp:include page="header.jsp"/>
		</div>
		<div class="content">
<%-- 			<jsp:include page="home.jsp"/> --%>
			<jsp:include page="${contentPage }"/>
		</div>
		<div class="footer">
			<jsp:include page="footer.jsp"/>
		</div>
	</div>
	
	<div class="left_menu">
		<div class="menus">
			<jsp:include page="menu.jsp"/>
		</div>
	</div>
	<div class="menu_button">
			<button>버튼</button>
	</div>


<script type="text/javascript">
	$(document).ready(function(){
		$(".left_menu").show();
		$(".menu_button").click(function(){
			$(".menus").toggle();
			$(".left_menu").animate({width:'toggle'});
		});
		
	});
</script>
</body>
</html>