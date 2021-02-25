package com.chao.bus.service;


import com.chao.bus.domain.Customer;
import com.chao.sys.utils.DataGridView;
import com.chao.bus.vo.CustomerVo;
import org.springframework.stereotype.Service;

import java.util.List;

public interface CustomerService {

    /**
     * 查询所有客户
     *
     * @param customerVo
     * @return
     */
    public DataGridView queryAllCustomer(CustomerVo customerVo);

    /**
     * 增加客户
     *
     * @param customerVo
     */
    void addCustomer(CustomerVo customerVo);

    /**
     * 修改客户
     *
     * @param customerVo
     */
    void updateCustomer(CustomerVo customerVo);
    /**
     * 根据用户Id删除客户
     */
    void deleteCustomer(String identity);

    /**
     * 批量删除客户
     */
    void deleteBatchCustomer(String[] identitys);

    /**
     * 根据客户身份证号查询客户是否存在
     * @param identity
     * @return
     */
    Customer queryCustomerByidentity(String identity);
}
