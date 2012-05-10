google.load('search', '1', {language : 'en'});

google.setOnLoadCallback(function() {

    var customSearchOptions = {};  var customSearchControl = new google.search.CustomSearchControl(
      	'003607113975793371547:qu_mz-eu9pg', customSearchOptions);
    	customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
    	customSearchControl.draw('cse');
    	
}, true);


