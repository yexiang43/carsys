package com.chao.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 业务管理路由
 */
@Controller
@RequestMapping("bus")
public class BusController {

    @RequestMapping("toCustomerManager")
    public String toCustomerManager()
    {
        return "business/customer/customerManager";
    }
}
