package com.chao.stat.controller;

import com.chao.stat.domain.BaseEntity;
import com.chao.stat.service.StatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 统计分析控制器
 */
@Controller
@RequestMapping("stat")
public class StatController {

    @Autowired
    private StatService statService;

    /**
     * 跳转客户地区
     */
    @RequestMapping("toCustomerAreaStat")
    public String toCustomerAreaStat()
    {
       return "stat/customerAreaStat";
    }

    /**
     * 加载用户地区数据
     * @return
     */
    @ResponseBody
    @RequestMapping("loadCustomerAreaStatJson")
    public List<BaseEntity> loadCustomerAreaStatJson()
    {
        return this.statService.queryCustomerAreaStat();
    }

    /**
     * 跳转年度业务员销售额
     */
    @RequestMapping("toOpernameYearGradeStat")
    public String toOpernameYearGradeStat()
    {
        return "stat/opernameYearGradeStat";
    }

    /**
     * 加载年度业务员销售额
     */
    @ResponseBody
    @RequestMapping("loadOpernameYearGradeStatJson")
    public Map<String,Object> loadOpernameYearGradeStatJson(String year)
    {
        Map<String, Object> map=new HashMap<>();

        List<BaseEntity> list=this.statService.loadOpernameYearGradeStat(year);

        List<String> names=new ArrayList<>();
        List<Double> values=new ArrayList<>();

        for (BaseEntity baseEntity : list) {
            names.add(baseEntity.getName());
            values.add(baseEntity.getValue());
        }

        map.put("name",names);
        map.put("value",values);

        return map;
    }

    /**
     * 跳转公司年度月份销售额
     */
    @RequestMapping("toCompanyYearGradeStat")
    public String toCompanyYearGradeStat()
    {
        return "stat/companyYearGradeStat";
    }

    /**
     * 加载公司年度销售额
     */
    @ResponseBody
    @RequestMapping("loadCompanyYearGradeStatJson")
    public List<Double> loadCompanyYearGradeStatJson(String year)
    {
       List<Double> list=this.statService.loadCompanyYearGradeStat(year);

       for(int i=0;i<list.size();i++)
       {
           if (list.get(i)==null)
           {
              list.set(i,0.0);
           }
       }
        return list;
    }

}
