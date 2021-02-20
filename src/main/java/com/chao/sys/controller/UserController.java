package com.chao.sys.controller;

import com.chao.sys.domain.User;
import com.chao.sys.service.RoleService;
import com.chao.sys.service.UserService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import com.chao.sys.vo.RoleVo;
import com.chao.sys.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 用户控制器
 */
@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    public UserService userService;
    /**
     * 查询所有角色
     * @param userVo
     * @return
     */
    @RequestMapping("loadAllUser")
    public DataGridView loadAllUser(UserVo userVo)
    {
        System.out.println(this.userService.queryAllUser(userVo));
        return this.userService.queryAllUser(userVo);
    }
    /**
     * 添加角色
     * @param userVo
     * @return
     */
    @RequestMapping("addUser")
    public ResultObj addUser(UserVo userVo) {

        try {

           this.userService.addUser(userVo);
           return ResultObj.ADD_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }
    /**
     * 修改角色
     * @param userVo
     * @return
     */
    @RequestMapping("updateUser")
    public ResultObj updateUser(UserVo userVo) {

        System.out.println(userVo);
        try {
            this.userService.updateUser(userVo);

            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }
    /**
     * 删除角色
     * @param userVo
     * @return
     */
    @RequestMapping("deleteUser")
    public ResultObj deleteUser(UserVo userVo) {

        try {
            this.userService.deleteUser(userVo.getUserid());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /**
     * 删除角色
     * @param userVo
     * @return
     */
    @RequestMapping("deleteBatchUser")
    public ResultObj deleteBatchUser(UserVo userVo) {

        try {
            this.userService.deleteBatchUser(userVo.getIds());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 重置密码
     * @param userVo
     * @return
     */
    @RequestMapping("resetUserPwd")
    public ResultObj resetUserPwd(UserVo userVo) {
        System.out.println(userVo.getUserid());
        try {
            this.userService.resetUserPwd(userVo.getUserid());

            return ResultObj.RESET_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.RESET_ERROR;
        }
    }

    /**
     * 加载用户角色
     * @param userid
     * @return
     */
    @RequestMapping("initUserRole")
    public DataGridView initUserRole(Integer userid)
    {
     return this.userService.queryUserRole(userid);
    }

    /**
     * 保存用户和角色的关系
     * @param userVo
     * @return
     */
    @RequestMapping("saveUserRole")
    public ResultObj saveUserRole(UserVo userVo)
    {
        try
        {
            this.userService.saveUserRole(userVo);
            return ResultObj.DISPATCH_SUCCESS;
        }catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DISPATCH_ERROR;
        }

    }
}
