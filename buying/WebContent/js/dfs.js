window.dfs = {};

dfs.crawler_home = 'http://ec2-54-64-28-114.ap-northeast-1.compute.amazonaws.com:8080/';
dfs.urls = {
	'getItemsByCategory' : dfs.crawler_home + 'dfs/category/33/item',
	'getCategories' : '/api/categories.dfs'
};

dfs.init = function() {
	dfs.event.init();
	dfs.login.downloadSDKAsync();
//	dfs.items.init();
};