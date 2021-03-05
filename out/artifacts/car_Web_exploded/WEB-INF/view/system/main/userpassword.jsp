<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改密码</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${chao}/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${chao}/static/css/public.css" media="all"/>
</head>
<body>

<blockquote class="layui-elem-quote" style="margin-top: 10px">
    <div id="test2">修改密码</div>
</blockquote>
<div style="text-align: center">
    <form class="layui-form layui-row" id="userForm" lay-filter="userForm">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">原密码:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="password" name="pwd" id="pwd" autocomplete="off"  class="layui-input layui-input-inline"
                               placeholder="请输入原密码" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">新密码:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="password" name="NewPassword" id="NewPassword" autocomplete="off"  class="layui-input layui-input-inline"
                               placeholder="请输入新密码" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">确认密码:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="password" name="NewPassword2" id="NewPassword2" autocomplete="off"  class="layui-input layui-input-inline"
                               placeholder="请输入确认密码" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button"
                            class="layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius"
                            lay-filter="doSubmit" lay-submit="">立即提交
                    </button>
                    <button type="reset"
                            class="layui-btn layui-btn-warm layui-btn-md layui-icon layui-icon-refresh layui-btn-radius">重置
                    </button>
                </div>
            </div>
    </form>
</div>
<script type="text/javascript" src="${chao}/static/layui/layui.js"></script>
<script>
    layui.use(['jquery', 'layer', 'form', 'table', 'laydate','upload'],function(){
        var $ = layui.jquery;
        var form = layui.form;
        var upload = layui.upload;
        var layer = parent.layer === undefined ? layui.layer : top.layer;
        var element = layui.element;

        //保存
        form.on("submit(doSubmit)", function (obj) {
            var params = $("#userForm").serialize();
            var patrn=/^\w{5,12}$/;

           if(patrn.test($("#pwd").val()))
           {
                if ($("#NewPassword").val()===$("#NewPassword2").val())
                {
                    var url="${chao}/user/updatePassword.action";
                    $.post(url, params, function (obj) {
                        layer.msg(obj.msg);
                        window.location.reload(); //刷新当前页面
                    })
                }else {
                    layer.msg("两次密码输入不一致！");
                }
           }else
           {
               layer.msg("新密码不符合规则！");
           }

        });

    });
</script>
</body>
</html>
