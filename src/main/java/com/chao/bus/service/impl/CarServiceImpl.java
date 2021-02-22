package com.chao.bus.service.impl;

import com.chao.bus.domain.Car;
import com.chao.bus.mapper.CarMapper;
import com.chao.bus.service.CarService;
import com.chao.bus.vo.CarVo;
import com.chao.sys.utils.DataGridView;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    private CarMapper carMapper;

    @Override
    public DataGridView queryAllCar(CarVo carVo) {
        Page<Object> page= PageHelper.startPage(carVo.getPage(),carVo.getLimit());
        List<Car> data=this.carMapper.queryAllCar(carVo);

        System.out.println(carMapper.queryAllCar(carVo));
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addCar(CarVo carVo) {
        this.carMapper.insertSelective(carVo);
    }

    @Override
    public void deleteCar(String Carnumber) {

        this.carMapper.deleteByPrimaryKey(Carnumber);
    }

    @Override
    public void deleteBatchCar(String[] Carnumbers) {
        for (String ib : Carnumbers) {
            this.deleteCar(ib);
        }
    }

    @Override
    public void updateCar(CarVo carVo) {

        this.carMapper.updateByPrimaryKeySelective(carVo);
    }

}
