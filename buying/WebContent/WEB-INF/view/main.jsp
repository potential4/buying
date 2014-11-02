<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/bootstrap-theme.css">
</head>
<style type="text/css">
body {
	padding-top: 50px;
	font-family: 나눔고딕, NanumGothic, 맑은 고딕, Malgun Gothic, 돋움, Dotum, 굴림, Gulim, Helvetica, sans-serif;
}

.starter-template {
  padding: 40px 15px;
}

.buying-pd-reset {
	padding: 0 0 0 0;
}

.buying-item {
	margin-bottom: 15px;
	border: 1px solid #dfdfdf;
}
.buying-item .buying-thumb img{
	width: 100%;
}
.buying-detail {
	height: 137px;
 	box-sizing: border-box;
	padding-left: 15px;
}
.buying-item .buying-brand {
	font-weight: bold;
	font-size: 16px;
	color: #2f2f2f;
}
.buying-item .buying-name {
	max-height: 40px;
	overflow:hidden;
	text-overflow: ellipsis;
	white-space:nowrap;
	padding-right: 15px;
	font-size: 14px;
	color: #005aff;
}
.buying-item .buying-price .buying-us-dollar {
	font-size: 22px;
	font-weight: bold;
	letter-spacing: -2px;
	color: #c73c00;
}
.buying-item .buying-price .buying-won {
	font-size: 14px;
	color: #797979;
}
.buying-item .buying-btn {
	position: absolute;
	bottom: 0px;
}
.buying-item .buying-btn button {
	background:#009688;
	border: 0px;
}
.buying-stop-scrolling {
	height: 100%;
	overflow: hidden;
}
</style>

<body style="height:100%;">
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
           			Goods
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
           	<li><a href="#contact">마이 바잉</a></li>
           	<li>
           		<a href="#" class="_login">페이스북으로 로그인</a>
           		<!-- <div class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="true" data-auto-logout-link="false">
           		</div> -->
           	</li>
         </ul>
       </div><!--/.nav-collapse -->
     </div>
   </div> <!-- /.navbar -->
	
	<!-- Container -->
	<div class="container">
     <div class="starter-template">
       <div class="row">
       	<div class="col-md-4 col-xs-6 _col_first" style="padding-right:0px;">
       		<div class="panel panel-default buying-item">
				<div class="panel-body">
					<div class="col-md-5 col-xs-5 buying-thumb buying-pd-reset">
			    		<img src="#">
			    	</div>
			    	<div class="col-md-7 col-xs-7 buying-detail buying-pd-reset">
				    	<div>
							<a href="#"">
								<div class="buying-brand">Olive TV</div>
								<div class="buying-name">Olive SHOW</div>
							</a>
				    	</div>
				    	<div class="buying-price">
							면세가: 
							<span class="buying-us-dollar">$</span>
							<span class="buying-us-dollar">11</span>
							<span class="buying-won"> (11원)</span>
						</div>
						<div class="buying-btn">
							<button type="button" class="btn btn-primary btn-sm _request">부탁하기</button>
						</div>
			    	</div>
				</div>
			</div>
       	</div>
       	<div class="col-md-4 col-xs-6 _col_second" style="padding-right:0px;"></div>
       	<div class="col-md-4 col-xs-6 _col_third" style="padding-right:0px;"></div>
       </div>
     </div>
   </div> <!-- /.container -->
   
   <!-- Dimmed layer -->
   <div class="dimmed-layer hidden _dimmedLayer"
   		style="position:fixed;width:100%;height:100%;left:0;top:0;background:#000;opacity:0.5;z-index:2000;">
   </div> <!-- /.dimmed-layer -->
   
   <!-- Popup layer -->
	<div class="panel panel-default hidden _popup"
		style="position:fixed;width:440px;height:360px;left:50px;top:50px;background:#fafafa;z-index:2100;">
		<div class="panel-body" style="height:100%;padding:35px;">
			<div class="row" style="height:25%;">
				<div class="col-md-11 col-xs-11"
					style="font-size:26px;">바잉 부탁하기</div>
				<div class="col-md-1 col-xs-1">
					<button class="_close_request_popup"
						style="border:0;width:14px;height:14px;background:url(../image/btn_close_popup.png) no-repeat;background-size:14px 14px;"></button>
				</div>
			</div>
			<div class="row" style="height:30%;">
				<div class="col-md-12 col-xs-12">
					<div style="color:#009688;font-weight:bold;">얼마에 살래요</div>
					<input type="text" class="_desired_price" placeholder="hint"
						style="width:100%;border:0;outline:0;border-bottom:2px solid #d1d1d1;background:none;"/>
				</div>
			</div>
			<div class="row" style="height:30%;">
				<div class="col-md-12 col-xs-12">
					<div style="color:#009688;font-weight:bold;">언제까지(이 날까진 받고 싶어요)</div>
					<input type="text" class="_desired_date" placeholder="hint"
						style="width:100%;border:0;outline:0;border-bottom:2px solid #d1d1d1;background:none;"/>
				</div>
			</div>
			<div class="row pull-right" style="height:15%;">
				<div class="col-md-12 col-xs-12" style="height:100%;bottom:0;">
					 <button type="button" class="btn btn-danger _submit_request" style="background:#009688;border:none;">부탁 등록</button>
				</div>
			</div>
		</div>
	</div>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="/lib/mustache.js"></script>

<script src="/js/dfs.js"></script>
<script src="/js/dfs.util.js"></script>
<script src="/js/dfs.login.js"></script>
<script src="/js/dfs.event.js"></script>
<script src="/js/dfs.items.js"></script>

<!-- Mustache Template -->
<script id="tmp_category" type="x-tmpl-mustache">
{{#category}}
<li>
	<a href="/items/perfumes.dfs">perfumes</a>
</li>
{{/category}}
</script>

<script id="tmp_item" type="x-tmpl-mustache">
<div class="panel panel-default buying-item">
	<div class="panel-body">
		<div class="col-md-5 col-xs-5 buying-thumb buying-pd-reset">
    		<img src="{{thumbnailUrl}}">
    	</div>
    	<div class="col-md-7 col-xs-7 buying-detail buying-pd-reset">
	    	<div>
				<a href="{{detailUrl}}">
					<div class="buying-brand">{{brand}}</div>
					<div class="buying-name" title="{{name}}">{{name}}</div>
				</a>
	    	</div>
	    	<div class="buying-price">
				면세가: 
				<span class="buying-us-dollar">$</span>
				<span class="buying-us-dollar">{{dollar}}</span>
				<span class="buying-won"> ({{seperatedWon}}원)</span>
			</div>
			<div class="buying-btn">
				<button type="button" class="btn btn-sm btn-primary _request">부탁하기</button>
			</div>
    	</div>
	</div>
</div>
</script>

<script type="text/javascript">
	dfs.data = {
		'category' : '${category}'
	};
	dfs.init();
</script>
</body>
</html>