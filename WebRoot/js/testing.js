$(function() {
	var navTop=$('nav.nav-testing').offset().top;
    $(window).scroll(function() {
    	
        if ($(window).scrollTop()>=navTop){
        	$('nav.nav-testing').addClass('nav-testing-fix');
        }else{
        	$('nav.nav-testing').removeClass('nav-testing-fix');
        	$('nav.nav-testing').addClass('nav-testing');
            
        }
    });
});
