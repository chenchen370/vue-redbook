<template>
  <div class="user-profile">
    <div class="img">
      <img 
        :src="`http://localhost:3000/api/${userData.author_avatar}`" 
        alt="User Image" 
        class="user-image"
        v-if="userData" 
        style="width: 150px;height: 150px;"
      />
    </div>

    <div class="media">
      <p style="font-weight: 600;font-size: 24px;line-height: 120%;">{{ username }}</p>
      <p style="font-size: 12px;line-height: 120%;color: var(--color-tertiary-label);">小红书号：9313752992 IP属地：山西</p>
      <p>点我关注❤️，每天分享搞笑日常，幽默搞笑段子。</p>
      <p>📧 836255069@qq.com</p>
      <div class="tag">
        <div class="item-tag">22岁</div>
        <div class="item-tag">搞笑博主</div>
        <div class="item-tag">情感</div>
      </div>
      <p>10+ <span class="attention">关注</span >&nbsp; &nbsp;1千+ <span class="attention">粉丝 </span> &nbsp; &nbsp;1万+  <span class="attention">获赞与收藏</span></p>
    </div>

    
  </div>
  <div class="footer">
        <div class="note" style="margin-left: 40%;">笔记</div>
        <div class="collect" style="margin-left: 5%;margin-bottom: 0px;"><el-icon><Lock /></el-icon>收藏</div>
    </div>
  <mainPageVue :info="parentmsg" :users="users"></mainPageVue>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { useRoute } from 'vue-router';
import axios from 'axios';
import mainPageVue from '../../components/index/mainPage.vue';

const parentmsg = ref('父组件传过来的信息');
const route = useRoute();
const username = ref('');
const userData = ref(null);
const error = ref(null);


const users = ref([]); // 假设你从 API 获取用户数据并赋值给这个变量

const fetchUsers = async () => {
  try {
    const response = await axios.get('/api/api/users');
    users.value = response.data;
  } catch (error) {
    console.error('Error fetching users:', error);
  }
};

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

onMounted(async () => {
  await Promise.all([fetchUserData(), fetchUsers()]);
});
</script>

  
  <style scoped>
.user-profile{
    display: flex;
}
  
  .img {
    margin-left: 30px; /* Space below the image */
  }
  .img img{
    object-fit: cover;
    border-radius: 50%;
  }
 
  p{
    margin-top: 1px;
  }

  .tag{
    display: flex;
  }
  .item—tag{
    border-radius: 10px;
    background-color: rgb(133, 133, 133);
    margin-left: 10px;
  }

  .attention{
    color: #333333;
  }

  .media{
    margin-left: 50px;
  }

  .footer{
    display: flex;
    align-content: center;
    
  }


  </style>
  