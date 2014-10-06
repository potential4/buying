dfs.items = (function() {
	var exports = { namespace : 'dfs.items' };
	
	exports.init = function() {
		var items = _getItems(
			function(items) {
				_initView(items);
			}
		);
	};
	
	_getItems = function(callback) {
		$.ajax({
			url : 'http://api-dfs-shila.appspot.com/category/perfumes',
			dataType : 'jsonp',
			type : 'GET',
			jsonp : 'callback',
			crossDomain : true,
			contentType : 'application/json; charset=utf-8',
			data : {
				'from' : 1,
				'to' : 10
			},
			success : function(data, textStatus, jqXHR) {
				_initView(data);
			},
			error : function(data, textStatus, jqXHR) {
				console.log("error");
				console.log(data);
				console.log(textStatus);
				console.log(jqXHR);
			}
		});
	};
	
	_initView = function(items) {
		var itemTmp = $('#tmp_item').html(),
			attachTarget = $('._col_first'),
			renderedItem;
		
		for (var i = 0, len = items.length; i < len; i++) {
			renderedItem = Mustache.render(itemTmp, items[i]);
			_attachItem(i, renderedItem);
		}
	};
	
	_attachItem = function(index, renderedItem) {
		var renderMap = {
			'col0' : $('._col_first'),
			'col1' : $('._col_second'),
			'col2' : $('._col_third')
		};
		
		renderMap['col' + (index % 3)].append(renderedItem);
	};
	
	_getTemplateEachItem = function(item) {
		
	};
	
	return exports;
}());