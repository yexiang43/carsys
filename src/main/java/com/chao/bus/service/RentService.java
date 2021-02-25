package com.chao.bus.service;

import com.chao.bus.vo.RentVo;

public interface RentService {
    /**
     * 保存出租单
     * @param rentVo
     */
    void addRent(RentVo rentVo);
}
