$( document ).ready(function() {

  $('#search_keywords').autocomplete({
    serviceUrl: '/suggestions',
    delimiter: false,
    minChars: 2
  });

});