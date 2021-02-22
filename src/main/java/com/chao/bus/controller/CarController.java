package com.chao.bus.controller;

import com.chao.bus.service.CarService;
import com.chao.bus.vo.CarVo;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping("car")
public class CarController {

    @Autowired
    private CarService carService;

    /**
     * 查询所有车辆
     * @param carVo
     * @return
     */
    @RequestMapping("loadAllCar")
    public DataGridView loadAllCar(CarVo carVo)
    {
        return this.carService.queryAllCar(carVo);
    }

    /**
     * 添加车辆
     * @param carVo
     * @return
     */
    @RequestMapping("addCar")
    public ResultObj addCar(CarVo carVo) {

        try {
            carVo.setCreatetime(new Date());
            this.carService.addCar(carVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改车辆
     * @param carVo
     * @return
     */
    @RequestMapping("updateCar")
    public ResultObj UpdateCar(CarVo carVo) {
        System.out.println(carVo);
        try {
            this.carService.updateCar(carVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除车辆
     * @param carVo
     * @return
     */
    @RequestMapping("deleteCar")
    public ResultObj deleteCar(CarVo carVo) {

        try {
            this.carService.deleteCar(carVo.getCarnumber());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /**
     * 批量删除车辆
     * @param carVo
     * @return
     */
    @RequestMapping("deleteBatchCar")
    public ResultObj deleteBatchCar(CarVo carVo) {

        try {
            this.carService.deleteBatchCar(carVo.getIds());
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
}
