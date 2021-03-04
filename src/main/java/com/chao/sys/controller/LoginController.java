package com.chao.sys.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import com.chao.sys.constast.SysConstast;
import com.chao.sys.domain.LogInfo;
import com.chao.sys.domain.News;
import com.chao.sys.domain.User;
import com.chao.sys.service.LogInfoService;
import com.chao.sys.service.NewsService;
import com.chao.sys.service.UserService;
import com.chao.sys.utils.WebUtils;

import com.chao.sys.vo.LogInfoVo;
import com.chao.sys.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;


/**
 * 用户登陆控制器
 * @author chao
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private NewsService newsService;

    @Autowired
    public LogInfoService logInfoService;

    /**
     * 跳转到登陆页面
     */
    @RequestMapping("toLogin")
    public String toLogin(){
        return "system/main/login";
    }

    /**
     * 登陆方法
     * @param userVo
     * @return
     */
    @RequestMapping("login")
    public String login(UserVo userVo,Model model){

        User user = userService.login(userVo);
        String code = WebUtils.getHttpSession().getAttribute("code").toString();
            if (code.equals(userVo.getCode()))
            {
                if (null!=user){
                    //放到session
                    WebUtils.getHttpSession().setAttribute("user",user);

                    //记录登陆日志 向sys_log_login里面插入数据
                    LogInfoVo logInfoVo=new LogInfoVo();
                    logInfoVo.setLogintime(new Date());
                    logInfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
                    logInfoVo.setLoginname(user.getRealname()+"-"+user.getLoginname());
                    logInfoService.addLogInfo(logInfoVo);
                    return "system/main/index";
                }else {
                    model.addAttribute("error", SysConstast.USER_LOGIN_ERROR_MSG);
                    return "system/main/login";
                }
            } else {
                model.addAttribute("error", SysConstast.USER_LOGIN_CODE_ERROR_MSG);
                return "system/main/login";
            }
    }
    /**
     * 得到登陆验证码
     * @param response
     * @param session
     * @throws IOException
     */
    @RequestMapping("getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException{
        //定义图形验证码的长和宽
        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(116, 36,4,5);
        session.setAttribute("code",lineCaptcha.getCode());
        ServletOutputStream outputStream = response.getOutputStream();
        ImageIO.write(lineCaptcha.getImage(),"JPEG",outputStream);
    }

}
