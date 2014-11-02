dfs.event = (function() {
	var exports = { namespace : 'dfs.event' };
	var elements = {};
	
	var init = function() {
		initElements();
		
		initClickEvent();
	};
	
	var initElements = function() {
		elements['body'] = $('body');
		elements['dimmed_layer'] = $('._dimmedLayer');
		elements['popup'] = $('._popup');
	};
	
	var getElement = function(key) { return elements[key]; };
	
	var initClickEvent = function() {
		$('body')
		.on('click', '._login', function(event) {
			dfs.login.login();
		})
		.on('click', '._request', function(event) {
			showRequestPopup(event);
		})
		.on('click', '._dimmedLayer', function(event) {
			closeRequestPopup();
		})
		.on('click', '._submit_request', function(event) {
			ajaxSubmitRequest(event);
			// if confirmed
			closeRequestPopup();
		})
		.on('click', '._close_request_popup', function() {
			closeRequestPopup();
		});
	};
	
	var closeRequestPopup = function(event) {
		getElement('body').removeClass('buying-stop-scrolling');
		getElement('dimmed_layer').addClass('hidden');
		getElement('popup').addClass('hidden');
	};
	
	var showRequestPopup = function(event) {
		var body = getElement('body'),
			popup = getElement('popup'),
			popupLeft = (body.width() - popup.width()) / 2,
			popupTop = (body.height() - popup.height()) / 2;
		
		body.addClass('buying-stop-scrolling');
		getElement('dimmed_layer').removeClass('hidden');
		getElement('popup')
			.removeClass('hidden')
			.css('left', popupLeft).css('top', popupTop);
	};
	
	var ajaxSubmitRequest = function(event) {
		var desiredPriceInput = $('._desired_price'),
			desiredDateInput = $('._desired_date');
		
		// do something here...
		console.log(desiredPriceInput.val() + "," + desiredDateInput.val());
		
		desiredPriceInput.val('');
		desiredDateInput.val('');
	};
	
	exports.init = init;
	return exports;
}());