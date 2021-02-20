package com.chao.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 系统跳转控制器
 */
@Controller
@RequestMapping("sys")
public class sysController {


    @RequestMapping("toMenuManager")
    public String Desk()
    {
        return "system/menu/MenuManager";
    }

    /**
     * 左面菜单树加载
     * @return
     */
    @RequestMapping("toMenuLeft")
    public String toMenuLeft()
    {
        return "system/menu/MenuLeft";
    }

    /**
     * 右边菜单
     */
    @RequestMapping("toMenuRight")
    public String toMenuRight()
    {
        return "system/menu/MenuRight";
    }

    /**
     * 跳转角色管理
     */
    @RequestMapping("toRoleManager")
    public String toRoleManger()
    {
        return "system/role/roleManager";
    }
    /**
     * 跳转用户管理
     */
    @RequestMapping("toUserManager")
    public String toUserManger()
    {
        return "system/user/userManager";
    }
    /**
     * 跳转用户管理
     */
    @RequestMapping("toLogInfoManager")
    public String toLogInfoManager()
    {
        return "system/logInfo/logInfoManager";
    }
    /**
     * 跳转公告管理
     */
    @RequestMapping("toNewsManager")
    public String toNewsManager()
    {
        return "system/news/newsManager";
    }
}
