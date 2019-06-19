# MySite
基于Django的个人博客

#### 已添加功能
* 用户登录、注册、注销;管理员后台管理
* 首页图片轮播
* 博客分类、内容分页
* 文章评论(Ajax异步提交)，富文本编辑
* 访问统计(HighCharts图表展示)、热门文章推荐(ContentType关联)
* 豆瓣新片推荐（静态爬取）
* 1905网"今日影评"获取（Json解析）
* 12306登录（Selenium模拟访问）

#### Tips
* 合理套用母版页，减少代码量<br>
示例：<br>
{% extends "base.html" %}

{% block title %}错误提示{% endblock %}
{% block nav_blog_active %}active{% endblock %}

{% block content %}
    {{ message }}
{% endblock %}

* 界面通过BootStrap美化
* 运用HighCharts工具进行数据图表化
* 小图标使用font-awesome样式

#### To be Resolved
  12306登录借鉴源码，但是现在...web/login登录显示网络访问有误，导致验证成功后无法正确跳转登录界面<br>
  测试后台接收信息：status:4  验证码成功，而登录则直接返回一个error.html
  目前暂未解决
