$('.question .option>li>label>input').click(function() {
	$(this).parents('label').addClass('clr-green');
});
$('.question .option>li>label>input').blur(function() {
	
		$(this).parents().removeClass('clr-green');
	
});

function startTime(){
	//初始化
	var totaltime = document.getElementById('totaltime').innerHTML;//总时长
	var timerc = parseInt(totaltime)*60; //转化成秒
	reduceTime(timerc);
}
function reduceTime(timerc){
	timerc = timerc - 1;
	var h = parseInt(timerc / 3600);
    var m = parseInt((timerc - h*3600 )/60);
    var s = timerc - h*3600 - m*60;
    h=checkTime(h);
    m=checkTime(m);
	s=checkTime(s);
	document.getElementById('hour').innerHTML = h;
	document.getElementById('min').innerHTML = m;
	document.getElementById('sec').innerHTML = s;
	setTimeout('reduceTime('+timerc+')',1000);
}
function checkTime(i)
{
	if (i<10){
		i="0" + i
	}
    return i
}
