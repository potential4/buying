dfs.items = (function() {
	var exports = { namespace : 'dfs.items' };
	
	var init = function() {
		var items = getItems(
			function(items) {
				initView(items);
			}
		);
	};
	
	var getCategories = function(callbackOnSuccess) {
		$.ajax({
			url : dfs.urls.getCategories,
			type : 'GET',
			contentType: "application/json; charset=utf-8",
			success : function(data, textStatus, jqXHR) {
				console.log(data);
			}
		});
	};
	
	var getItems = function(callbackOnSuccess) {
		var category = dfs.util.getCategory();
		
		$.ajax({
			url : dfs.urls.getItemsByCategory/* + category*/,
			dataType : 'jsonp',
			type : 'GET',
			jsonp : 'callback',
			crossDomain : true,
			contentType : 'application/json; charset=utf-8',
			timeout : 1000,
			data : {
				'offset' : 1,
				'limit' : 20
			},
			success : function(data, textStatus, jqXHR) {
				callbackOnSuccess(data);
			},
			error : function(data, textStatus, jqXHR) {
				console.log("error");
				console.log(data);
				console.log(textStatus);
				console.log(jqXHR);
			}
		});
	};
	
	var initView = function(items) {
		var itemTmp = $('#tmp_item').html(),
			attachTarget = $('._col_first'),
			renderedItem;
		
		for (var i = 0, len = items.length; i < len; i++) {
			var modifiedItem = addWonSeperator(items[i]);
			renderedItem = Mustache.render(itemTmp, modifiedItem);
			attachItem(i, renderedItem);
		}
	};
	
	var addWonSeperator = function(item) {
		item.seperatedWon = function() {
			var won = this.won,
				slicedUpper, slicedLower;
			
			if (won.length > 3) {
				slicedUpper = won.slice(0, -3);
				slicedLower = won.slice(-3);
				return slicedUpper + ',' + slicedLower;
			}
			
			return won;
		};
		
		return item;
	};
	
	var attachItem = function(index, renderedItem) {
		var renderMap = {
			'col0' : $('._col_first'),
			'col1' : $('._col_second'),
			'col2' : $('._col_third')
		};
		
		renderMap['col' + (index % 3)].append(renderedItem);
	};
	
	var getTemplateEachItem = function(item) {
		
	};
	
	exports.init = init;
	return exports;
}());