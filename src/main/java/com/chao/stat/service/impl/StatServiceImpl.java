package com.chao.stat.service.impl;

import com.chao.stat.domain.BaseEntity;
import com.chao.stat.mapper.StatMapper;
import com.chao.stat.service.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatServiceImpl implements StatService {

    @Autowired
    private StatMapper statMapper;

    @Override
    public List<BaseEntity> queryCustomerAreaStat() {
        return this.statMapper.queryCustomerAreaStat();
    }

    @Override
    public List<BaseEntity> loadOpernameYearGradeStat(String year) {
        return this.statMapper.queryOpernameYearGradeStat(year);
    }

    @Override
    public List<Double> loadCompanyYearGradeStat(String year) {
        return this.statMapper.queryCompanyYearGradeStat(year);
    }
}
