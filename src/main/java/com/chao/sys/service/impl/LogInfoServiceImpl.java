package com.chao.sys.service.impl;

import com.chao.sys.domain.LogInfo;
import com.chao.sys.mapper.LogInfoMapper;
import com.chao.sys.service.LogInfoService;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.vo.LogInfoVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogInfoServiceImpl implements LogInfoService {
    @Autowired
    private LogInfoMapper logInfoMapper;

    @Override
    public DataGridView queryAllLogInfo(LogInfoVo logInfoVo) {
        Page<Object> page= PageHelper.startPage(logInfoVo.getPage(),logInfoVo.getLimit());
        List<LogInfo> data=this.logInfoMapper.queryAllLogInfo(logInfoVo);

        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addLogInfo(LogInfoVo logInfoVo) {
        this.logInfoMapper.insertSelective(logInfoVo);
    }

    @Override
    public void deleteLogInfo(Integer id) {
      this.logInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteBatchLogInfo(Integer[] ibs) {
        for (Integer ib : ibs) {
            this.deleteLogInfo(ib);
        }
    }
}
