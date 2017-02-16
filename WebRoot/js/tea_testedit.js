//1表示选择题 ；2表示判断题 ；3表示简答题
function addQuestion(type,btnobj){
	
	//获取当前最后一个子问题的编号
	var number=$(btnobj).parents('.questions').children('.question').length+1;
	console.log(number);
	var qestype="";
	switch(type){
		case "1":
			qestype='<div class="question">'+
        	'<div class="question-set">'+
        		'<h4 class="question-number">第 <span>3</span>题</h4>'+
        		'<div class="isAnswer">未设置标准答案</div>'+
        		'<label class="base-mark">分值<span>2</span></label>'+
        	'</div>'+
        	'<div class="select-qes">'+
	             '<textarea placeholder="键入您的问题描述"></textarea>'+
	             '<div>'+
	             	'<span class="text-option-num">A</span><textarea class="text-option" placeholder="输入选项一"></textarea>'+
	             '</div>'+
	             '<span class="text-option-num">B</span><textarea class="text-option" placeholder="输入选项二"></textarea>'+
	        '</div>'+
        '</div>'
			break;
		case "2":
			qestype='<div class="question">'+
        	'<div class="question-set">'+
        		'<h4 class="question-number">第 <span>'+number+'</span>题</h4>'+
        		'<div class="isAnswer">未设置标准答案</div>'+
        		'<label class="base-mark">分值<span>2</span></label>'+
        	'</div>'+
        	'<div class="flag-qes">'+
	             '<textarea placeholder="键入需要判断的结论"></textarea>'+
	        '</div>'+
        '</div>';
			break;
		case "3":
			qestype='<div class="question">'+
				  '<div class="question-set">'+
					'<h4 class="question-number">第 <span>'+number+'</span>题</h4>'+
					'<div class="isAnswer">未设置标准答案</div>'+
					'<label class="base-mark">分值<span>2</span></label>'+
				  '</div>'+
				  '<div class="short-answer">'+
				    ' <textarea placeholder="键入您的问题"></textarea>'+
				  '</div>'+
				'</div>';
			break;
		default:;
	}
	
	/*获取当前子版块最后一个问题*/
	$(btnobj).parents('.questions').children('.question:last').after(qestype);
}


/*添加大板块*/
function addBigPlate(){
	
	var grounp=document.createElement("div");
	grounp.id="1.2.1";
	
	var questionsname=document.createElement("input");
	questionsname.type="text";
	questionsname.placeholder="键入您的小题名字";
	questionsname.className="textinput group";
	grounp.appendChild(questionsname);
	document.getElementById(id).appendChild(grounp);
	addquestion("1.2.1");
	var questionbutton=document.createElement("button");
	questionbutton.onclick="addquestion('1.2.1')";
	questionbutton.innerHTML="+添加题目";
	grounp.appendChild(questionbutton);
}