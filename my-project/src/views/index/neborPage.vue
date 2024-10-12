<template>
    <div style="display: flex; justify-content: space-between;">
      <router-link to="/map?lat=40.03&lng=116.31">
        <el-card style="width: 580px; height: 600px;">
          <template #header>Yummy hamburger--------北京人最爱吃的汉堡</template>
          <img
            src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
            style="width: 100%; height: 400px; object-fit: cover;"
          />
        </el-card>
      </router-link>
      
      <router-link to="/map?lat=40.03&lng=116.31">
        <el-card style="width: 580px; height: 600px;">
          <template #header>Yummy hamburger</template>
          <img
            src="https://tse2-mm.cn.bing.net/th/id/OIP-C.KEsnZCVxJ7e01r-oyAaO-QHaE0?w=196&h=127&c=7&r=0&o=5&dpr=2&pid=1.7"
            style="width: 100%; height: 400px; object-fit: cover;"
          />
        </el-card>
      </router-link>
    </div>
  </template>
  
  <style scoped>
  .el-card {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  </style>
  