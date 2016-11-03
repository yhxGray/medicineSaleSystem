package com.zx.medicineSale.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.medicineSale.bean.Medicine;
import com.zx.medicineSale.dao.MedicineMapper;
import com.zx.medicineSale.service.MedicineService;
@Service
public class MedicineServiceImpl implements MedicineService {
	@Autowired
	private MedicineMapper medicineMapper;

	@Override
	public List<Medicine> show(int beginIndex,int endIndex) {
		return medicineMapper.select(beginIndex,endIndex);
	}
	
	
	public int getEndPageIndex(int currentItems) {
		return medicineMapper.itemsCount();
	}
	
	
}
