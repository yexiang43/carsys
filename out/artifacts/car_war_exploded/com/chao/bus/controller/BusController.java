package com.chao.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 业务管理路由
 */
@Controller
@RequestMapping("bus")
public class BusController {

    /**
     * 跳转客户管理
     * @return
     */
    @RequestMapping("toCustomerManager")
    public String toCustomerManager()
    {
        return "business/customer/customerManager";
    }
    /**
     * 跳转车辆管理
     * @return
     */
    @RequestMapping("toCarManager")
    public String toCarManager()
    {
        return "business/car/carManager";
    }
    /**
     * 跳转车辆出租管理
     * @return
     */
    @RequestMapping("toRentCarManager")
    public String toRentCarManager()
    {
        return "business/rent/rentCarManager";
    }

}
