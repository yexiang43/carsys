

# 项目介绍

说明：本项目是学习[武汉尚学堂汽车出租系统](https://www.bilibili.com/video/BV1d4411r7vn?p=21  )时创建。

同时感谢：哔哩哔哩用户[落亦-](https://space.bilibili.com/274696873?spm_id_from=333.788.b_636f6d6d656e74.6 )提供的IDEA版源码支持。

> 作者 ：Dexter

> > **个人博客：[博客](https://yexiang43/raw/masterhub.io/)**

## 开发环境：

+ 操作系统：macOS bigsur11.1
+ 编程语言：java 
+ 开发工具：IDEA、DBeaver,chrome
+ 项目构建工具：Maven 3.6.1
+ 服务器：Tomcat 8.5
+ 数据库：MySQL  5.7
+ 后端框架：SSM
+ 前端框架：Layui
+ 静态网页模板：  [LayuiCMS](https://gitee.com/layuicms/layuicms)
+ 代码托管平台：GitHub

## 功能介绍：

主要分为四大模块：用户设置、系统管理、业务管理和统计分析。
## 用户设置
##### 个人资料:
展示用户资料，并可以修改任意头像和部分个人资料。

##### 密码修改：
用户可以在此页面修改自己的密码，后台会把密码变成密文进行储存，更大程度上保证用户信息安全。

其他功能还在开发中...

## 系统管理

系统管理已经开发完毕。

### 主要功能：
##### 登入:
用户登入。

##### 菜单管理：

对后台菜单进行添加、修改和删除，使平台有更多的功能。

##### 角色管理：

给后台管理添加不同角色角色，使平台更好管理。

##### 用户管理：

是对后台管理用户进行给定角色。

##### 日志管理：

是对用户登入后台管理的记录。可以更好管理后台。

##### 系统公告：

添加了公告，公告会按时间顺序显示在主页，可以让用户更好的了解最新资讯。

##### 数据源监控：

可以实时观察数据库连接池和SQL查询的工作情况。

## 业务管理

业务管理开发完毕。

### 主要功能：

##### 客户管理：

对租车客户的信息进行管理。

##### 车辆管理:
对汽车进行添加，删除，管理，可以添加车辆图片。并有定时任务清理临时图片。

##### 汽车出租
通过客户身份证号，查询未出租的汽车列表。可以进行汽车的出租。

##### 出租单管理
对出租单信息进行修改，删除。

##### 汽车入库
通过订单号查询订单信息，并可以给此订单存在的问题进行描述。同时会展示车辆，订单，客户等信息。

##### 检查单管理

对检查单进行管理，限制可以对部分内容修改。

## 统计分析

##### 客户地区统计
展示客户分布的地区，可以根据统计图进行车辆调整。

##### 业务员年度销售额
可以清晰看到每个业务员的年度销售总额。

#### 公司年度月份销售额统计
采用折线图，展示公司每个月份的销售额，可以根据此图指定公司战略计划。

## 效果展示：
![登入界面效果展示](https://github.com/yexiang43/carsys/raw/master/images/login.png)
![主页效果展示](https://github.com/yexiang43/carsys/raw/master/images/index.png)
![个人资料效果展示](https://github.com/yexiang43/carsys/raw/master/images/userlnformation.png)
![密码修改效果展示](https://github.com/yexiang43/carsys/raw/master/images/userpassword.png)
![菜单管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/menu.png)
![公告管理管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/news.png)
![角色管理管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/role.png)
![用户管理管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/user.png)
![数据源效果欣赏](https://github.com/yexiang43/carsys/raw/master/images/Drud.png)
![日志管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/loginfo.png)
![客户管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/customer.png)
![汽车管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/car01.png)
![汽车管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/car03.png)
![汽车管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/car02.png)
![汽车出租效果展示](https://github.com/yexiang43/carsys/raw/master/images/RentCar01.png)
![汽车出租效果展示](https://github.com/yexiang43/carsys/raw/master/images/RentCar02.png)
![出租单管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/rent.png)
![汽车入库效果展示](https://github.com/yexiang43/carsys/raw/master/images/checkcar.png)
![检查单管理效果展示](https://github.com/yexiang43/carsys/raw/master/images/check.png)
![客户地区效果展示](https://github.com/yexiang43/carsys/raw/master/images/opernamestat.png)
![业务员年度销售额效果展示](https://github.com/yexiang43/carsys/raw/master/images/customerstat.png)
![公司年度月份销售额效果展示](https://github.com/yexiang43/carsys/raw/master/images/companystat.png)

