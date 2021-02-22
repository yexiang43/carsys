package com.chao.bus.mapper;

import com.chao.bus.domain.Car;

import java.util.List;

public interface CarMapper {
    int deleteByPrimaryKey(String carnumber);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(String carnumber);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    List<Car> queryAllCar(Car car);
}