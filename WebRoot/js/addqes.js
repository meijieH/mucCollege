/*追加子元素、添加选项*/
function appendOption(appendButton,option,disableClass){
	var lastOption = $('.'+option).last();
	var number = $('.'+option).size()*1+1*1;
	var newOption = '<li>'+
		'<span class="left-span"><label for="'+option+number+'">'+String.fromCharCode(64 + number)+'、</label></span>'+
			'<span class="right-span">'+
				'<input type="text" class="'+option+'" id="'+option+number+'" name="question.option'+number+'">'+
        '</span>'+
        '<span class="deleteOption" title="删除选项" onclick="deleteOption(this,\''+option+'\')"> <i class="fa fa-times" aria-hidden="true"></i></span>'+
   ' </li>';
	lastOption.parents('li').after(newOption);
	var activeAnswer = $('.'+disableClass).get(0);
	$(activeAnswer).children().removeAttr("disabled"); 
	$(activeAnswer).removeClass(disableClass);
	if (number==7) {
		$(appendButton).html('<i class="fa fa-ban" aria-hidden="true"></i> 选项数目到达上限！');
		$(appendButton).attr("disabled","disabled");
	}
	
}
/*删除元素*/
function deleteOption(close,optionType){
	var options = $('.'+optionType);
	var start = $(".deleteOption").index($(close))*1+2;
	var end = options.size()-1;
	for(;start < end;start++){
		options.get(start).value = options.get(start*1+1).value;
	}
	options.last().parents('li').remove();
	var answerType = (optionType=='singleOption')? 'singleAnswer':'multipleAnswer';
	var disableAnswer = $('.'+answerType).get(end);
	var disableClass = '.'+(optionType=='singleOption')? 'singleDisable':'multipleDisable';
	console.log(disableAnswer);
	$(disableAnswer).attr("disabled","disabled"); 
	$(disableAnswer).parents('label').addClass(disableClass);
	var appendClass = (optionType=='singleOption')? 'singleAppend':'multipleAppend';
	var appendButton = $('.btn.btn-default.'+appendClass);
	if(end<7){
		$(appendButton).html('添加选项');
		$(appendButton).removeAttr("disabled");
	}
}