<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>出租管理</title>
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
			<label class="layui-form-label">身份证号:</label>
			<div class="layui-input-inline">
				<input type="text" name="identity" id="identity" autocomplete="off" class="layui-input"
					   placeholder="请输入身份证号" style="height: 30px;border-radius: 10px">
			</div>
			<div class="layui-inline" style="margin-left: 50px">
				<button type="button" class="layui-btn layui-btn-normal layui-icon layui-icon-search layui-btn-radius layui-btn-sm" id="doSearch">查询</button>
			</div>
		</div>
	</div>
</form>

<!-- 数据表格开始 -->
<div id="content" style="display: none">
<table id="carTable" lay-filter="carTable"></table>
<div id="carBar" style="display: none;">
	<a class="layui-btn layui-btn-xs layui-btn-radius" lay-event="rentCar">出租汽车</a>
	<a class="layui-btn layui-btn-danger layui-btn-xs layui-btn-radius" lay-event="viewImages">查看大图</a>
</div>
</div>

<!-- 添加和修改的弹出层-->
<div style="display: none;padding: 20px" id="saveOrUpdateDiv">
	<form class="layui-form" lay-filter="dataFrm" id="dataFrm" style="margin-right: 20px">
		<div class="layui-form-item">
				<label class="layui-form-label">出租单号:</label>
				<div class="layui-input-block" style="padding: 5px">
					<input type="text" name="rentid" readonly="readonly" autocomplete="off" class="layui-input" placeholder="请输入出租单号" style="height: 30px;border-radius: 10px">
			</div>
		</div>
		<div class="layui-form-item">
				<label class="layui-form-label">身份证号:</label>
				<div class="layui-input-block" style="padding: 5px">
					<input type="text" name="identity" autocomplete="off" class="layui-input "
						   readonly="readonly" placeholder="请输入身份证号" style="height: 30px;border-radius: 10px">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">起租时间:</label>
				<div class="layui-input-inline" style="padding: 5px">
					<input type="text" name="begindate" autocomplete="off" id="begindate"  class="layui-input layui-input-inline"
						   placeholder="请输入出租价格" style="height: 30px;border-radius: 10px">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">还车时间:</label>
				<div class="layui-input-inline" style="padding: 5px">
					<input type="text" name="returndate" autocomplete="off" id="returndate" class="layui-input layui-input-inline"
						   placeholder="请输入出租价格" style="height: 30px;border-radius: 10px">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">车辆号码:</label>
				<div class="layui-input-inline" style="padding: 5px">
					<input type="text" name="carnumber" autocomplete="off" class="layui-input layui-input-inline"
						   readonly="readonly" placeholder="请输入车辆号码" style="height: 30px;border-radius: 10px">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">出租价格:</label>
				<div class="layui-input-inline" style="padding: 5px">
					<input type="text" name="price" autocomplete="off" class="layui-input layui-input-inline"
						    placeholder="请输入出租价格" style="height: 30px;border-radius: 10px">
				</div>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">操作员:</label>
			<div class="layui-input-block" style="padding: 5px">
				<input type="text" name="opername" autocomplete="off" class="layui-input "
					   readonly="readonly" placeholder="请输入操作员" style="height: 30px;border-radius: 10px">
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
		</div>
	</form>
</div>

<%--查看大图弹出的层开始--%>
<div id="viewCarImageDiv" style="display: none;text-align: center">
	<img alt="出租图片" width="700px" height="450px" id="view_carimg">
</div>

