package com.chao.sys.service;

import com.chao.sys.domain.Menu;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.MenuVo;

import java.util.List;

public interface MenuService {

    /**
     * 超级管理员登录菜单列表
     * @param menuVo
     * @return
     */
    public List<Menu> queryAllMenuForList(MenuVo menuVo);

    /**
     * 根据用户权限查询菜单列表
     * @param menuVo
     * @param userId
     * @return
     */
    public List<Menu> queryAllMenuByUserIdForList(MenuVo menuVo,Integer userId);

    /**
     * 查询所有菜单
     * @param menuVo
     * @return
     */
    public DataGridView queryAllMenu(MenuVo menuVo);

    /**
     * 增加菜单
     * @param menuVo
     */
    void addMenu(MenuVo menuVo);

    /**
     * 修改菜单
     * @param menuVo
     */
    void updateMenu(MenuVo menuVo);

    /**
     * 根据pid查询所有菜单
     * @param
     * @return
     */
    Integer queryMenuByPid(Integer pid);

    /**
     * 删除菜单
     */
    void deleteMenu(MenuVo menuVo);
}
