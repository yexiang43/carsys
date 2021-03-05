package com.chao.bus.controller;

import com.chao.bus.service.RentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rent")
public class RentController {

    @Autowired
    private RentService rentService;


}
