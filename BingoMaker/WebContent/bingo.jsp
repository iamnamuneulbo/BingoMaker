<!--
Copyright (c) 2017 by Lewis Robinson (http://codepen.io/lewisvrobinson/pen/EyZwjR)
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BINGO MAKER</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="bingo.js"></script>

<style>
.group2 {
	display: inline-block;
	position: relative;
}
.colorGroup {
	display: inline-block;
	width: 59px;
	height: 50px;
	position: relative;
}
</style>
</head>

<body>
<div class="wrapper">
	<form action="makeBingo.jsp" method="post" id="bingoForm">
		<h1>BINGO MAKER</h1>
		<h5><a href="https://instagram.com/sk._.ee" target="_blank">@sk._.ee</a></h5>
		<hr class="sep"/>
	
		<div class="group">
			<input type="text" name="title" required="required"><span class="bar"></span>
			<label>제목</label>
		</div>
		<div class="group">
			<input type="text" name="make" ><span class="bar"></span>
			<label>만든 사람</label>
		</div>
		<div class="group2">
			<input type="color" name="bgColor" class="colorGroup" value="#424242">
			<label>배경 색</label>
		</div>
		<div class="group2">
			<input type="color" name="titleColor" class="colorGroup" value="#2196F3">
			<label>제목 색</label>
		</div>
		<div class="group2">
			<input type="color" name="tableBgColor" class="colorGroup" value="#ffffff">
			<label>표 배경 색</label>
		</div>
		<div class="group2">
			<input type="color" name="tableBorderColor" class="colorGroup" value="#2196F3">
			<label>표 선 색</label>
		</div>
		<div class="group2">
			<input type="color" name="tableTextColor" class="colorGroup" value="#000000">
			<label>글씨 색</label>
		</div>
		<div class="group">
			<input type="number" name="size" required="required" min="3" onchange="listDraw(this)"><span class="bar"></span>
			<label>크기(ex. 3 입력시 3×3 빙고 생성)</label>
		</div>
	</form>
</div>
 <a href='http://www.freevisitorcounters.com'>free counters</a> <script type='text/javascript' src='https://www.freevisitorcounters.com/auth.php?id=1316cba684fb44c6b1d41a11de94b9ab624199f7'></script>
<script type="text/javascript" src="https://www.freevisitorcounters.com/en/home/counter/478355/t/3"></script>
</body>
</html>