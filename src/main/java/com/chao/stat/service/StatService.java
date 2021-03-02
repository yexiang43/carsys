package com.chao.stat.service;

import com.chao.stat.domain.BaseEntity;

import java.util.List;

public interface StatService {

    /**
     * 加载用户地区数据
     * @return
     */
    List<BaseEntity> queryCustomerAreaStat();

    /**
     * 加载年度业务员销售额
     */
    List<BaseEntity> loadOpernameYearGradeStat(String year);

    /**
     * 加载公司年度销售额
     */
    List<Double> loadCompanyYearGradeStat(String year);
}