<script src="${chao}/static/layui/layui.js"></script>
<script type="text/javascript">
	var tableIns;
	layui.use(['jquery', 'layer', 'form', 'table', 'laydate','upload'], function () {
		var $ = layui.jquery;
		var layer = layui.layer;
		var form = layui.form;
		var table = layui.table;
		var laydate = layui.laydate;
		var layedit = layui.layedit;
		var upload = layui.upload;
		//渲染时间
		laydate.render({
			elem: '#begindate',
			type: 'datetime'
		});
		laydate.render({
			elem: '#returndate',
			type: 'datetime'
		});

		function initCarDate()
		{
			//渲染数据表格
			tableIns = table.render({
				elem: '#carTable'   //渲染的目标对象
				, url: '${chao}/car/loadAllCar.action?isrenting=0' //数据接口
				, title: '出租数据表'//数据导出来的标题
				, height: 'full-230'
				, cellMinWidth: 100 //设置列的最小默认宽度
				, page: true  //是否启用分页
				, cols: [[   //列表数据
					{type: 'checkbox', fixed: 'left'}
					, {field: 'carnumber', title: '车牌号码', align: 'center',width: '100'}
					, {field: 'cartype', title: '车牌类型', align: 'center',width: '100'}
					, {field: 'color', title: '出租颜色', align: 'center',width:'100'}
					, {field: 'price', title: '购买价格', align: 'center',width: '90'}
					, {field: 'rentprice', title: '出租价格', align: 'center',width: '110'}
					, {field: 'deposit', title: '出租押金', align: 'center',width: '110'}
					, {
						field: 'isrenting', title: '出租状态', align: 'center', width: '90', templet: function (d) {
							return d.isrenting == '1' ? '<font color=blue>已出租</font>' : d.isrenting=='0'?'<font color=red>未出租</font>':'<font color=#f4a460>审核中</font>';
						}
					}
					, {field: 'description', title: '出租描述', align: 'center', width: '120'}
					, {
						field: 'carimg', title: '缩略图', align: 'center', width: '80', templet: function (d) {
							return "<img width=40 height=40 src=${chao}/file/downloadShowFile.action?path=" + d.carimg + "/>";
						}
					}
					, {field: 'createtime', title: '录入时间', align: 'center',width: '170'}
					, {fixed: 'right', title: '操作', toolbar: '#carBar', align: 'center',width: '200'}
				]],

			});
		}

		//模糊查询
		$("#doSearch").click(function () {
			var params = $("#searchFrm").serialize();
			$.post("${chao}/rent/checkCustomerExist.action",params,function (obj)
			{
				if (obj.code>=0)
				{
					$("#content").show();
					initCarDate();
				}else
				{
					layer.msg("客户身份证号不正确！");
					$("#content").hide();
				}

			})

		});


		//监听行工具事件
		table.on('tool(carTable)', function (obj) {
			var data = obj.data; //获得当前行数据
			var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
			if (layEvent === 'rentCar') {
				openRentCar(data);
			}else if (layEvent === 'viewImages') {
				showCarImage(data);
			}
		});

		var mainIndex;

		//打开添加页面
		function openRentCar(data) {
			mainIndex = layer.open({
				type: 1,
				title: '添加汽车出租',
				content: $("#saveOrUpdateDiv"),
				area: ['750px', '500px'],
				offset: '10',
				success: function (index) {
					//清空表单数据
					$("#dataFrm")[0].reset();
					var identity=$("#identity").val();
					var carnumber=data.carnumber;
					var price=data.rentprice;
					$.get("${chao}/rent/initRentForm.action",{
						identity:identity,
						carnumber:carnumber,
						price:price
					},function (obj)
					{
						form.val("dataFrm",obj);
					})
				}
			});
		}
		//保存
		form.on("submit(doSubmit)", function (obj) {
			//序列化表单数据
			var params = $("#dataFrm").serialize();
			$.post("${chao}/rent/saveRent.action", params, function (obj) {
				layer.msg(obj.msg);
				//关闭弹出层
				layer.close(mainIndex);
				$("#content").hide();
			})
		});
		//查看大图
		function showCarImage(data) {
			mainIndex = layer.open({
				type: 1,
				title: "【"+data.carnumber+'】的出租图片',
				content: $("#viewCarImageDiv"),
				area: ['750px', '500px'],
				success: function (index) {
					$("#view_carimg").attr("src","${chao}/file/downloadShowFile.action?path="+data.carimg);
				}
			});
		}
	});
</script>
</body>
</html>
