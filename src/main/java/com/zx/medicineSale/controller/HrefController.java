package com.zx.medicineSale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HrefController {

	@RequestMapping("products.do")
	public String products(){
		return "products";
	}
	
	@RequestMapping("itservice.do")
	public String itservice(){
		return "itservice";
	}
	
	@RequestMapping("employee.do")
	public String employee(){
		return "employee";
	}
	
	@RequestMapping("contactUs.do")
	public String contactUs(){
		return "contactUs";
	}
	
	@RequestMapping("products_showyk.do")
	public String products_showyk(){
		return "products_showyk";
	}
	
	@RequestMapping("product_searchyk.do")
	public String product_searchyk(){
		return "product_searchyk";
	}
	
	@RequestMapping("register.do")
	public String register(){
		return "register";
	}
	
	@RequestMapping("cartshowyk.do")
	public String cartshowyk(){
		return "cartshowyk";
	}
	
	@RequestMapping("products_search_show.do")
	public String products_search_show(){
		return "products_search_show";
	}
	
	@RequestMapping("product_search.do")
	public String product_search(){
		return "product_search";
	}
	
	@RequestMapping("ordershow.do")
	public String ordershow(){
		return "ordershow";
	}
	
	@RequestMapping("cartshow.do")
	public String cartshow(){
		return "cartshow";
	}
	
	@RequestMapping("checkoutyk.do")
	public String checkoutyk(){
		return "checkoutyk";
	}
		
	@RequestMapping("orderitem_show.do")
	public String orderitem_show(){
		return "orderitem_show";
	}
	
	@RequestMapping("checkout.do")
	public String checkout(){
		return "checkout";
	}
	
	@RequestMapping("cartshowyk1.do")
	public String cartshowyk1(){
		return "cartshowyk1";
	}
	
	@RequestMapping("products_showusers.do")
	public String products_showusers(){
		return "products_showusers";
	}
	
	@RequestMapping("admin_products_show.do")
	public String admin_products_show(){
		return "admin_products_show";
	}
	
	@RequestMapping("mailmanager.do")
	public String mailmanager(){
		return "mailmanager";
	}
	
	@RequestMapping("admin_ordershow.do")
	public String admin_ordershow(){
		return "admin_ordershow";
	}
	
	@RequestMapping("add_products_admin.do")
	public String add_products_admin(){
		return "add_products_admin";
	}
	
	@RequestMapping("update_products_admin.do")
	public String update_products_admin(){
		return "update_products_admin";
	}
	
}
