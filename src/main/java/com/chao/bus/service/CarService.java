package com.chao.bus.service;


import com.chao.bus.domain.Car;
import com.chao.bus.vo.CarVo;
import com.chao.sys.utils.DataGridView;

public interface CarService {

    /**
     * 查询所有车辆
     *
     * @param carVo
     * @return
     */
    public DataGridView queryAllCar(CarVo carVo);

    /**
     * 增加车辆
     *
     * @param carVo
     */
    void addCar(CarVo carVo);

    /**
     * 修改车辆
     *
     * @param carVo
     */
    void updateCar(CarVo carVo);
    /**
     * 根据用户Id删除车辆
     */
    void deleteCar(String identity);

    /**
     * 批量删除车辆
     */
    void deleteBatchCar(String[] identitys);

    /**
     * 根据车牌号查询车辆
     * @param carnumber
     * @return
     */
    Car queryCarNumber(String carnumber);
}
