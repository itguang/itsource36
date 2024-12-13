![ITSource_2024152847.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131529890.png)
![ITSource_2024145856.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131529703.png)



# 项目介绍

传统信息的管理大部分依赖于管理人员的手工登记与管理，然而，随着近些年信息技术的迅猛发展，让许多比较老套的信息管理模式进行了更新迭代，外卖信息因为其管理内容繁杂，管理数量繁多导致手工进行处理不能满足广大用户的需求，因此就应运而生出相应的校园外卖服务系统。

本校园外卖服务系统分为管理员还有用户两个权限，管理员可以管理用户的基本信息内容，可以管理公告信息以及公告的租赁信息，能够与用户进行相互交流等操作，用户可以查看外卖信息，可以查看公告以及查看管理员回复信息等操作。

该校园外卖服务系统采用的是WEB应用程序开发中最受欢迎的B/S三层结构模式，使用占用空间小但功能齐全的MySQL数据库进行数据的存储操作，系统开发技术使用到了JSP技术。该校园外卖服务系统能够解决许多传统手工操作的难题，比如数据查询耽误时间长，数据管理步骤繁琐等问题。总的来说，校园外卖服务系统性能稳定，功能较全，投入运行使用性价比很高。

**关键词**：外卖系统；Spring Boot 框架；Java；MySQL数据库

**技术栈:**

* 后端:  SpringBoot +Mybatis
* 数据库 : MySQL 8
* 前端:  VUE + ElementUI

**开发环境依赖：**
* MySQL 8 数据库
* JDK1.8
* Maven 3
* IDEA
* Node 13

## 一 业务介绍

本系统分为以下几个模块：管理后台和用户前台

- 管理后台： 可以管理整个系统，管理用户，上架美食，配送美食
- 用户前台：可以查看外卖，购买，充值，下单，评价

### 2.管理员
- 注册一个用户进行登录
  ![ITSource_2024153002.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530542.png)

- 首页查看所有外卖

![ITSource_2024145929.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131529209.png)

- 点击一个外卖，可以查看外卖详情
  ![ITSource_2024152306.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531476.png)
- 也可以查看历史购买评价记录
  ![ITSource_2024152315.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531148.png)

- 公告信息：可以查看网站最新退出活动和餐品
  ![ITSource_2024152049.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530640.png)

![ITSource_2024152105.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530567.png)

- 个人中心：可以修改个人资料，充值余额，可以用来点外卖
  ![ITSource_2024152132.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530234.png)
- 收藏，添加购物车，下单，甲酸
  ![ITSource_2024152207.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530730.png)

- 查看我点过的外卖，收货，评价
  ![ITSource_2024152226.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131530236.png)

- 余额充值
  ![充值.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531176.png)


### 1.管理员后台

- 外卖类型分类管理

![后台1.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531840.png)

- 上架外卖
  ![后台外卖管理.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531706.png)

- 编辑外卖：名称，价格，积分，详情，分类等信息
  ![编辑外卖信息.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131536834.png)

- 评价管理：可以查看每条评价并进行回复
  ![后台评价管理.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531791.png)

- 外卖订单管理：可以查看所有下单订单并进行骑手派送，发货
  ![外卖订单管理.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531768.png)
- 用户管理： 可以管理平台所有用户信息

![平台用户管理.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131531010.png)



## 二 技术介绍
### 1.技术栈

* 后端:  SpringBoot +Mybatis
* 数据库 : MYSQL
* 前端:  VUE + ElementUI

### 2.代码介绍
> ![ITSource_2024150446.png](https://itguang.oss-cn-beijing.aliyuncs.com/202412131539968.png)


### 三 Quick Start

### 1. 环境准备
* MYSQL 8
* JDK1.8
* Maven 3
* IDEA
* Node 13 （如果不需要对配置后台二次开发,不需要安装)

> 以上环境需要准备好, 在自己的本地搭建好,方可进行下面步骤
### 2. 下载源码

**文章末尾获取下载方式。**

### 3. 后端部署

- Step1: 下载源码
- Step2: IDEA 打开项目
- Step3: 安装 Maven 依赖
- Step4: 配置检查
> 数据库配置: 找到配置文件 `src/main/resources/application.yml` 修改为你本地的数据库配置。如
```yml
spring:  
    datasource:  
        driverClassName: com.mysql.cj.jdbc.Driver  
        url: jdbc:mysql://127.0.0.1:13306/itsource_31?useUnicode=true&characterEncoding=utf8&autoReconnect=true&useSSL=false&serverTimezone=UTC&createDatabaseIfNotExist=true  
        username: root  
        password: root
```

