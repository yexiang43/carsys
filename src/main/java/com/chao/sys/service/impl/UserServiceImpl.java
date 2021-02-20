package com.chao.sys.service.impl;

import com.chao.sys.constast.SysConstast;
import com.chao.sys.domain.Role;
import com.chao.sys.domain.User;
import com.chao.sys.mapper.RoleMapper;
import com.chao.sys.mapper.UserMapper;
import com.chao.sys.service.UserService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import com.chao.sys.vo.RoleVo;
import com.chao.sys.vo.UserVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoleMapper roleMapper;
    /**
     * 用户登陆
     * @param userVo
     * @return
     */
    @Override
    public User login(UserVo userVo) {
        //明文123456
        //生成密文
        String pwd = DigestUtils.md5DigestAsHex(userVo.getPwd().getBytes());
        System.out.println(pwd);
        userVo.setPwd(pwd);
        return userMapper.login(userVo);
    }

    @Override
    public DataGridView queryAllUser(UserVo userVo) {
        Page<Object> page = PageHelper.startPage(userVo.getPage(),userVo.getLimit());
        List<User> data = this.userMapper.queryAllUser(userVo);
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addUser(UserVo userVo) {
        userVo.setPwd(DigestUtils.md5DigestAsHex(SysConstast.USER_DEFAULT_PWD.getBytes()));
        userVo.setType(SysConstast.USER_TYPE_NORMAL);
        this.userMapper.insertSelective(userVo);
    }

    @Override
    public void updateUser(UserVo userVo) {
        System.out.println(userVo+"service=========");
        this.userMapper.updateByPrimaryKeySelective(userVo);
    }

    @Override
    public void deleteUser(Integer userid) {
        this.userMapper.deleteByPrimaryKey(userid);
        this.roleMapper.deleteRoleUserByUid(userid);
    }

    @Override
    public void deleteBatchUser(Integer[] ibs) {
        for (Integer ib : ibs) {
            this.userMapper.deleteByPrimaryKey(ib);
        }
    }

    @Override
    public void resetUserPwd(Integer userid) {
        User user=new User();
        user.setUserid(userid);
        user.setPwd(DigestUtils.md5DigestAsHex(SysConstast.USER_DEFAULT_PWD.getBytes()));

        this.userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public DataGridView queryUserRole(Integer userid) {
        Role role=new Role();
        //查询所有可用的角色
        role.setAvailable(SysConstast.AVAILABLE_TRUE);
        List<Role> roles = this.roleMapper.queryAllRole(role);
       //根据用户id查询已拥有的角色
        List<Role> roles1 = this.roleMapper.queryAllRoleByUid(SysConstast.AVAILABLE_TRUE, userid);

        List<Map<String,Object>> data=new ArrayList<>();
        for (Role role1 : roles) {
              Boolean LAY_CHECKED=false;
            for (Role role2 : roles1) {
                   if (role1.getRoleid()==role2.getRoleid())
                   {
                       LAY_CHECKED=true;
                       break;
                   }
            }

            Map<String,Object> map=new HashMap<>();

            map.put("roleid",role1.getRoleid());
            map.put("rolename",role1.getRolename());
            map.put("roledesc",role1.getRoledesc());
            map.put("LAY_CHECKED",LAY_CHECKED);

            data.add(map);
        }
        return new DataGridView(data);
    }

    @Override
    public void saveUserRole(UserVo userVo) {
        Integer userid = userVo.getUserid();
        Integer[] ids = userVo.getIds();
        //根据用户id删除用户角色关系
        this.roleMapper.deleteRoleUserByUid(userid);

        if(ids!=null&&ids.length!=0)
        {
            for (Integer id : ids) {
                this.userMapper.saveUserRole(userid,id);
            }
        }

    }
}
