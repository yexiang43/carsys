package com.chao.sys.controller;

import com.chao.sys.service.LogInfoService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import com.chao.sys.vo.LogInfoVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 用户控制器
 */
@RestController
@RequestMapping("logInfo")
public class LogInfoController {

    @Autowired
    public LogInfoService logInfoService;

    /**
     * 查询所有日志
     * @param logInfoVo
     * @return
     */
    @RequestMapping("loadAllLogInfo")
    public DataGridView loadAllLogInfo(LogInfoVo logInfoVo)
    {
        return this.logInfoService.queryAllLogInfo(logInfoVo);
    }
    /**
     * 添加日志
     * @param logInfoVo
     * @return
     */
    @RequestMapping("addLogInfo")
    public ResultObj addLogInfoVo(LogInfoVo logInfoVo) {

        try {

           this.logInfoService.addLogInfo(logInfoVo);
           return ResultObj.ADD_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 删除日志
     * @param logInfoVo
     * @return
     */
    @RequestMapping("deleteLogInfo")
    public ResultObj deleteLogInfoVo(LogInfoVo logInfoVo) {

        try {
            this.logInfoService.deleteLogInfo(logInfoVo.getId());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /**
     * 删除日志
     * @param LogInfoVo
     * @return
     */
    @RequestMapping("deleteBatchLogInfo")
    public ResultObj deleteBatchLogInfoVo(LogInfoVo LogInfoVo) {

        try {
            this.logInfoService.deleteBatchLogInfo(LogInfoVo.getIds());

            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }


}
