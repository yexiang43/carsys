package com.chao.sys.controller;

import com.chao.sys.service.RoleService;
import com.chao.sys.utils.*;
import com.chao.sys.vo.RoleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.ResultSet;

/**
 * 用户控制器
 */
@RestController
@RequestMapping("role")
public class RoleController {

    @Autowired
    public RoleService roleService;
    /**
     * 查询所有角色
     * @param roleVo
     * @return
     */
    @RequestMapping("loadAllRole")
    public DataGridView loadAllRole(RoleVo roleVo)
    {
        System.out.println(this.roleService.queryAllRole(roleVo));
        return this.roleService.queryAllRole(roleVo);
    }
    /**
     * 添加角色
     * @param roleVo
     * @return
     */
    @RequestMapping("addRole")
    public ResultObj addRole(RoleVo roleVo) {

        try {

           this.roleService.addRole(roleVo);
           return ResultObj.ADD_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }
    /**
     * 修改角色
     * @param roleVo
     * @return
     */
    @RequestMapping("updateRole")
    public ResultObj updateRole(RoleVo roleVo) {
        System.out.println(roleVo+"12222");
        try {
            this.roleService.updateRole(roleVo);

            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }
    /**
     * 删除角色
     * @param roleVo
     * @return
     */
    @RequestMapping("deleteRole")
    public ResultObj deleteRole(RoleVo roleVo) {

        try {
            this.roleService.deleteRole(roleVo.getRoleid());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /**
     * 删除角色
     * @param roleVo
     * @return
     */
    @RequestMapping("deleteBatchRole")
    public ResultObj deleteBatchRole(RoleVo roleVo) {

        try {
            this.roleService.deleteBatchRole(roleVo.getIds());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 分配菜单Json
     * @param roleid
     * @return
     */
    @RequestMapping("initRoleMenuTreeJson")
    public DataGridView initRoleMenuTreeJson(Integer roleid)
    {
        return this.roleService.initRoleMenuTreeJson(roleid);
    }

    /**
     * 保存角色菜单信息
     * @param roleVo
     * @return
     */
    @RequestMapping("saveRoleMenu")
    public ResultObj saveRoleMenu(RoleVo roleVo)
    {
        try {
            this.roleService.saveRoleMenu(roleVo);
            return ResultObj.DISPATCH_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DISPATCH_ERROR;
        }
    }
}
