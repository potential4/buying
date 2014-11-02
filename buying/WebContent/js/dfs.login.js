dfs.login = (function() {
	var exports = { namespace : 'dfs.login' };
	
	var isLoaded,
		userData = {};
	
	exports.login = function() {
		FB.login(
			function(response) {
				// TODO: status check
				console.log(response);
				FB.api('/me', function(response) {
				    console.log(JSON.stringify(response));
				});
				
				FB.api('/me/picture', function(response) {
				    console.log(JSON.stringify(response));
				});
		}, {scope: 'public_profile'});
	};
	
	exports.downloadSDKAsync = function() {
		window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1522185564694957',
		      xfbml      : true,
		      version    : 'v2.1'
		    });
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
	
	var getLoginStatus = function() {
		FB.getLoginStatus(function(response) {
			getLoginStatusCallback(response);
		});
		FB.api('/me', function(response) {
		    console.log(JSON.stringify(response));
		});
	};

	var getLoginStatusCallback = function(response) {
		console.log(response);
	};
	
	return exports;
}());