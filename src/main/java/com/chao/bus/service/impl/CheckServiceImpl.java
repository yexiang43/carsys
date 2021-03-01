package com.chao.bus.service.impl;

import com.chao.bus.constant.SysConstast;
import com.chao.bus.domain.Car;
import com.chao.bus.domain.Check;
import com.chao.bus.domain.Customer;
import com.chao.bus.domain.Rent;
import com.chao.bus.mapper.CarMapper;
import com.chao.bus.mapper.CheckMapper;
import com.chao.bus.mapper.CustomerMapper;
import com.chao.bus.mapper.RentMapper;
import com.chao.bus.service.CheckService;
import com.chao.bus.vo.CheckVo;
import com.chao.sys.domain.User;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.RandomUtils;
import com.chao.sys.utils.WebUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CheckServiceImpl implements CheckService {

    @Autowired
    private CheckMapper checkMapper;

    @Autowired
    private RentMapper rentMapper;

    @Autowired
    private CarMapper carMapper;

    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public Map<String, Object> initCheckDate(String rentid) {
        Map<String, Object> map=new HashMap<>();

        //查询出租单
        Rent rent = this.rentMapper.selectByPrimaryKey(rentid);
        System.out.println(rent);
       //查询车辆
        Car car = this.carMapper.selectByPrimaryKey(rent.getCarnumber());
        //查询客户
        Customer customer = this.customerMapper.selectByPrimaryKey(rent.getIdentity());
        //组装check
        Check check=new Check();
        check.setCheckid(RandomUtils.createRandomStringUseTime(SysConstast.CAR_ORDER_JC));
        User user = (User)WebUtils.getHttpSession().getAttribute("user");
        check.setOpername(user.getRealname());
        check.setRentid(rentid);
        check.setCheckdate(new Date());

        map.put("rent",rent);
        map.put("car",car);
        map.put("customer",customer);
        map.put("check",check);

        return map;
    }

    @Override
    public void saveCheck(CheckVo checkVo) {
        this.checkMapper.insertSelective(checkVo);
        //修改出租单状态
        Rent rent = this.rentMapper.selectByPrimaryKey(checkVo.getRentid());
        rent.setRentflag(SysConstast.RENT_BACK_TRUE);
        rentMapper.updateByPrimaryKeySelective(rent);

        //更改汽车状态
        Car car=new Car();
        car.setCarnumber(rent.getCarnumber());
        car.setIsrenting(SysConstast.RENT_CAR_FALSE);
        this.carMapper.updateByPrimaryKeySelective(car);
    }

    @Override
    public DataGridView queryAllCheck(CheckVo checkVo) {
        Page<Object> page= PageHelper.startPage(checkVo.getPage(),checkVo.getLimit());
        List<Check> data=this.checkMapper.queryAllCheck(checkVo);

        System.out.println(checkMapper.queryAllCheck(checkVo));
        return new DataGridView(page.getTotal(),data);
    }

    @Override
    public void deleteCheck(String checkid) {
        checkMapper.deleteByPrimaryKey(checkid);

        //
    }

    @Override
    public void updateCheck(CheckVo checkVo) {
        this.checkMapper.updateByPrimaryKeySelective(checkVo);
    }
}
