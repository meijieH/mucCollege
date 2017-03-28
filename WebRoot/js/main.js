function active(item){
	$(item).addClass('active');
	$(item).siblings().removeClass('active');
}
function visible(id){
	$('#'+id).removeClass('display-none').addClass('visible');
}
function displayNone(id){
	$('#'+id).removeClass('visible').addClass('display-none');
}
/*function hide(id){
	$('#'+id).removeClass('visible').addClass('hidden');
}*/
/*学生-教师主页面的导航*/
function changeRight(src){
   var rightFrame=document.getElementById('tea-main-right-frame');
   console.log(src);
   rightFrame.src=src;
}
$('.option-nav ul li').click(function(){
	if((!$(this).hasClass('active'))&&(!$(this).hasClass('link'))){
		$(this).addClass('active');
		$(this).siblings().removeClass('active');
	}
});
