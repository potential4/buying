<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
</head>
<style type="text/css">
body {
	padding-top: 50px;
}

.starter-template {
  padding: 40px 15px;
}
</style>

<body>
	<!-- Navigation Bar -->
   	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
     <div class="container">
       <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="#">Project name</a>
       </div>
       <div class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
         	<li class="dropdown active">
         		<a class="dropdown-toggle" data-toggle="dropdown" id="dropdownCategory" href="#">
           			면세점 보기
           			<span class="caret"></span>
           		</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/items/cosmetics.dfs">cosmetics</a></li>
					<li><a href="/items/perfumes.dfs">perfumes</a></li>
					<li><a href="/items/electronics.dfs">electronics</a></li>
					<li><a href="/items/foods.dfs">foods</a></li>
					<li><a href="/items/fashions.dfs">fashions</a></li>
					<li><a href="/items/jewels.dfs">jewels</a></li>
					<li><a href="/items/domestics.dfs">domestics</a></li>
			    </ul>
           	</li>
           	<li><a href="#about">바잉 리스트</a></li>
           	<li><a href="#contact">마이 페이지</a></li>
           	<li>검색</li>
         </ul>
       </div><!--/.nav-collapse -->
     </div>
   </div> <!-- /.navbar -->
   
	
	<!-- Container -->
	<div class="container">
     <div class="starter-template">
       <div class="row">
       	<div class="col-md-4 _col_first"></div>
       	<div class="col-md-4 _col_second"></div>
       	<div class="col-md-4 _col_third"></div>
       </div>
     </div>
   </div><!-- /.container -->

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="/lib/mustache.js"></script>

<script src="/js/dfs.js"></script>
<script src="/js/dfs.util.js"></script>
<script src="/js/dfs.items.js"></script>

<!-- Mustache Template -->
<script id="tmp_item" type="x-tmpl-mustache">
<div class="panel panel-default">
	<div class="panel-body">
		<div class="col-lg-3">
    		<img src="{{thumbnailUrl}}" style="width:40px; height:40px;">
    	</div>
    	<div class="col-lg-9">
	    	<div class="row">
				<a href="{{detailUrl}}">[{{brand}}] {{name}}</a>
	    	</div>
	    	<div class="row">
	    	$ {{dollar}} ({{won}}원)
			</div>
    	</div>
	</div>
</div>
</script>

<script type="text/javascript">
	dfs.data = {
		'category' : '${category}'	
	};
	dfs.items.init();
</script>
</body>
</html>