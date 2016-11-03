$(function(){
	$("#username").blur(function(){
		usernameCheck();
	});
	$("#password").blur(function(){
		passwordCheck();
	});
	$("#password2").blur(function(){
		password2Check();
	});
	$("#email").blur(function(){
		emailCheck();
	});
	$("#addUser").click(function(){
		usernameCheck();
		passwordCheck();
		password2Check();
		emailCheck();
		if($("#usernameV").text()==""&&$("#passwordV").text()==""&&$("#password2V").text()==""&&$("#emailV").text()==""){
			$.post("addUser.do",
					{
						username:$("#username").val(),
						password:$("#password").val(),
						companyName:$("#companyName").val(),
						city:$("#city").val(),
						phone:$("#phone").val(),
						email:$("#email").val(),
						roleId:$("#roleId").val(),
						code:$("#code").val()
					},
					function(data){
						if(data=="ok"){
							window.location.href="index.jsp";
						}else{
							//alert(data);
							//var uu=eval("("+data+")");
							//window.location.href="login.do?user="+uu;
							alert(data);
						}
			});
		}
	});
	
});

function usernameCheck(){
	var username=$("#username").val();
	if(username==""){
		$("#usernameV").html("用户名不能为空!");
	}else if(!username.match(/^\w{2,8}$/)){
		$("#usernameV").html("用户名应为2-8个常用字符");
	}else{
		$("#usernameV").html("");
	}
}

function passwordCheck(){
	var password=$("#password").val();
	if(password==""){
		$("#passwordV").html("密码不能为空!");
	}else if(!password.match(/^.{2,12}$/)){
		$("#passwordV").html("密码长度2-12");
	}else{
		$("#passwordV").html("");
	}
}

function password2Check(){
	if($("#password2").val()!=$("#password").val()){
		$("#password2V").html("两次密码不一致");
	}else{
		$("#password2V").html("");
	}
}

function emailCheck(){
	var email=$("#email").val();
	if(email==""){
		$("#emailV").html("请输入邮箱!");
	}else if(!email.match(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/)){
		$("#emailV").html("邮箱格式不正确！");
	}else{
		$("#emailV").html("");
	}
}