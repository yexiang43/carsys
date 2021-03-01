package com.chao.bus.mapper;

import com.chao.bus.domain.Check;

import java.util.List;

public interface CheckMapper {
    int deleteByPrimaryKey(String checkid);

    int insert(Check record);

    int insertSelective(Check record);

    Check selectByPrimaryKey(String checkid);

    int updateByPrimaryKeySelective(Check record);

    int updateByPrimaryKey(Check record);

    /**
     * 查询所有订单
     * @param check
     * @return
     */
    List<Check> queryAllCheck(Check check);
}