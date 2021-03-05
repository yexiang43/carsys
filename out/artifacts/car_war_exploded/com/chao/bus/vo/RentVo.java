package com.chao.bus.vo;

import com.chao.bus.domain.Rent;

public class RentVo extends Rent {

    /**
     * 分页参数
     */
    private Integer page;
    private Integer limit;

    private String code;


    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
