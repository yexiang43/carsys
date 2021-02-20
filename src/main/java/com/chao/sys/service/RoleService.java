package com.chao.sys.service;

import com.chao.sys.domain.Role;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.RoleVo;

import java.util.List;

public interface RoleService {

    /**
     * 用户列表
     * @param roleVo
     * @return
     */
    public List<Role> queryAllRoleForList(RoleVo roleVo);

    /**
     * 根据用户Id查询角色列表
     * @param roleVo
     * @param userId
     * @return
     */
    public List<Role> queryAllRoleByUserIdForList(RoleVo roleVo,Integer userId);

    /**
     * 查询所有角色
     * @param roleVo
     * @return
     */
    public DataGridView queryAllRole(RoleVo roleVo);

    /**
     * 增加角色
     * @param roleVo
     */
    void addRole(RoleVo roleVo);

    /**
     * 修改角色
     * @param roleVo
     */
    void updateRole(RoleVo roleVo);

    /**
     * 根据用户Id删除角色
     */
    void deleteRole(Integer roleid);

    /**
     * 批量删除角色
     */
    void deleteBatchRole(Integer []ibs);

    /**
     * 初始化分配菜单树
     * @param roleid
     * @return
     */
    DataGridView initRoleMenuTreeJson(Integer roleid);

    /**
     * 保存角色分配的菜单
     */
    void saveRoleMenu(RoleVo roleVo);
}
