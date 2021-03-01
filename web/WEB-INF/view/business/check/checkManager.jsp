
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>出租单管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<%--<link rel="icon" href="favicon.ico">--%>
	<link rel="stylesheet" href="${chao}/static/layui/css/layui.css" media="all"/>
	<link rel="stylesheet" href="${chao}/static/css/public.css" media="all"/>
	<link rel="stylesheet" href="${chao}/static/layui_ext/dtree/dtree.css">
	<link rel="stylesheet" href="${chao}/static/layui_ext/dtree/font/dtreefont.css">
</head>
<body class="childrenBody">

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	<legend>查询条件</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">检查单号:</label>
			<div class="layui-input-inline" style="padding: 5px">
				<input type="text" name="checkid" autocomplete="off" class="layui-input layui-input-inline"
					   placeholder="请输入检查单号" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">出租单号:</label>
			<div class="layui-input-inline" style="padding: 5px">
				<input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
					   placeholder="请输入出租单号" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">操作员:</label>
			<div class="layui-input-inline" style="padding: 5px">
				<input type="text" name="opername" autocomplete="off" class="layui-input layui-input-inline"
					   placeholder="请输入操作员" style="height: 30px;border-radius: 10px">
			</div>
		</div>
	 </div>
		<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">开始时间:</label>
			<div class="layui-input-inline" style="padding: 5px">
				<input type="text" name="startTime" id="startTime" readonly="readonly" autocomplete="off" class="layui-input layui-input-inline"
					   placeholder="请输入开始时间" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">结束时间:</label>
			<div class="layui-input-inline" style="padding: 5px">
				<input type="text" name="endTime" id="endTime" readonly="readonly" autocomplete="off" class="layui-input layui-input-inline"
					   placeholder="请输入结束时间" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-inline">
			<button type="button"
					class="layui-btn layui-btn-normal layui-icon layui-icon-search layui-btn-radius layui-btn-sm"
					id="doSearch" style="margin-top: 4px">查询
			</button>
			<button type="reset"
					class="layui-btn layui-btn-warm layui-icon layui-icon-refresh layui-btn-radius layui-btn-sm" style="margin-top: 4px">重置
			</button>
		</div>
	</div>

</form>

<!-- 数据表格开始 -->
<table class="layui-hide" id="checkTable" lay-filter="checkTable"></table>
<div style="display: none;" id="checkToolBar">
</div>
<div id="checkBar" style="display: none">
		<a class="layui-btn layui-btn-xs layui-btn-radius" lay-event="edit">编辑</a>
</div>

<!-- 添加和修改的弹出层-->
<div style="display: none;padding: 20px" id="saveOrUpdateDiv">
	<form class="layui-form" lay-filter="dataFrm" id="dataFrm" style="margin-right: 20px">
		<div class="layui-form-item">
				<label class="layui-form-label">检查单号:</label>
				<div class="layui-input-block" style="padding: 5px">
					<input type="text" name="checkid" autocomplete="off" class="layui-input"
						   placeholder="请输入检查单号" style="height: 30px;border-radius: 10px" readonly="readonly">
				</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">出租单号:</label>
			<div class="layui-input-block" style="padding: 5px">
				<input type="text" name="rentid" autocomplete="off" class="layui-input"
					   placeholder="请输入出租单号" readonly="readonly" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">检查时间:</label>
				<div class="layui-input-inline" style="padding: 5px">
					<input type="text" name="checkdate" id="checkdate" readonly="readonly" autocomplete="off" class="layui-input layui-input-inline"
						   placeholder="请输入检查时间" style="height: 30px;border-radius: 10px">
				</div>
			</div>
			 <div class="layui-inline">
				 <label class="layui-form-label">创建时间:</label>
				 <div class="layui-input-inline" style="padding: 5px">
					 <input type="text" name="createtime" readonly="readonly" autocomplete="off" class="layui-input layui-input-inline"
							placeholder="请输入开始时间" readonly="readonly" style="height: 30px;border-radius: 10px">
				 </div>
			 </div>
			</div>
		    <div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">存在问题:</label>
					<div class="layui-input-inline" style="padding: 5px">
						<input type="text" name="problem" autocomplete="off" class="layui-input layui-input-inline"
							   placeholder="请输入存在问题" style="height: 30px;border-radius: 10px">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">赔付金额:</label>
					<div class="layui-input-inline" style="padding: 5px">
						<input type="text" name="paymoney" autocomplete="off" class="layui-input layui-input-inline"
							   placeholder="请输入存在问题"  style="height: 30px;border-radius: 10px">
					</div>
				</div>
			</div>

		    <div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">操作员:</label>
					<div class="layui-input-inline" style="padding: 5px">
						<input type="text" name="opername" autocomplete="off" class="layui-input layui-input-inline"
							   placeholder="请输入操作员" readonly="readonly" style="height: 30px;border-radius: 10px">
					</div>
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">问题描述:</label>
				<div class="layui-input-block">
					<textarea name="checkdesc" placeholder="请输入问题描述" required  lay-verify="required" class="layui-textarea"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block" style="text-align: center;padding-right: 120px">
					<button type="button"
							class="layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius"
							lay-filter="doSubmit" lay-submit="">提交
					</button>
					<button type="reset"
							class="layui-btn layui-btn-warm layui-btn-md layui-icon layui-icon-refresh layui-btn-radius">重置
					</button>
				</div>
			</div>
	</form>
