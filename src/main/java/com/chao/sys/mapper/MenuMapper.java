package com.chao.sys.mapper;

import com.chao.sys.domain.Menu;
import com.chao.sys.vo.MenuVo;
import com.chao.sys.vo.RoleVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface MenuMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    /**
     * 查询所有菜单
     */
    List<Menu> queryAllMenu(Menu menu);

    /**
     * 根据pid查询菜单数量
     */
    Integer queryMenuByPid(Integer pid);
    /**
     * 根据角色Id查询可用菜单
     * @param available
     * @param roleid
     * @return
     */
    List<Menu> queryMenuById(@Param("available") Integer available, @Param("rid") Integer roleid);

    /**
     * 根据用户id 查询菜单
     * @param available
     * @param userId
     * @return
     */
    List<Menu> queryAllMenuByUid(@Param("available") Integer available, @Param("uid") Integer userId);
}