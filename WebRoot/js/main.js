/*隐藏和显示*/
function visible(id){
	$('#'+id).removeClass('display-none').addClass('visible');
}
function displayNone(id){
	$('#'+id).removeClass('visible').addClass('display-none');
}
function hidden(id){
	$('#'+id).removeClass('visible').addClass('hidden');
}