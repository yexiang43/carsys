package com.chao.sys.vo;

import com.chao.sys.domain.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class RoleVo extends Role {

    /**
     * 分页参数
     */
    private Integer page;
    private Integer limit;

    /**
     * 接受多个角色的id
     */
    private Integer [] ids;


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

    public Integer[] getIds() {
        return ids;
    }

    public void setIds(Integer[] ids) {
        this.ids = ids;
    }
}
