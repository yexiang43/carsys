package com.chao.sys.service;

import com.chao.sys.domain.User;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import com.chao.sys.vo.UserVo;
import com.chao.sys.vo.UserVo;

/**
 * 用户服务接口
 */
public interface UserService {

    /**
     * 用户登陆
     * @param userVo
     * @return
     */
    User login(UserVo userVo);

    /**
     * 查询所有角色
     * @param userVo
     * @return
     */
    public DataGridView queryAllUser(UserVo userVo);

    /**
     * 增加角色
     * @param userVo
     */
    void addUser(UserVo userVo);

    /**
     * 修改角色
     * @param userVo
     */
    void updateUser(UserVo userVo);

    /**
     * 根据用户Id删除角色
     */
    void deleteUser(Integer userid);

    /**
     * 根据用户Id重置密码
     */
    void resetUserPwd(Integer userid);

    /**
     * 批量删除角色
     */
    void deleteBatchUser(Integer []ibs);
    /**
     * 加载用户角色
     * @param userid
     * @return
     */
    DataGridView queryUserRole(Integer userid);

    /**
     * 保存用户和角色的关系
     * @param userVo
     * @return
     */
    void saveUserRole(UserVo userVo);
}
