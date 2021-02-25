package com.chao.bus.service.impl;

import com.chao.bus.domain.Customer;
import com.chao.bus.mapper.CustomerMapper;
import com.chao.bus.service.CustomerService;
import com.chao.bus.vo.CustomerVo;
import com.chao.sys.utils.DataGridView;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public DataGridView queryAllCustomer(CustomerVo customerVo) {
        Page<Object> page= PageHelper.startPage(customerVo.getPage(),customerVo.getLimit());
        List<Customer> data=this.customerMapper.queryAllCustomer(customerVo);

        System.out.println(customerMapper.queryAllCustomer(customerVo));
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void addCustomer(CustomerVo customerVo) {
        this.customerMapper.insertSelective(customerVo);
    }

    @Override
    public void deleteCustomer(String identity) {

        this.customerMapper.deleteByPrimaryKey(identity);
    }

    @Override
    public void deleteBatchCustomer(String[] identitys) {
        for (String ib : identitys) {
            this.deleteCustomer(ib);
        }
    }

    @Override
    public void updateCustomer(CustomerVo customerVo) {

        this.customerMapper.updateByPrimaryKeySelective(customerVo);
    }

    @Override
    public Customer queryCustomerByidentity(String identity) {
        return this.customerMapper.selectByPrimaryKey(identity);
    }
}
