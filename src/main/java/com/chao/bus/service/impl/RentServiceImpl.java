package com.chao.bus.service.impl;

import com.chao.bus.constant.SysConstast;
import com.chao.bus.domain.Car;
import com.chao.bus.mapper.CarMapper;
import com.chao.bus.mapper.RentMapper;
import com.chao.bus.service.RentService;
import com.chao.bus.vo.RentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RentServiceImpl implements RentService {

    @Autowired
    private RentMapper rentMapper;

    @Autowired
    private CarMapper carMapper;
    @Override
    public void addRent(RentVo rentVo) {
        this.rentMapper.insertSelective(rentVo);
        //更改车辆状态
        Car car=new Car();
        car.setCarnumber(rentVo.getCarnumber());
        car.setIsrenting(SysConstast.RENT_CAR_TRUE);
        carMapper.updateByPrimaryKeySelective(car);
    }
}
