<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BINGO MAKER</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="style2.css">
<!-- 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="html2canvas.js"></script>
<script type="text/javascript" src="html2canvas.min.js"></script>
 -->
<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String make = request.getParameter("make");
	String size = request.getParameter("size");
	
	String bgColor = request.getParameter("bgColor");
	String titleColor = request.getParameter("titleColor");
	String tableBgColor = request.getParameter("tableBgColor");
	String tableBorderColor = request.getParameter("tableBorderColor");
	String tableTextColor = request.getParameter("bgColor");
	
	int rowCnt = Integer.parseInt(size);
	int contentsCnt = rowCnt * rowCnt;
	String contents[] = new String[contentsCnt];
	
	for (int i = 0; i < contentsCnt; i++) {
		String name = "bingoText" + i;
		contents[i] = request.getParameter(name);
	}
%>
<script>

function colorSet() {
	document.body.style.backgroundColor = "<%=bgColor%>";
	var title = document.getElementById("title");
	title.style.color = "<%=titleColor%>";
	var sep = document.getElementById("sep");
	sep.style.background = "<%=titleColor%>";
	var table = document.getElementById("bingoTable");
	table.style.background = "<%=tableBgColor%>";
	table.style.border = "1px solid <%=tableBorderColor%>";
	table.style.color = "<%=tableTextColor%>";
	var trs = document.getElementsByTagName("tr");
	for (var i = 0; i < trs.length; i++) {
		trs[i].style.borderBottom = "1px solid <%=tableBorderColor%>";
	}
	var tds = document.getElementsByTagName("td");
	for (var i = 0; i < tds.length; i++) {
		tds[i].style.borderRight = "1px solid <%=tableBorderColor%>";
	}
}

</script>
</head>
<body onload="colorSet()">
<div class="wrapper">
	<div id="bingo">
		<h1 id="title"><%=title%></h1>
		<h5><%=make%></h5>
		<hr class="sep" id="sep"/>
		<table id="bingoTable">
			<%
			int index = 0;
			for (int i = 0; i < rowCnt; i++) {
			%>
				<tr>
			<%
				for (int j = 0; j < rowCnt; j++) {
			%>
				<td><%=contents[index]%></td>
			<%
					index++;
				}
			%>
				</tr>
			<%
			}
			%>
		</table>
	</div>
</div>
<!-- 
<div class="btn-box2">
  <button class="btn btn-submit" id="btn" >이미지 생성</button>
</div>

</body>
<script>
var getCanvas; // global variable
$('#btn').on('click', function () {
	 html2canvas(document.querySelector("#bingo")).then(function(canvas) {
	 document.body.appendChild(canvas) 
	 getCanvas = canvas;
	}); 
});
</script> 
-->

</html>