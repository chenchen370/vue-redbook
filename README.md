# Vue Redbook

一个基于 Vue.js+express 的小红书模仿，包含评论，导航，主页，缓加载。

## 目录
- mysql数据库文件  用户密码改为你的 一般是 root 123456
- 在express-clientt目录下 cmd命令:node app.js
- 在my-project目录下 cmd命令:npm run serve
 
## 目录

- [功能](#功能)
- [安装](#安装)
- [使用](#使用)
- [贡献](#贡献)
- [许可证](#许可证)

## 功能
-1.主页
这是用户进入应用后的欢迎页面，简单介绍应用的核心功能，吸引用户登录或注册
点击之后回来到2（登录界面）
-2. 登录/注册页面
登录页面：用户可以在这里输入用户名和密码来登录应用。
o提供“忘记密码”选项，帮助用户重置密码。
o支持通过社交媒体（如Google、Facebook、WeChat）快速登录。
注册页面：新用户可以在这里创建账户，输入用户名、密码、电子邮件，或通过社交媒体注册。可以加一个条款界面里面有关于一些隐私条款（）


-3.（主菜单页面）
用户登录后进入的主界面，提供核心功能的快捷链接。
o包含访问社区、旅行伴侣匹配、个人资料、AR功能、Local favourite等功能的导航按钮。
-4. 社区页面（类似小红书）
用户可以浏览其他旅行者的帖子，分享自己的旅行经验。
o帖子以网格形式展示，用户可以点赞、评论帖子，并根据标签（如“关注”、“附近”、“探索”）过滤内容。
o用户也可以点击按钮发布自己的旅行帖子，分享图片和文字内容。
o需要有发布界面 用户可以上传本地的图片 和文字
o需要打开别人的帖子，里面可以评论点赞
-5. 旅行伴侣匹配页面
该页面显示潜在的旅行伴侣，提供用户的个人资料、距离、和相似兴趣信息。
o用户可以点击查看详细资料，或点击“匹配”按钮与该伴侣建立联系。
o航班聊天室
o先建立一个筛选日期查找航班的，然后可以加入聊天室进行聊天
-6. 个人资料页面
用户可以在此页面查看并更新个人信息，包括头像、姓名、性别、目的地、旅行日期和简介。
o用户可以保存更新后的信息，确保资料时刻保持最新。
-7. AR增强现实页面
用户可以用手机摄像头扫描地标或物体，应用会识别地标并展示相关的文本信息或播放音频介绍。（这个很难实现，有没有替代方案解决？）
o页面会显示摄像头的取景框，用户可以选择进行扫描以获取实时的地标信息。

-8.本地人最爱
显示本地人最近浏览的店，打开可以进行评论，这个我们做好了但是无法发布评论，最好在家一个导航的功能 需要用谷歌地图的api

-9. 设置页面
用户可以在这里管理账户设置和应用偏好，例如通知设置、语言偏好以及账户隐私选项。


-10. 地点详情页面（可选）
用户点击社区或推荐的目的地后，会跳转到此页面，展示该地标或景点的详细信息。
o包括图片展示、文字描述、历史背景、用户评分和评论功能。
-11. 消息页面（可选）
该页面展示用户与旅行伴侣或社区成员的聊天记录，用户可以查看和回复消息。
聊天界面（私聊）  社群聊天界面（群）




# 部分截图
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163013.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163020.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163029.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163051.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163058.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163106.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163113.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163121.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163140.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163151.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163203.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163210.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163216.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163227.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163240.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163248.png" width="650" height="300"/>
<img src="https://github.com/chenchen370/vue-redbook/blob/main/screenshots/QQ截图20241012163259.png" width="650" height="300"/>


## 安装

1. 克隆仓库：

   ```bash
   git clone https://github.com/chenchen370/vue-redbook.git
