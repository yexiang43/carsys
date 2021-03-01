package com.chao.bus.service;

import com.chao.bus.domain.Check;
import com.chao.bus.vo.CheckVo;
import com.chao.sys.utils.DataGridView;

import java.util.List;
import java.util.Map;

public interface CheckService {

    /**
     * 查询所有
     * @param checkVo
     * @return
     */
   DataGridView queryAllCheck(CheckVo checkVo);
    /**
     * 初始化表单 卡片数据
     * @param rentid
     * @return
     */
    Map<String, Object> initCheckDate(String rentid);

    /**
     * 保存检查单
     * @param checkVo
     */
    void saveCheck(CheckVo checkVo);

    /**
     * 删除
     * @param checkid
     */
    void deleteCheck(String checkid);

    /**
     * 修改
     * @param checkVo
     */
    void updateCheck(CheckVo checkVo);
}
