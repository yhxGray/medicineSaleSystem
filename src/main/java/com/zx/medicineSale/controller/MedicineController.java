package com.zx.medicineSale.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zx.medicineSale.bean.Medicine;
import com.zx.medicineSale.service.MedicineService;
import com.zx.medicineSale.util.PagingUtil;

@Controller
public class MedicineController {
	@Autowired
	private MedicineService medicineService;
	
	@RequestMapping(value="products_show.do",method=RequestMethod.GET)
	public String products_show(HttpServletRequest req,HttpServletResponse res){
		String pageIndexStr=req.getParameter("pageIndex");
		String currentItemsStr=req.getParameter("currentItems");
		int itemsCount=medicineService.getEndPageIndex(0);
		Map<String,Integer> pageMap=PagingUtil.doPaging(pageIndexStr, currentItemsStr, itemsCount);
		
		List<Medicine> medicines=medicineService.show((pageMap.get("pageIndex")-1)*pageMap.get("currentItems"),pageMap.get("currentItems"));
		req.setAttribute("medicines", medicines);
		req.setAttribute("pageIndex", pageMap.get("pageIndex"));
		req.setAttribute("endPageIndex", pageMap.get("endPageIndex"));
		req.setAttribute("currentItems", pageMap.get("currentItems"));
		return "products_show";
	}
	
}
