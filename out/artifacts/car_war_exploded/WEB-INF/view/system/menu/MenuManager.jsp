<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜单管理</title>
</head>

<%--如果使用frameset 包含页面 主页面不能有body--%>
<frameset cols="230,*" border="1">
    <frame src="${chao}/sys/toMenuLeft.action" name="left">
    <frame src="${chao}/sys/toMenuRight.action" name="right">
</frameset>


</html>
