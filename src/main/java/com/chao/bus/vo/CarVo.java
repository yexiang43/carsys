package com.chao.bus.vo;

import com.chao.bus.domain.Car;

public class CarVo extends Car {

    /**
     * 分页参数
     */
    private Integer page;
    private Integer limit;

    private String code;

    /**
     * 接受多个角色的id
     */
    private String [] ids;

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

    public String[] getIds() {
        return ids;
    }

    public void setIds(String[] ids) {
        this.ids = ids;
    }
}
