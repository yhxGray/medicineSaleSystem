$(function(){
	var currentItems=$("#currentItemsR").text();
	if(currentItems!=""){
		$("#currentItems").attr("value",currentItems);
	}	
	$("#currentItems").change(function(){
		window.location.href="products_show.do?pageIndex="+$("pageIndexR").text()+"&currentItems="+$("#currentItems").val();
	});
});