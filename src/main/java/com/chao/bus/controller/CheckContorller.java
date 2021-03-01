package com.chao.bus.controller;

import com.chao.bus.domain.Rent;
import com.chao.bus.service.CheckService;
import com.chao.bus.service.RentService;
import com.chao.bus.vo.CheckVo;
import com.chao.sys.utils.DataGridView;
import com.chao.sys.utils.ResultObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.Map;

@RestController
@RequestMapping("check")
public class CheckContorller {

    @Autowired
    private CheckService checkService;

    @Autowired
    private RentService rentService;

    /**
     * 验证出租单号
     * @param rentid
     * @return
     */
    @RequestMapping("checkRentExist")
    public Rent checkRentExist(String rentid)
    {
        System.out.println(rentid);
        return rentService.queryAllRentByrentId(rentid);
    }
    @RequestMapping("initCheckDate")
     public Map<String,Object> initCheckDate(String rentid)
    {
        return this.checkService.initCheckDate(rentid);
    }

    @RequestMapping("saveCheck")
    public ResultObj saveCheck(CheckVo checkVo)
    {
        try
        {
            checkVo.setCreatetime(new Date());
            this.checkService.saveCheck(checkVo);
            return ResultObj.ADD_SUCCESS;

        }catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

/*============================*/
    /**
     * 查询
     * @param checkVo
     * @return
     */
    @RequestMapping("loadAllCheck")
    public DataGridView queryAllCheck(CheckVo checkVo)
    {

        return checkService.queryAllCheck(checkVo);
    }

    @RequestMapping("deleteCheck")
    public ResultObj deleteCheck(String checkid)
    {
        try
        {
            this.checkService.deleteCheck(checkid);
            return ResultObj.DELETE_SUCCESS;

        }catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    @RequestMapping("updateCheck")
    public ResultObj updateCheck(CheckVo checkVo)
    {
        try
        {
            this.checkService.updateCheck(checkVo);
            return ResultObj.UPDATE_SUCCESS;

        }catch (Exception e)
        {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }
}
