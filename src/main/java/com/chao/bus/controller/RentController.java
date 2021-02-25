package com.chao.bus.controller;

import com.chao.bus.constant.SysConstast;
import com.chao.bus.domain.Customer;
import com.chao.bus.service.CustomerService;
import com.chao.bus.service.RentService;
import com.chao.bus.vo.RentVo;
import com.chao.sys.domain.User;
import com.chao.sys.utils.RandomUtils;
import com.chao.sys.utils.ResultObj;
import com.chao.sys.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping("rent")
public class RentController {

    @Autowired
    private RentService rentService;

    @Autowired
    private CustomerService customerService;

    /**
     * 验证客户身份证号
     * @param rentVo
     * @return
     */
    @RequestMapping("checkCustomerExist")
    public ResultObj checkCustomerExist(RentVo rentVo)
    {
       Customer customer= customerService.queryCustomerByidentity(rentVo.getIdentity());

       if (customer!=null)
       {
           return ResultObj.STATUS_TRUE;
       }else
       {
           return ResultObj.STATUS_FALSE;
       }
    }

    /**
     * 初始化出租单
     * @param rentVo
     * @return
     */
    @RequestMapping("initRentForm")
    public RentVo initRentForm(RentVo rentVo)
    {
        //设置出租单号
        rentVo.setRentid(RandomUtils.createRandomStringUseTime(SysConstast.CAR_ORDER_CZ));
        //设置起租时间
        rentVo.setBegindate(new Date());
        //设置操作员
        User user= (User) WebUtils.getHttpSession().getAttribute("user");
        rentVo.setOpername(user.getRealname());
        return rentVo;
    }

    /**
     * 保存出租单
     * @param rentVo
     * @return
     */
    @RequestMapping("saveRent")
    public ResultObj saveRent(RentVo rentVo)
    {
        try {
            //设置创建时间
            rentVo.setCreatetime(new Date());
            //设置出租状态
            rentVo.setRentflag(SysConstast.RENT_CAR_FALSE);
            //保存
            this.rentService.addRent(rentVo);
            return ResultObj.ADD_SUCCESS;
        }catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;

        }

    }
}
