package com.chao.sys.mapper;

import com.chao.sys.domain.Menu;
import com.chao.sys.domain.Role;
import com.chao.sys.vo.RoleVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Role role);

    int insertSelective(Role role);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role role);

    int updateByPrimaryKey(Role role);

    /**
     * 查询所有角色
     * @return
     */
    List<Role> queryAllRole(Role role);

    /**
     *根据角色Id删除sys_role_menu里面的数据
     */
    void deleteRoleMenuByRid(Integer roleid);

    /**
     * 根据角色Id删除sys_role_user里面的数据
     * @param roleid
     */
    void deleteRoleUserByRid(Integer roleid);
    /**
     * 保存角色菜单信息
     */
    void saveRoleMenu(@Param("rid") Integer roleid,@Param("mid") Integer id);
    /**
     * 根据用户Id删除sys_role_user里面的数据
     * @param userid
     */
    void deleteRoleUserByUid(Integer userid);

    /*
    根据用户id查询已拥有的角色
     */
    List<Role> queryAllRoleByUid(@Param("available") Integer availableTrue, @Param("userid") Integer userid);
}
