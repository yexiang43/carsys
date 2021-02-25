package com.chao.bus.service.impl;

import com.chao.bus.constant.SysConstast;
import com.chao.bus.domain.Car;
import com.chao.bus.domain.Customer;
import com.chao.bus.domain.Rent;
import com.chao.bus.mapper.CarMapper;
import com.chao.bus.mapper.RentMapper;
import com.chao.bus.service.RentService;
import com.chao.bus.vo.RentVo;
import com.chao.sys.utils.DataGridView;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.soap.SAAJResult;
import java.util.List;

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

    @Override
    public DataGridView queryAllRent(RentVo rentVo) {
        Page<Object> page= PageHelper.startPage(rentVo.getPage(),rentVo.getLimit());
        List<Rent> data=this.rentMapper.queryAllRent(rentVo);

        System.out.println(rentMapper.queryAllRent(rentVo));
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void deleteRent(String rentid) {
        Rent rent = this.rentMapper.selectByPrimaryKey(rentid);
        Car car=new Car();
        car.setCarnumber(rent.getCarnumber());
        car.setIsrenting(SysConstast.RENT_CAR_FALSE);
        carMapper.updateByPrimaryKeySelective(car);
        this.rentMapper.deleteByPrimaryKey(rentid);
    }

    @Override
    public void updateRent(RentVo rentVo) {
       this.rentMapper.updateByPrimaryKeySelective(rentVo);
    }
}
