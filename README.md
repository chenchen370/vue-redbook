# Vue Redbook

一个基于 Vue.js+express 的小红书模仿，包含评论，导航，主页，缓加载。

## 运行说明
- mysql数据库文件  用户密码改为你的 一般是 root 123456
- 在express-clientt目录下 cmd命令:node app.js
- 在my-project目录下 cmd命令:npm run serve
 
## 目录

- [功能](#功能)
- [安装](#安装)
- [使用](#使用)
- [贡献](#贡献)
- [许可证](#部分截图)

## 功能

### 1. 主页
- 这是用户进入应用后的欢迎页面，简单介绍应用的核心功能，吸引用户登录或注册。点击后返回到 2（登录界面）。

### 2. 登录/注册页面
- **登录页面**：
  - 用户可以在这里输入用户名和密码来登录应用。
  - 提供“忘记密码”选项，帮助用户重置密码。
  - 支持通过社交媒体（如 Google、Facebook、WeChat）快速登录。

- **注册页面**：
  - 新用户可以在这里创建账户，输入用户名、密码、电子邮件，或通过社交媒体注册。
  - 可以加一个条款界面，里面有关于一些隐私条款。

### 3. 主菜单页面
- 用户登录后进入的主界面，提供核心功能的快捷链接。
- 包含访问社区、旅行伴侣匹配、个人资料、AR 功能、Local Favourite 等功能的导航按钮。

### 4. 社区页面（类似小红书）
- 用户可以浏览其他旅行者的帖子，分享自己的旅行经验。
  - 帖子以网格形式展示，用户可以点赞、评论帖子，并根据标签（如“关注”、“附近”、“探索”）过滤内容。
  - 用户可以发布自己的旅行帖子，分享图片和文字内容。
    - 需要有发布界面，用户可以上传本地的图片和文字。
    - 需要能够打开别人的帖子，进行评论和点赞。

### 5. 旅行伴侣匹配页面
- 显示潜在的旅行伴侣，提供用户的个人资料、距离和相似兴趣信息。
  - 用户可以点击查看详细资料，或点击“匹配”按钮与该伴侣建立联系。
  - **航班聊天室**：提供筛选日期查找航班的功能，并可以加入聊天室进行聊天。

### 6. 个人资料页面
- 用户可以查看并更新个人信息，包括头像、姓名、性别、目的地、旅行日期和简介。
  - 用户可以保存更新后的信息，确保资料时刻保持最新。

### 7. AR 增强现实页面
- 用户可以用手机摄像头扫描地标或物体，应用会识别地标并展示相关的文本信息或播放音频介绍。
  - 页面会显示摄像头的取景框，用户可以选择进行扫描以获取实时的地标信息。

### 8. 本地人最爱
- 显示本地人最近浏览的店，用户可以进行评论。
  - 该功能已完成，但目前无法发布评论；建议添加导航功能，需要用 Google 地图的 API。

### 9. 设置页面
- 用户可以管理账户设置和应用偏好，例如通知设置、语言偏好以及账户隐私选项。

### 10. 地点详情页面（可选）
- 用户点击社区或推荐的目的地后，会跳转到此页面，展示该地标或景点的详细信息。
  - 包括图片展示、文字描述、历史背景、用户评分和评论功能。

### 11. 消息页面（可选）
- 展示用户与旅行伴侣或社区成员的聊天记录，用户可以查看和回复消息。
  - 聊天界面（私聊）。
  - 社群聊天界面（群聊）。






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
