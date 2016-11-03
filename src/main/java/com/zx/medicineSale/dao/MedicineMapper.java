package com.zx.medicineSale.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.zx.medicineSale.bean.Medicine;
@Repository
public interface MedicineMapper {
	List<Medicine> select(@Param("begin")int beginIndex,@Param("end")int endIndex);
	
    int deleteByPrimaryKey(Integer id);

    int insert(Medicine record);

    int insertSelective(Medicine record);

    Medicine selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Medicine record);

    int updateByPrimaryKey(Medicine record);
    
    int itemsCount();
}