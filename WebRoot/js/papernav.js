/*调整导航高度*/
$(document).ready(function(){
	 $('.block-nav').height(document.body.clientHeight-195);
});
$(window).resize(function(){
	 $('.block-nav').height(document.body.clientHeight-195);
});
$(window).scroll(function(){
	 if($(window).scrollTop()>80){
		 $('.vertical-bar').addClass('v-bar-fix');
		 var deduct = 115;//40+1+73+1
	 }else{
		 var deduct = 195-$(window).scrollTop();//60+20+40+1+1+73
		 $('.vertical-bar').removeClass('v-bar-fix');
	 }
	 $('.block-nav').height(document.body.clientHeight-deduct);
});
