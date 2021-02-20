package com.chao.sys.mapper;

import com.chao.sys.domain.User;
import com.chao.sys.vo.UserVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 登陆
     */
    User login(User user);

    /**
     * 查询用户
     */
    List<User> queryAllUser(UserVo userVo);

    void saveUserRole(@Param("uid") Integer userid,@Param("rid") Integer id);
}