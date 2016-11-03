package com.zx.medicineSale.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zx.medicineSale.bean.User;
import com.zx.medicineSale.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="login.do")
	public String login(HttpServletRequest req,User user,HttpServletResponse res) throws ServletException, IOException{
		User uu=userService.login(user);
		req.getSession().setAttribute("loginUser", uu);
		if(uu!=null){
			if(uu.getRoleId()!=null&&uu.getRoleId()<=3){
				return "products_showusers";
			}else{
				return "products";
			}
		}
		req.getRequestDispatcher("index.jsp").forward(req, res);
		return null;
	}
	
	@RequestMapping(value="cancel.do",method=RequestMethod.GET)
	public String cancel(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		req.getSession().removeAttribute("loginUser");
		req.getRequestDispatcher("index.jsp").forward(req, res);
		return null;
	}
	
	@RequestMapping("show.do")
	public String show(){
		return "products_show";
	}
	
	@RequestMapping("wkk.do")
	public String wkk(){
		System.out.println("wkkkkk");
		return "products";
	}
	
	@RequestMapping(value="user_list.do",method=RequestMethod.POST)
	public String user_list(HttpServletRequest req,User user,HttpServletResponse res){
		
		return "products_showusers";
	}
	
	@RequestMapping(value="addUser.do",method=RequestMethod.POST)
	public String addUser(HttpServletRequest req,User user,HttpServletResponse res) throws ServletException, IOException{
		String validateCode=(String)req.getSession().getAttribute("validateCode");
		res.setContentType("utf-8");
		PrintWriter out=res.getWriter();
		if(req.getParameter("code").toLowerCase().equals(validateCode.toLowerCase())){
			User sameNameUser=userService.findByName(user.getUsername());
			if(sameNameUser!=null){
				out.print("该用户名已被注册！");
			}else{
				Date date=new Date();
				DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String dateS=df.format(date);
				user.setRegistDate(dateS);
				if(user.getRoleId()==null){
					user.setRoleId(9);
				}
				userService.insert(user);
				req.getSession().setAttribute("loginUser", user);
				out.print("ok");
			}
		}else{
			out.print("验证码错误！");
		}
	       ObjectMapper om=new ObjectMapper();
	       String uu=om.writeValueAsString(user); 
		out.flush();
		out.close();
		return null;
	}
	
	
}
