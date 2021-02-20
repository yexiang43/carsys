package com.chao.sys.controller;

import com.chao.sys.constast.SysConstast;
import com.chao.sys.domain.Menu;
import com.chao.sys.domain.User;
import com.chao.sys.service.MenuService;
import com.chao.sys.utils.*;
import com.chao.sys.vo.MenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * 系统控制器
 */
@RestController
@RequestMapping("menu")
public class MenuController {

    @Autowired
    public MenuService menuService;

    @RequestMapping("loadIndexleftMenuJson")
    public List loadIndexleftMenuJson(MenuVo menuVo)
    {
        User user =(User) WebUtils.getHttpSession().getAttribute("user");

        List<Menu> menus=null;
        menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);//只查询可用的
        if(user.getType()==SysConstast.USER_TYPE_SUPER)
        {
            menus = this.menuService.queryAllMenuForList(menuVo);
        }else
        {
            menus = this.menuService.queryAllMenuByUserIdForList(menuVo, user.getUserid());
        }

        List<TreeNode> nodes=new ArrayList<>();

        for (Menu menu : menus) {
        nodes.add(new TreeNode(menu.getId(),menu.getPid(),menu.getTitle(),
        menu.getIcon(),menu.getHref(),menu.getSpread()==SysConstast.SPREAD_TRUE?true:false,menu.getTarget()));
        }

        return TreeNodeBuilder.builder(nodes,1);
    }


    @RequestMapping("loadMenuManagerLeftTreeJson")
    public DataGridView loadMenuManagerLeftTreeJson(MenuVo menuVo)
    {
        menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);//只查询可用的
        List<Menu> menus = this.menuService.queryAllMenuForList(menuVo);

        List<TreeNode> nodes=new ArrayList<>();
        for (Menu menu : menus) {
            nodes.add(new TreeNode(menu.getId(),menu.getPid(),menu.getTitle(),
                    menu.getIcon(),menu.getHref(),menu.getSpread()==SysConstast.SPREAD_TRUE?true:false,menu.getTarget()));
        }

        return new DataGridView(nodes);
    }

    @RequestMapping("loadAllMenu")
    public DataGridView loadAllMenu(MenuVo menuVo)
    {

        return this.menuService.queryAllMenu(menuVo);
    }

    /**
     * 添加菜单
     * @param menuVo
     * @return
     */
    @RequestMapping("addMenu")
    public ResultObj addMenu(MenuVo menuVo) {

        try {
           this.menuService.addMenu(menuVo);

           return ResultObj.ADD_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改菜单
     * @param menuVo
     * @return
     */
    @RequestMapping("updateMenu")
    public ResultObj updateMenu(MenuVo menuVo) {

        try {
            this.menuService.updateMenu(menuVo);

            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除菜单
     * @param menuVo
     * @return
     */
    @RequestMapping("deleteMenu")
    public ResultObj deleteMenu(MenuVo menuVo) {

        try {
            this.menuService.deleteMenu(menuVo);

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 判断是否存在子节点
     */
    @RequestMapping("checkMenuHasChildren")
    public ResultObj checkMenuHasChildren(MenuVo menuVo) {
        Integer code = this.menuService.queryMenuByPid(menuVo.getId());
        System.out.println(code);
        if (code > 0)
        {
           return ResultObj.STATUS_TRUE;
        }else
        {
            return ResultObj.STATUS_FALSE;
        }
    }
}
