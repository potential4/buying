dfs.login = (function() {
	var exports = { namespace : 'dfs.login' };
	
	var isLoaded
		, FBobj;
	
	exports.initFacebook = function() {
		_downloadSDKAsync();
	};
	
	exports.getLoginStatus = function() {
		var isSDKAvailable = _waitSDKDownload(function() {
			FB.getLoginStatus(function(response) {
				_getLoginStatusCallback(response);
			});
		});
	};
	
	var _waitSDKDownload = function(getLoginStatus) {
		var waitTimer = setInterval(function() {
			if (isLoaded) {
				clearInterval(waitTimer);
				getLoginStatus();
				return true;
			}
		}, 100);
		// TODO: max count
		return false;
	};
	
	var _getLoginStatusCallback = function(response) {
		console.log(response);
	};
	
	var _downloadSDKAsync = function() {
		window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1522185564694957',
		      xfbml      : true,
		      version    : 'v2.1'
		    });
		    isLoaded = true;
		  };
		
		  (function(d, s, id){
		     var js
		     	, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {
		    	 return;
		   	 }
		     js = d.createElement(s);
		     js.id = id;
		     js.src = "//connect.facebook.net/en_US/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
	};
	
	return exports;
}());