</div>

<script src="${chao}/static/layui/layui.js"></script>
<script type="text/javascript">
	var tableIns;
	layui.use(['jquery', 'layer', 'form', 'table', 'laydate'], function () {
		var $ = layui.jquery;
		var layer = layui.layer;
		var form = layui.form;
		var table = layui.table;
		var laydate = layui.laydate;
		var layedit = layui.layedit;

		//渲染时间
		laydate.render({
			elem: '#checkdate',
			type: 'datetime'
		});

		//渲染数据表格
		tableIns = table.render({
			elem: '#checkTable'   //渲染的目标对象
			, url: '${chao}/check/loadAllCheck.action' //数据接口
			, title: '出租单数据表'//数据导出来的标题
			, toolbar: "#checkToolBar"   //表格的工具条
			, height: 'full-200'
			, cellMinWidth: 100 //设置列的最小默认宽度
			, page: true  //是否启用分页
			, cols: [[   //列表数据
				{type: 'checkbox', fixed: 'left'}
				, {field: 'checkid', title: '检查单号', align: 'center',width: '170'}
				, {field: 'checkdate', title: '检查时间', align: 'center',width: '160'}
				, {field: 'checkdesc', title: '问题描述', align: 'center',width:'150'}
				, {field: 'problem', title: '存在问题', align: 'center',width: '90'}
				, {field: 'paymoney', title: '赔付金额', align: 'center',width: '110'}
				, {field: 'opername', title: '操作员', align: 'center',width: '110'}
				, {field: 'checkid', title: '出租单号', align: 'center', width: '170'}
				, {field: 'createtime', title: '录入时间', align: 'center',width: '160'}
				, {fixed: 'right', title: '操作', toolbar: '#checkBar', align: 'center',width: '100'}

			]]
		});

		//模糊查询
		$("#doSearch").click(function () {
			var params = $("#searchFrm").serialize();
			//alert(params);
			tableIns.reload({
				url: "${chao}/check/loadAllCheck.action?" + params,
				page: {curr: 1}
			})
		});


		//监听行工具事件
		table.on('tool(checkTable)', function (obj) {
			var data = obj.data; //获得当前行数据
			var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
			if (layEvent === 'edit') { //编辑
				//编辑，打开修改界面
				openUpdateCheck(data);
			}
		});

		var url;
		var mainIndex;

		//打开修改页面
		function openUpdateCheck(data) {
			mainIndex = layer.open({
				type: 1,
				title: '修改出租单',
				content: $("#saveOrUpdateDiv"),
				area: ['800px', '550px'],
				offset: '10',
				success: function (index) {
					form.val("dataFrm", data);
					url = "${chao}/check/updateCheck.action";
				}
			});
		}

		//保存
		form.on("submit(doSubmit)", function (obj) {
			//序列化表单数据
			var params = $("#dataFrm").serialize();
			$.post(url, params, function (obj) {
				layer.msg(obj.msg);
				//关闭弹出层
				layer.close(mainIndex);
				//刷新数据 表格
				tableIns.reload();
			})
		});

	});

</script>
</body>
</html>
