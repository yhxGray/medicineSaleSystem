package com.zx.medicineSale.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zx.medicineSale.bean.Medicine;
@Service
public interface MedicineService {
	public List<Medicine> show(int beginIndex,int endIndex);
	
	public int getEndPageIndex(int currentItems);
}
