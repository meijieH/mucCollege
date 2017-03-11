/*选范围*/
function viewRanges(checkbox){
	var index = $(checkbox).parent().index();
	if($(checkbox).siblings('input')[0].checked==true){
		$(checkbox).siblings('input')[0].checked=false;
		$($('#ranges ul li').get(index)).removeClass('visible').addClass('display-none');
	}else{
		$(checkbox).siblings('input')[0].checked=true;
		$($('#ranges ul li').get(index)).removeClass('display-none').addClass('visible');
	}
}
function controlRanges(inputCheckbox){
	$(inputCheckbox)[0].checked=!$(inputCheckbox)[0].checked;
	viewRanges($(inputCheckbox).siblings('span'));
}

function deleteRanges(myqesCheck,view){
	$('#'+myqesCheck).siblings('input')[0].checked=false;
	$(view).parent().removeClass('visible').addClass('display-none');
}

/*计分*/
var amounts = $('.q-type>ul>li>span>input.amount'); 
var perScores = $('.q-type>ul>li>span>input.perScore');
var cnt = amounts.size();
function countScore(){
	var totalScore = 0;
	for(var i = 0;i < cnt;i++){
		totalScore = totalScore*1+amounts[i].value*perScores[i].value;
	}
	$('#preTotalScore').html(totalScore);
}

/*存数据*/
function previewPaper(){
	sessionStorage.prePaperTitle=$('#prePaperTitle').val();
	sessionStorage.preTotalScore=$('#preTotalScore').html();
	var scoreStr ="";
	var amountStr ="";
	for(var i = 0;i < cnt;i++){
		scoreStr += perScores[i].value+" ";
		amountStr += amounts[i].value+" ";
	}
	sessionStorage.perScores = scoreStr; 
	sessionStorage.amounts = amountStr; 
}

function setPreAttr(){
	$('#paperTitle').val(sessionStorage.prePaperTitle);
	$('#totalScore').html(sessionStorage.preTotalScore);
	var perScores = sessionStorage.perScores.split(" ",6);
	var amounts = sessionStorage.amounts.split(" ",6);
	/*填数据、隐藏block*/
	var btScores = $('.blockTotalScore');
	var btAmounts = $('.blockTotalAmount');
	var scoreNum = $('.score-num');
	var strPerScore = 0;
	for ( var i = 0; i <$('#paperBlocks>div').size(); i++) {
		if(amounts[i]!=0){
			btAmounts.get(i).innerHTML = amounts[i];
			btScores.get(i).innerHTML = perScores[i]*amounts[i];
			for ( var j = 0; j < amounts[i]; j++) {
				scoreNum.get(strPerScore*1+j*1).innerHTML = perScores[i];
			}
			strPerScore += amounts[i]*1;
		}else{
			$($('#paperBlocks>div').get(i)).addClass('display-none');
		}
	}
}
