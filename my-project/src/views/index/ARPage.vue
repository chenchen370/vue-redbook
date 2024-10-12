<template>
    <div>
      <div style="display: flex;align-items: center;">
        <div>
            <h3>选择渲染图片</h3> 
        </div>
        <div style="margin-left: 60px;">
            <input type="file" @change="handleImageUpload" class="custom-file-input" accept="image/*" />
        </div>


         
      </div>
  
      <div>
        <img v-if="imageSrc" :src="imageSrc" alt="Uploaded Image" style="position: relative; max-width: 100%; margin-top: 20px;" />
      </div>
  
      <el-dialog
        v-model="dialogVisible"
        title="视频播放"
        width="600px"
        :before-close="handleClose"
        :style="{ height: '70%' }"
      >
        <video ref="videoPlayer" controls :src="videoSrc" style="height: 500px; width: 100%; object-fit: cover;"></video>
        <template #footer>
          <!-- <div class="dialog-footer">
            <el-button @click="dialogVisible = false">取消</el-button>
            <el-button type="primary" @click="dialogVisible = false">确认</el-button>
          </div> -->
        </template>
      </el-dialog>
    </div>
  </template>
  
  <script setup>
  import { ref } from 'vue';
  import { ElMessageBox } from 'element-plus';
  
  const dialogVisible = ref(false);
  const imageSrc = ref('');
  const videoSrc = ref('http://localhost:3000/api/下载.mp4'); // 替换为你的视频路径
  const videoPlayer = ref(null); // 引用视频元素
  
  const handleImageUpload = (event) => {
    const file = event.target.files[0];
    if (file && file.type.startsWith('image/')) {
      imageSrc.value = URL.createObjectURL(file); // 创建图片文件的 URL
      dialogVisible.value = true; // 打开弹窗
    } else {
      alert('请上传有效的图片文件');
    }
  };
  
  const handleClose = (done) => {
    ElMessageBox.confirm('确定要关闭这个对话框吗？')
      .then(() => {
        stopVideo(); // 强行停止视频
        dialogVisible.value = false; // 关闭对话框
        done();
      })
      .catch(() => {
        // 用户取消关闭
      });
  };
  
  // 强行停止视频播放
  const stopVideo = () => {
    if (videoPlayer.value) {
      videoPlayer.value.pause(); // 暂停视频
      videoPlayer.value.currentTime = 0; // 将播放时间重置为 0
    }
  };
  </script>
  

  