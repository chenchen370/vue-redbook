<template>
    <div class="title"><a href="/indexPage">小红书</a></div>
    <div class="sidebar-cont">
        <el-menu >
            <router-link to="/mainPage">
                <el-menu-item index="1">
                    <template #title>
                        <el-icon><Discount /></el-icon>
                        <span>发现</span>                        
                    </template>
                </el-menu-item>
            </router-link>

            <router-link to="/PostForm">
                    <el-menu-item index="2">
                    <template #title>
                        <el-icon><ZoomIn /></el-icon>
                        <span>发布</span>                    
                    </template>
                </el-menu-item>
            </router-link>


            <el-menu-item index="3">
                <template #title>
                    <el-icon><BellFilled /></el-icon>
                    <span>通知</span>
                </template>
            </el-menu-item>

            <router-link to="/cardPage">
                    <el-menu-item index="4">
                    <template #title>
                        <el-icon><ZoomIn /></el-icon>
                        <span>探索</span>                    
                    </template>
                </el-menu-item>
            </router-link>


        </el-menu>

    </div>
    
</template>


<script>

</script>







<style scoped>
  .title{
    margin-left:30px;
    font-size: 24px;
    font-family: system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji, BlinkMacSystemFont, Helvetica Neue, Arial, PingFang SC, PingFang TC, PingFang HK, Microsoft Yahei, Microsoft JhengHei;
    border-radius: 30px;
    color:#fff;
    background-color: red;
    min-width: fit-content;
    width: 60px;
    margin-top:20px;
  }

  a {
  text-decoration: none; /* 去掉下划线 */
  color: inherit; /* 继承父元素的颜色 */
}

span{
    font: bold;
}

.sidebar-cont{
    margin-top: 50px;
}
</style>