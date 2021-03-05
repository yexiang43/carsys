package com.chao.sys.utils;

import com.chao.sys.constast.SysConstast;

public class ResultObj {



    private Integer code=0;
    private String msg;

    /**
     * 修改密码
     */
    public static final ResultObj UPDATEPASSWORD_ERROR2 = new ResultObj(SysConstast.CODE_ERROR,"新密码不能与原密码相同！");
    public static final ResultObj UPDATEPASSWORD_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.UPDATEPASSWORD_ERROR);
    public static final ResultObj UPDATEPASSWORD_TRUE = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.UPDATEPASSWORD_TRUE);
    /**
     * 添加成功
     */
    public static final ResultObj ADD_SUCCESS=new
            ResultObj(SysConstast.CODE_SUCCESS,SysConstast.ADD_SUCCESS);
    /**
     * 添加失败
     */
    public static final ResultObj ADD_ERROR=new
            ResultObj(SysConstast.CODE_ERROR,SysConstast.ADD_ERROR);
    /**
     * 修改成功
     */
    public static final ResultObj UPDATE_SUCCESS=new
            ResultObj(SysConstast.CODE_SUCCESS,SysConstast.UPDATE_SUCCESS);
    /**
     * 添加失败
     */
    public static final ResultObj UPDATE_ERROR=new
            ResultObj(SysConstast.CODE_ERROR,SysConstast.UPDATE_ERROR);
    /**
     * 删除成功
     */
    public static final ResultObj DELETE_SUCCESS=new
            ResultObj(SysConstast.CODE_SUCCESS,SysConstast.DELETE_SUCCESS);
    /**
     * 删除失败
     */
    public static final ResultObj DELETE_ERROR=new
            ResultObj(SysConstast.CODE_ERROR,SysConstast.DELETE_SUCCESS);
    /**
     * 添加成功
     */
    public static final ResultObj RESET_SUCCESS=new
            ResultObj(SysConstast.CODE_SUCCESS,SysConstast.RESET_SUCCESS);
    /**
     * 添加失败
     */
    public static final ResultObj RESET_ERROR=new
            ResultObj(SysConstast.CODE_ERROR,SysConstast.RESET_ERROR);

    public static final ResultObj DISPATCH_SUCCESS=new
            ResultObj(SysConstast.CODE_SUCCESS,SysConstast.DISPATCH_SUCCESS);
    public static final ResultObj DISPATCH_ERROR=new
            ResultObj(SysConstast.CODE_ERROR,SysConstast.DISPATCH_ERROR);

    public static final ResultObj STATUS_TRUE=new
            ResultObj(SysConstast.CODE_SUCCESS);
    public static final ResultObj STATUS_FALSE=new
            ResultObj(SysConstast.CODE_ERROR);

    private ResultObj(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private ResultObj(Integer code) {
        this.code = code;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
