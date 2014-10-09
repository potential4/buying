dfs.util = (function() {
	var exports = { namespace : 'dfs.util' };
	
	exports.getCategory = function() {
		return dfs.data.category;
	};
	
	exports.getUrl = function(key) {
		return dfs.urls.key;
	};
	
	return exports;
}());