注意：**不需要手动创建数据库和初始化表结构，直接运行项目，会自动创建数据库，初始化SQL语句**
- Step4: 启动后端项目
> Idea 运行后端项目,看到以下信息,表示运行成功
> ![Clip_2024-03-23_11-29-44.png](https://itguang.oss-cn-beijing.aliyuncs.com/202403231129908.png)


### 4. 前端部署
项目默认已经构建好了前端静态文件,如果不二次开发的话,不需要单独启动前端项目.

## 下载源码

---
---

关注微信公众号: **ITSource 每日分享**,回复 `0036` 获取源码

---
---

**关注微信公众号 【ITSource每日分享】,免费获取一万个IT资源：项目源码，软件工具，面试面经，学习视频 应有尽有！！！!**

![关注 微信公众号 ! 获取更多学习资源呀](https://itguang.oss-cn-beijing.aliyuncs.com/订阅号.jpeg)

**更多资源推荐:**
- [ITSource 分享 第1期【问卷调查系统】springboot+vue](https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A)
- [ITSource 分享 第2期【在线考试系统】springboot+vue](https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ)
- [ITSource 分享 第4期【简洁的问卷调查系统】springboot+vue](https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw)
- [ITSource 分享 第5期【校园信息墙系统】springboot+vue](https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg)
- [ITSource 分享 第6期【网址云收藏系统】】](https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ)
- [ITSource 分享 第7期【小程序记账软件系统】springboot+小程序](https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ)
- [ITSource 分享 第8期【班级学生管理系统】](https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg)
- [ITSource 分享 第9期【学知识在线考试系统】springboot+vue](https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ)
- [ITSource 分享 第10期【个人博客系统】](https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g)
- [ITSource 分享 第11期【简单的教务管理系统】](https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q)
- [ITSource分享第12期【驾校理论课考试系统】springboot+vue](https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg)
- [ITSource分享第13期【班级信息管理系统】](https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw)
- [ITSource分享第14期【电影院售票管理系统】springboot+vue](https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw)
- [ITSource分享第15期【图书管理系统】](https://mp.weixin.qq.com/s/rgixOXuJyJyZlL8Ny0AE8A)
- [ITSource分享第16期【连锁门店管理系统】springboot+vue](https://mp.weixin.qq.com/s/5aOJ9EHIqcVqtYWdKn3ONw)
- [ITSource分享第17期【宠物管理系统(带论文)springboot+vue】](https://mp.weixin.qq.com/s/S_mDclr4BKOzGZHG6etnoA)
- [ITSource分享第18期【二手交易(电商,商城)系统(带论文和PPT)springboot+vue】](https://mp.weixin.qq.com/s/_LlrbVBq_6nhGp3BY7F38A)
- [ITSource分享第19期【学生选课管理系统springboot+vue】](https://mp.weixin.qq.com/s/b8qTt-XT9SZNzQTKOJQqSw)
- [ITSource分享第20期-Java SpringBoot 微信点餐系统视频](https://mp.weixin.qq.com/s/xqmR6R96yFSZeQOmkCQcmQ)
- [ITSource分享第21期【房屋租赁管理系统】springboot+vue](https://mp.weixin.qq.com/s/7F7EhKv_CG81LEDS1XEJHw)
- [# ITSource分享第22期【景区旅游管理系统】springboot](https://mp.weixin.qq.com/s/ygvHpQeg_frDWD2f1F-R_A)
- [ ITSource分享第23期【图书管理系统】springboot+layui前后端分离](https://mp.weixin.qq.com/s/b1-prJSZdQcEBy0M6JOnDg)
- [第24期【在线拍卖系统】springboot+vue前后端分离+论文+PPT](https://mp.weixin.qq.com/s/VGKHG_ZPER3VA5rTdbXFiQ)
- [第25期【汽车票网上预定系统】springboot+vue前后端分离+论文](https://mp.weixin.qq.com/s/CB6xxXJkvK1GAhAVFUgHZw)
- [# 第26期【在线旅游购买网站系统】springboot+vue前后端分离+论文+PPT](https://mp.weixin.qq.com/s/BfUtXw77GQzXgPQfGyubmg)
- [# 第27期【校园网上租赁交易系统设计与实现】springboot+vue前后端分离+论文+部署文档](https://mp.weixin.qq.com/s/FvWVPlmOkuULLQ9seQHcpQ)
- [# ITSource分享第28期【网上宠物用品交易系统设计与实现】springboot+vue前后端分离+论文+部署文档](https://mp.weixin.qq.com/s/dMLwreWgZFsY56VrQv_dzw)
- [# ITSource分享第29期【在线文档管理系统的设计与实现】springboot+vue前后端分离+论文+PPT+部署文档](https://mp.weixin.qq.com/s/K1ON3lHfR_1K3iKgC2yhMw)
- [# ITSource分享第30期【在线考试管理系统的设计与实现】springboot+vue前后端分离+论文](https://mp.weixin.qq.com/s/s3rYbnRFRgcGYkFzWVlJyw)
- [# ITSource分享第31期【在线视频网站系统的设计与实现】springboot+vue前后端分离+论文](https://mp.weixin.qq.com/s/AdpMAAPM5PGz3scaYh9Hsg)
- [ITSource分享第32期【在线问卷调查网站系统的设计与实现】springboot+vue前后端分离](https://mp.weixin.qq.com/s/SXKUMVhMsKqKbeso2yWKdg)
- [ITSource分享第33期【在线小说阅读系统】](https://mp.weixin.qq.com/s/NAjSRu-dX9hJ4uftcOsvHA)
- [ITSource分享第34期【在线音乐系统】](https://mp.weixin.qq.com/s/B735KGOEslGcGh8m6wDAgA)
- [# ITSource分享第35期【学生宿舍管理系统】](https://mp.weixin.qq.com/s/CCXr-3-g4ZDTOGzTH6PVtA)

---
> 可付费二次开发,  定制, 一对一讲解, 有意可微信联系:  **itguangit**

---