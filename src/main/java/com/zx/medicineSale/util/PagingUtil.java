package com.zx.medicineSale.util;

import java.util.HashMap;
import java.util.Map;

public class PagingUtil {
	public static Map<String,Integer> doPaging(String pageIndexStr,String currentItemsStr,int itemsCount){
		Map<String,Integer> map=new HashMap<String, Integer>();
		int pageIndex=1;
		int currentItems=5;
		if(pageIndexStr!=null&&!pageIndexStr.equals("")){
			pageIndex=Integer.parseInt(pageIndexStr);
		}	
		if(currentItemsStr!=null&&!currentItemsStr.equals("")){
			currentItems=Integer.parseInt(currentItemsStr);
		}
		int endPageIndex=getEndPageIndex(itemsCount,currentItems);
		if(pageIndex<1){
			pageIndex=1;
		}else if(pageIndex>endPageIndex){
			pageIndex=endPageIndex;
		}
		map.put("pageIndex", pageIndex);
		map.put("currentItems", currentItems);
		map.put("endPageIndex", endPageIndex);
		return map;
	}
	
	public static int getEndPageIndex(int itemsCount,int currentItems){
		return itemsCount%currentItems==0?(itemsCount/currentItems):(itemsCount/currentItems+1);
	}
}
