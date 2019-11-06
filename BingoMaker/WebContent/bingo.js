/**
 * 
 */
function submitBtnAdd() {
	var parent = document.getElementById("bingoForm")
	var div2 =  document.createElement("div");
	div2.setAttribute("class", "btn-box");
	div2.setAttribute("id", "btn-box");
	parent.appendChild(div2);
	
	var button = document.createElement("button");
	button.setAttribute("class", "btn btn-submit");
	button.setAttribute("type", "submit");
	button.innerHTML = "빙고 생성";
	div2.appendChild(button);
}
function submitBtnDel() {
	var parent = document.getElementById("btn-box")
	if (parent != null) {
		var child = parent;
		parent = parent.parentNode;
		parent.removeChild(child);
	}
}
function listDel(inputCnt, listCnt) {
	var start = inputCnt * inputCnt;
	
	for (var i = start; i < listCnt; i++) {
		var child = document.getElementById("bingoTextField" + i);
		var parents = document.getElementById("contents");
		parents.removeChild(child);
	}
}
function listAdd(obj, start, cnt) {
	var div;
	var par = obj.parentNode.parentNode;
	
	if (start == 0) {
		div = document.createElement("div");
		div.setAttribute("class", "group");
		div.setAttribute("id", "contents");
		par.appendChild(div);
	}
	else {
		div = document.getElementById("contents")
	}
	for (var i = start; i < cnt * cnt; i++) {
		var div2 = document.createElement("div");
		div2.setAttribute("id", "bingoTextField" + i);
		div.appendChild(div2);
		
		var input =	document.createElement("input");
		input.setAttribute("type", "text");
		input.setAttribute("class", "bingoText");
		input.setAttribute("name", "bingoText" + i);
		input.setAttribute("required", "required");
		input.setAttribute("placeholder", "빙고 내용 " + (i + 1));
		div2.appendChild(input);

		var input =	document.createElement("input");
		input.setAttribute("type", "text");

		var span =	document.createElement("span");
		span.setAttribute("class", "bar");
		div2.appendChild(span);
		
		var br = document.createElement("br");
		div2.appendChild(br);
	}

	/*
	var label =	document.createElement("label");
	label.innerHTML = "빙고 내용";
	div.appendChild(label);
	*/
}
function listDraw(obj) {
	var inputCnt = obj.value;
	var cont = document.getElementById("contents");
	
	if(cont == null) { //초기 페이지에서는 그냥 생성
		listAdd(obj, 0, inputCnt);
	}
	else {
		var listCnt = cont.getElementsByTagName("input").length;
		submitBtnDel();
		if (inputCnt * inputCnt > listCnt) { //입력한 크기가 현재 크기보다 큼(리스트 추가)
			listAdd(obj, listCnt, inputCnt);
		}
		else if (inputCnt * inputCnt < listCnt) { //입력한 크기가 현재 크기보다 작음(리스트 삭제)
			listDel(inputCnt, listCnt);
		}
	}
	submitBtnAdd();
}