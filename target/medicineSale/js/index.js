$(document).ready(function(){
	$("#d22").click(function(){
		$("#loginDiv").toggle();
	});
	
	$("#loginCommit").click(function(){
		$.post("student_login",{
			name:$("#name").val(),
			password:$("#password").val()
		},function(data,status){
			alert(data+" "+status);
		});
	});
		

});


