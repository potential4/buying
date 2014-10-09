dfs.login = (function() {
	var exports = { namespace : 'dfs.login' };
	var FB;
	
	exports.initFacebook = function() {
		if (!(!!FB)) {
			FB = window.FB;
		}
		console.log(FB);
	};
	
	exports.checkLoginStatus = function() {
		console.log(this);
	};
	
	return exports;
}());