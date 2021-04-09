<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<title>GRID TOAST</title>
<!-- 	<script src="https://code.jquery.com/jquery-1.11.3.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/tui-grid.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/tui-grid.css" type="text/css" />
</head>

<body>
<script>
window.onload = function() {
	var grid = new tui.Grid({
	    el: document.getElementById('grid'),
	   // data: gridData,
	    scrollX: false,
	    scrollY: false,
	    columns: [
	      {
	        header: 'Name',
	        name: 'name'
	      },
	      {
	        header: 'Artist',
	        name: 'artist'
	      },
	      {
	        header: 'Type',
	        name: 'type'
	      },
	      {
	        header: 'Release',
	        name: 'release'
	      },
	      {
	        header: 'Genre',
	        name: 'genre'
	      }
	    ]
	  });
	
	$.ajax({
		url: '/ajax/toastList.do', //toastDataList
		method: 'POST',
		datatype: 'JSON',
		success: function(result) {
			console.log(result);
			console.log('결과');
			console.dir(result);
			grid.resetData(result);
			grid.resetData(eval(result));
			
// 			var i = result.data;
// 			console.log('i = ' + i);
// 			var result = data.json;
// 			console.log(result);
			
// 			$.each(result, function(idx,val) {
// 				console.log(idx + "" + val.name);
// 			});

// 			$.each(data, function(idx, val) {
// 		$(data).each(function(idx, val){
// 				console.log(idx);
// 				console.log(val.idx);
// // 				console.log(idx + " " + val.name);
// 			});
			
		
		},
		error: function(xhr, error) {
			console.log(xhr);
			console.log(error);
		}
	});
};
</script>
	<h1>그리드 테스트1</h1>
	<div id="grid"></div>
</body>
</html>


