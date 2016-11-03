$(function(){
	var loginUserJudge=$("#loginUserJudge").text();
	if(loginUserJudge!=null&&loginUserJudge!=""){
		$("#loginForm").hide();
		$("#loginCancel").show();
		$("#loginUser").show();
	}else{
		$("#loginCancel").hide();
		$("#loginUser").hide();
	}
	var adminUserJudge=$("#adminUserJudge").text();
	if(adminUserJudge!=""&&adminUserJudge<4){
		$("#adminPage").show();
	}else{
		$("#adminPage").hide();
	}
});