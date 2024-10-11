<template>
    <div class="explore">
      <div class="left">
        <img 
          :src="`http://localhost:3000/api/${userData.images}`" 
          alt="User Image" 
          class="user-image" 
          v-if="userData" 
        />
      </div>
  
      <div class="right">
        <div class="inline" v-if="userData">
          <router-link :to="`/userProfile?username=${userData.username}`">
            <div class="author_avatar">
              <img 
                :src="`http://localhost:3000/api/${userData.author_avatar}`" 
                alt="User Image" 
                class="user-image" 
              />
            </div>
          </router-link>
  
          <div class="ava_username">
            {{ userData.username }}
          </div>
          <div class="concern" @click="toggleFollow">
            <el-button :type="isFollowing ? 'success' : 'danger'" round>
              {{ isFollowing ? '已关注' : '关注' }}
            </el-button>
          </div>
        </div>
  
        <div style="margin-left: 60px;">
          <h3>{{ userData?.caption }}</h3>
        </div>
  
        <div style="margin-left: 60px;">
          {{ userData?.content }}
        </div>
  
        <div class="post" style="margin-left: 60px;">
          <div>
            编辑于 2天前 {{ userData?.ip }}
          </div>
        </div>
  
        <div class="comment" style="width: 100%; height: 20%;">
          <comMentVue></comMentVue>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import comMentVue from "../../components/comment/comMent.vue";
  import axios from 'axios';
  import { onMounted, ref } from 'vue';
  import { useRoute } from 'vue-router';
  
  const username = ref('');
  const userData = ref(null);
  const error = ref(null);
  const route = useRoute();
  
  const isFollowing = ref(false);
  
  // 查询是否关注
  const checkFollowStatus = async () => {
    try {
      const response = await axios.get('/api/api/checkFollow', {
        params: {
          username: localStorage.getItem('username'),
          bloggerId: username.value // 使用正确的 username
        }
      });
      
      isFollowing.value = response.data.isFollowing; // 假设返回 { isFollowing: true/false }
    } catch (err) {
      console.error('查询关注状态失败', err);
    }
  };
  
  // 切换关注状态
  const toggleFollow = async () => {
    const currentUsername = localStorage.getItem('username');
    try {
      if (isFollowing.value) {
        await axios.post('/api/api/unfollow', {
          username: currentUsername,
          bloggerId: username.value // 使用正确的 username
        });
        isFollowing.value = false; // 更新状态
      } else {
        await axios.post('/api/api/follow', {
          username: currentUsername,
          bloggerId: username.value // 使用正确的 username
        });
        isFollowing.value = true; // 更新状态
      }
    } catch (err) {
      console.error('关注状态更新失败', err);
    }
  };
  
  // 获取用户数据
  const fetchUserData = async () => {
    username.value = route.query.username;
    if (!username.value) {
      error.value = 'Username not found in URL';
      return;
    }
    
    try {
      const response = await axios.get('/api/api/getUserData', {
        params: { username: username.value }
      });
      userData.value = response.data;
    } catch (err) {
      error.value = err.response?.data?.message || 'An error occurred while fetching user data';
      console.error('Error fetching user data:', err);
    }
  };
  
  // 初始化
  onMounted(async () => {
    await fetchUserData();
    await checkFollowStatus();
  });
  </script>





  <style lang="scss" scoped>
  .explore {
    display: flex;
    position: relative; /* 使子元素的绝对定位相对于这个元素 */
    width: 100%; /* 确保占满可用宽度 */
    height: 100%; /* 确保占满可用高度 */
    
    .left,
    .right {
      width: 50%; /* 各占 50% */
      height: 100%; /* 占满父容器的高度 */
    //   display: flex; /* 使内容居中 */

      align-content: center;

      box-sizing: border-box; /* 确保内边距和边框包含在宽度和高度内 */
    }
    
    .left {
    //   background-color: #f0f0f0; /* 可选：背景色 */
      img{
        // object-fit: cover;
        width: 100%;
    }
    }
    
    .right {
    // align-items: center; /* 垂直居中 */
    // box-sizing: border-box; /* 包含内边距和边框在宽度内 */
    margin-left: 4%;
    //   background-color: #e0e0e0; /* 可选：背景色 */

    .inline{
        width: 100%;
        height: 90px;
        align-items: center;
        display: flex;
        .author_avatar{
        justify-content: center;

        img{
            border-radius: 50%;
            object-fit: cover;
           margin-left: 10px;
           width: 45px;
           height: 45px;
        }
      }
      .ava_username{
        font-size: 20px;
        flex: 1;
        margin-left: 20px;
      }

    }            
    }

  }
 
  </style>
  