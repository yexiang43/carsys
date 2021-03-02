package com.chao.stat.mapper;

import com.chao.stat.domain.BaseEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StatMapper {
    /**
     * 加载用户地区数据
     * @return
     */
    List<BaseEntity> queryCustomerAreaStat();

    /**
     * 加载年度业务员销售额
     */
    List<BaseEntity> queryOpernameYearGradeStat(@Param("year") String year);

    /**
     * 加载公司年度销售额
     */
    List<Double> queryCompanyYearGradeStat(@Param("year") String year);
}
