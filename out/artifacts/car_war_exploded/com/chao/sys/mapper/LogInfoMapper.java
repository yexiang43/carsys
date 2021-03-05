package com.chao.sys.mapper;

import com.chao.sys.domain.LogInfo;
import com.chao.sys.vo.LogInfoVo;
import org.springframework.stereotype.Service;

import java.util.List;

public interface LogInfoMapper {
    /**
     * 根据ID删除日志
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    int insert(LogInfo record);

    /**
     * 添加日志
     * @param record
     * @return
     */
    int insertSelective(LogInfo record);

    LogInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LogInfo record);

    int updateByPrimaryKey(LogInfo record);

    /**
     * 查询日志
     * @param logInfoVo
     * @return
     */
    List<LogInfo> queryAllLogInfo(LogInfoVo logInfoVo);
}
