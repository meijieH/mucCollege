/*多行文本显示溢出：题目：myqes页面*/
$('.qes-stem').each(function(){
	if($(this).height()==100){
		$(this).find('.dotdotdot').css('visibility','visible');
	}
});