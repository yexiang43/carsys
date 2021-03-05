package com.chao.sys.service;

import com.chao.sys.domain.LogInfo;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.LogInfoVo;

public interface LogInfoService {

    /**
     * 查询所有日志
     *
     * @param logInfoVo
     * @return
     */
    public DataGridView queryAllLogInfo(LogInfoVo logInfoVo);

    /**
     * 增加日志
     *
     * @param logInfoVo
     */
    void addLogInfo(LogInfoVo logInfoVo);
    

    /**
     * 根据用户Id删除日志
     */
    void deleteLogInfo(Integer id);

    /**
     * 批量删除日志
     */
    void deleteBatchLogInfo(Integer[] ibs);
}



