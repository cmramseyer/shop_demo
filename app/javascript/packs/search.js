$( document ).ready(function() {

  $('#search_keywords').on('keydown', function(){
  	const keywords = $(this).val();
		$.ajax({
      type: 'GET',
      dataType: 'script',
      data: {keywords: keywords},
      url: '/suggestions',
      cache: false,
    });
	});

	$('.lala').on('click', function(){
		alert('lala');
	})

});