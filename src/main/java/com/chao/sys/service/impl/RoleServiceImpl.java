package com.chao.sys.service.impl;

import com.chao.sys.constast.SysConstast;
import com.chao.sys.domain.Menu;
import com.chao.sys.domain.Role;
import com.chao.sys.mapper.MenuMapper;
import com.chao.sys.mapper.RoleMapper;
import com.chao.sys.service.RoleService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.TreeNode;
import com.chao.sys.vo.RoleVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private MenuMapper menuMapper;
    /**
     * 查询所有菜单返回
     * @param roleVo
     * @return
     */
    @Override
    public List<Role> queryAllRoleForList(RoleVo roleVo) {

        return roleMapper.queryAllRole(roleVo);
    }


    @Override
    public List<Role> queryAllRoleByUserIdForList(RoleVo roleVo, Integer userId) {
        return roleMapper.queryAllRole(roleVo);
    }

    @Override
    public DataGridView queryAllRole(RoleVo roleVo) {
        Page<Object> page = PageHelper.startPage(roleVo.getPage(),roleVo.getLimit());
        List<Role> data = this.roleMapper.queryAllRole(roleVo);
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addRole(RoleVo roleVo) {
        this.roleMapper.insert(roleVo);
    }

    @Override
    public void updateRole(RoleVo roleVo) {

        this.roleMapper.updateByPrimaryKeySelective(roleVo);
    }

    @Override
    public void deleteRole(Integer roleid) {
        //删除角色表的数据
        this.roleMapper.deleteByPrimaryKey(roleid);
        //根据角色Id删除sys_role_menu里面的数据
        this.roleMapper.deleteRoleMenuByRid(roleid);
        //根据角色Id删除sys_role_user里面的数据
        this.roleMapper.deleteRoleUserByRid(roleid);
    }

    @Override
    public void deleteBatchRole(Integer[] ibs) {
        for (Integer ib : ibs) {
            deleteRole(ib);
        }
    }

    @Override
    public DataGridView initRoleMenuTreeJson(Integer roleid) {
        Menu menu=new Menu();
        menu.setAvailable(SysConstast.AVAILABLE_TRUE);
        List<Menu> menus = menuMapper.queryAllMenu(menu);
        List<Menu> RoleMenu=menuMapper.queryMenuById(SysConstast.AVAILABLE_TRUE,roleid);

        List<TreeNode> data = new ArrayList<>();
        for (Menu m1 : menus) {
            String checkArr=SysConstast.CODE_ZERO+"";
            for (Menu m2 : RoleMenu) {
                 if(m1.getId()== m2.getId())
                 {
                     checkArr=SysConstast.CODE_ONE+"";
                     break;
                 }
            }
            Integer id=m1.getId();
            Integer pid=m1.getPid();
            String title=m1.getTitle();
            Boolean spread=m1.getSpread()==SysConstast.SPREAD_TRUE?true:false;
            data.add(new TreeNode(id,pid,title,spread,checkArr));
        }
        return new DataGridView(data);
    }

    @Override
    public void saveRoleMenu(RoleVo roleVo) {
        //在保存之前删除之前的角色菜单信息
        Integer roleid = roleVo.getRoleid();
        this.roleMapper.deleteRoleMenuByRid(roleid);
        Integer[] ids = roleVo.getIds();

        for (Integer id : ids) {
            this.roleMapper.saveRoleMenu(roleid,id);
        }
    }
}
