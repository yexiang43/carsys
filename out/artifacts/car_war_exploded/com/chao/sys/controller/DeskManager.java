package com.chao.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 工作台
 */
@Controller
@RequestMapping("desk")
public class DeskManager {

    /**
     * 跳转到控制台
     * @return
     */
    @RequestMapping("toDeskManager")
    public String toDeskManager()
    {
        return "system/main/DeskManager";
    }

}
