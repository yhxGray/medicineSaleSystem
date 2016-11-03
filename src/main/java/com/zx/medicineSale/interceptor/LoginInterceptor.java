package com.zx.medicineSale.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.zx.medicineSale.bean.User;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(request.getRequestURI().contains("login.do")||request.getRequestURI().contains("itservice.do")
				||request.getRequestURI().contains("products.do")||request.getRequestURI().contains("employee.do")
				||request.getRequestURI().contains("contactUs.do")||request.getRequestURI().contains("index.jsp")
				||request.getRequestURI().contains("register.do")||request.getRequestURI().contains("verifyCode.do")
				||request.getRequestURI().contains("addUser.do")){
			return true;
		}else{
			User loginUser=(User)request.getSession().getAttribute("loginUser");
			if(loginUser==null){
				request.getRequestDispatcher("/index.jsp").forward(request, response);
				return false;
			}else{
				System.out.println(loginUser.getUsername());
				return true;
			}
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if(modelAndView != null){  //加入当前时间  
            modelAndView.addObject("haha", "测试postHandle");  
        } 
	}
}
