<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>个人资料</title>
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
    <div id="test2">个人资料</div>
</blockquote>
    <form class="layui-form layui-row" id="userForm" lay-filter="userForm">
        <div class="layui-col-md3 layui-col-xs12 user_right">
            <div class="layui-upload-list" >
                <%--显示要上传的图片--%>
                <img class="layui-upload-img thumbImg layui-circle userFaceBtn userAvatar" id="showCarImg">
                <%--保存当前显示图片的地址--%>
                <input type="hidden" name="Avatarpath" id="Avatarpath">
            </div>
            <button type="button" class="layui-btn layui-btn-primary userFaceBtn" id="carimgDiv"><i class="layui-icon">&#xe67c;</i> 我要换一个头像了</button>
        </div>
        <div class="layui-col-md6 layui-col-xs12">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户姓名:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="hidden" name="userid" id="userid">
                        <input type="text" name="realname" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="请输入用户姓名" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">登入名称:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="loginname" autocomplete="off"  readonly="readonly" class="layui-input layui-input-inline"
                               placeholder="请输入登入名称" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">身份证号:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="请输入身份证号" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户地址:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="address" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="请输入用户地址" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">手机号码:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="phone" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="请输入手机号码" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">用户职位:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="position" autocomplete="off" readonly="readonly" class="layui-input layui-input-inline"
                               placeholder="请输入用户职位" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-form-item ">
                <div class="layui-inline">
                    <label class="layui-form-label">是否可用:</label>
                    <div class="layui-input-inline">
                        <input type="radio" name="available" disabled="" value="1" title="可用">
                        <input type="radio" name="available" disabled="" value="0" title="不可用">
                    </div>
                </div>
            </div>
            <div class="layui-form-item " pane="">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block userSex">
                    <input type="radio" name="sex" value="1" title="男">
                    <input type="radio" name="sex" value="0" title="女">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="button"
                            class="layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius"
                            lay-filter="doSubmit" lay-submit="">立即提交
                    </button>
                </div>
            </div>
        </div>
    </form>

<script type="text/javascript" src="${chao}/static/layui/layui.js"></script>
<script>
    layui.use(['jquery', 'layer', 'form', 'table', 'laydate','upload'],function(){
        var $ = layui.jquery;
        var form = layui.form;
        var table = layui.table;
        var laydate = layui.laydate;
        var layedit = layui.layedit;
        var upload = layui.upload;
        var layer = parent.layer === undefined ? layui.layer : top.layer;
        var element = layui.element;

        $().ready( function() {
            $.post("${chao}/user/initUserInformation.action",function(data){
                form.val("userForm", data);
                //设置默认图片
                $("#showCarImg").attr("src", "${chao}/file/downloadShowFileAvatar.action");
                $("#Avatarpath").val(${sessionScope.get('Avatar')});
                $("#carnumber").removeAttr("readonly","readonly");
            })
        });

        //保存
        form.on("submit(doSubmit)", function (obj) {
            var params = $("#userForm").serialize();
            var url="${chao}/user/updateUser.action";
            $.post(url, params, function (obj) {
                layer.msg(obj.msg);
                window.location.reload(); //刷新当前页面.
                parent.location.reload(); //刷新父亲对象（用于框架）
                opener.location.reload(); //刷新父窗口对象（用于单开窗口）
                top.location.reload();
            })
        });

        //上传头像
        upload.render({
            elem: '#carimgDiv',
            url: '${chao}/file/uploadFile.action',
            method: "post",  //此处是为了演示之用，实际使用中请将此删除，默认用post方式提交
            acceptMime: 'Avatar/*',
            field: "mf",
            done: function (res, index, upload) {
                $('#showCarImg').attr('src', "${chao}/file/downloadShowFile.action?path=" + res.data.src);
                $('#Avatarpath').val(res.data.src);
                $('#carimgDiv').css("background", "#fff");
            }
        });
    });
</script>
</body>
</html>
