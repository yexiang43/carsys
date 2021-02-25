package com.chao.bus.service;

import com.chao.bus.vo.RentVo;
import com.chao.sys.utils.DataGridView;

public interface RentService {
    /**
     * 保存出租单
     * @param rentVo
     */
    void addRent(RentVo rentVo);

    /**
     * 查询
     * @param rentVo
     * @return
     */
    DataGridView queryAllRent(RentVo rentVo);

    /**
     * 删除
     * @param rentVo
     */
    void deleteRent(String rentid);

    /**
     * 修改
     * @param rentVo
     */
    void updateRent(RentVo rentVo);
}
