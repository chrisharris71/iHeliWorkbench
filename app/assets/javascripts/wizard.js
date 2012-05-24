$(function(){
	
		$('.is_nitro, .is_electric, .is_flybarless, .is_flybarred').hide();
				
		$('#project_flybarless_false, #project_flybarless_true, #project_electric_false, #project_electric_true').change(function() {
  		
  		/* alert('Handler for .change() called.'); */
				if ($('#project_flybarless_false').is(':checked')){
/* 					alert("It'll be flybarred!"); */
					$('.is_flybarred').show();
					$('.is_flybarless').hide();
				} else 
				
				if ($('#project_flybarless_true').is(':checked')){
/* 					alert("It'll be flybarless!"); */
					$('.is_flybarless').show();
					$('.is_flybarred').hide();
				} else 
				
				if ($('#project_electric_false').is(':checked')){
/* 					alert("It'll be a nitro!"); */
					$('.is_nitro').show();
					$('.is_electric').hide();
				} else 
				
				if ($('#project_electric_true').is(':checked')){
/* 					alert("It'll be electric!"); */
					$('.is_electric').show();
					$('.is_nitro').hide();
				} else {
					return false;
				};
		
		}); /* ----- End of Change Event Handler ----- */
		
		$('.gsc-search-button').click(function()	{
			$('#main_content').fadeOut('fast');
			$('#cse').fadeIn('fast');
		});
		
		$('.gsc-clear-button').click(function()	{
			$('#cse').fadeOut('fast');
			$('#main_content').fadeIn('fast');
			
		});
		
});