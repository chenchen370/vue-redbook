<template>
  <div style="display: flex; justify-content: space-between;">

    <el-card style="width: 580px; height: 600px;">
      <template #header>Yummy hamburger--------北京人最爱吃的汉堡</template>
      <router-link to="/map?lat=40.03&lng=116.31">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          style="width: 100%; height: 400px; object-fit: cover;"
        />
      </router-link>
      <el-rate
        v-model="value"
        :texts="['oops', 'disappointed', 'normal', 'good', 'great']"
        show-text
        style="margin-left: 200px;"
      />
      <div style="margin-left: 50px;" @click="openDialog('dialog1')">查看评论：<el-icon><ChatDotRound /></el-icon></div>
    </el-card>

    <el-card style="width: 580px; height: 600px;">
      <template #header>Yummy hamburger</template>
      <router-link to="/map?lat=40.03&lng=116.31">
        <img
          src="https://tse2-mm.cn.bing.net/th/id/OIP-C.KEsnZCVxJ7e01r-oyAaO-QHaE0?w=196&h=127&c=7&r=0&o=5&dpr=2&pid=1.7"
          style="width: 100%; height: 400px; object-fit: cover;"
        />
      </router-link>
      <el-rate
        v-model="value2"
        :texts="['oops', 'disappointed', 'normal', 'good', 'great']"
        show-text
        style="margin-left: 200px;"
      />
      <div style="margin-left: 50px;" @click="openDialog('dialog2')">查看评论：<el-icon><ChatDotRound /></el-icon></div>
    </el-card>

    <el-dialog
      v-model="dialogVisible1"
      title="评论区 1"
      width="500"
      :before-close="handleClose"
    >
    <neiborComment1></neiborComment1>
     
    </el-dialog>

    <el-dialog
      v-model="dialogVisible2"
      title="评论区 2"
      width="500"
      :before-close="handleClose2"
    >
    <neiborComment2></neiborComment2>
    </el-dialog>

  </div>
</template>

<script setup>
import { ref } from 'vue';
import { ElMessageBox, ElMessage } from 'element-plus';
import neiborComment2 from "../../components/comment/neiborComment2.vue"
import neiborComment1 from "../../components/comment/neiborComment1.vue"
const value = ref();
const value2 = ref();
const dialogVisible1 = ref(false);
const dialogVisible2 = ref(false);

const openDialog = (dialog) => {
  if (dialog === 'dialog1') {
    dialogVisible1.value = true;
  } else if (dialog === 'dialog2') {
    dialogVisible2.value = true;
  }
};

const handleClose = (done) => {
  ElMessageBox.confirm('确定要关闭此对话框吗？')
    .then(() => {
      done();
    })
    .catch(() => {
      ElMessage.error('关闭操作被取消');
    });
};

const handleClose2 = (done) => {
  ElMessageBox.confirm('确定要关闭此对话框吗？')
    .then(() => {
      done();
    })
    .catch(() => {
      ElMessage.error('关闭操作被取消');
    });
};
</script>

<style scoped>
.el-card {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
