<template>
<div class="main">
  <el-form :model="formLogin" :rules="rules" ref="ruleForm" label-width="0px" class="login-bok">
    
    <el-form-item prop="username">
      <el-input v-model="formLogin.username" placeholder="账号">
        <template #prepend>
            <el-icon><User /></el-icon>
      </template>
        <!-- <i slot="prepend" class="el-icon-s-custom"/> -->
      </el-input>

    </el-form-item>
    <el-form-item prop="password">
      <el-input type="password" placeholder="密码" v-model="formLogin.password">
        <template #prepend>
            <el-icon><Lock /></el-icon>
      </template>
      </el-input>
    </el-form-item>

    <el-form-item prop="code">
      <el-row :span="24">
        <el-col :span="12">
          <el-input v-model="formLogin.code" auto-complete="off" placeholder="请输入验证码" size=""></el-input>
        </el-col>
        <el-col :span="12">
          <div class="login-code" @click="refreshCode">
            <!--验证码组件-->
            <s-identify :identifyCode="identifyCode"></s-identify>
          </div>
        </el-col>
      </el-row>
    </el-form-item>

    <el-form-item label="" >
        <div class="row" >
            <div class="left">
                <el-checkbox v-model="formLogin.ElCheckbox" value="Sponsor">同意 <a href="terms">用户协议</a></el-checkbox>
            </div>
            <div class="right">
                <a href="/reset_password">忘记密码?</a>
                
            </div>
            

        </div>
    </el-form-item>


    <el-form-item>
      <div class="login-btn" @click="login"> 
        <el-button type="primary"  style="margin-left: auto;width: 291.2px;">登录</el-button>
        <!-- <el-button type="primary" @click="submitForm()" style="margin-left: 27%;width: 35%" >注册</el-button> -->
      </div>
    </el-form-item>

    <el-form-item>
        <div class="left">
            社交账号登录
        </div>
        <div class="image">
            <img src="../../assets/images/Logo/WeChatLogo.png">
        </div>

        <div class="image">
            <img src="../../assets/images/Logo/FacebookLogo.png">
        </div>

        <div class="Register">
            或<a href="Register">注册账号</a>
        </div>

    </el-form-item>
  </el-form>


  <el-dialog v-model="centerDialogVisible" title="登录验证" width="500" center >
    <span>
        请阅读并勾选用户协议
    </span>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="centerDialogVisible = false">Cancel</el-button>

      </div>
    </template>
  </el-dialog>

  <el-dialog v-model="centeridentifyCode" title="登录验证" width="500" center >
    <span>
        请输入有效的验证码
    </span>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="centeridentifyCode = false">Cancel</el-button>

      </div>
    </template>
  </el-dialog>

  <el-dialog v-model="centerDialogUser" title="登录验证" width="500" center >
    <span>
        请输入正确的账户密码
    </span>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="centerDialogUser = false">Cancel</el-button>

      </div>
    </template>
  </el-dialog>


</div>
</template>
<script setup>
import { ref, onMounted } from 'vue';
import SIdentify from "../../components/SIdentify.vue";
// import DiaLog from '@/components/index/DiaLog.vue';
import { useRouter } from 'vue-router';


// 在 setup 函数中使用 useRouter
const router = useRouter();
// Reactive references
const ruleForm = ref(null);
const identifyComponent = ref(null);
const formLogin = ref({
  // Define your form model here
});
const centerDialogVisible = ref(false)
const centeridentifyCode = ref(false)

const centerDialogUser=ref(false);
const visible = ref(false);
// const dialogInfo = ref(''); // 可以根据需要设置信息
const identifyCode = ref('447D'); // Example code, replace with actual logic
identifyCode.value=Math.random().toString(36).substr(2, 4).toUpperCase();
const rules = ref({
  // Define your form validation rules here
});

// Methods
const refreshCode = () => {
  // Logic to refresh the code, for example:
  identifyCode.value = Math.random().toString(36).substr(2, 4).toUpperCase();
  
  // Assuming SIdentify has a method to refresh or you might need to force update
  if (identifyComponent.value) {
    identifyComponent.value.refresh(); // If SIdentify has a refresh method
  }
};


const login = () => {
  // 验证验证码
  if (formLogin.value.code !== identifyCode.value) {
    centeridentifyCode.value = true;
    console.log(visible.value);
    return; // 如果验证码不正确，终止后续逻辑
  }

  // 检查是否勾选用户协议
  if (!formLogin.value.ElCheckbox) {
    centerDialogVisible.value = true;
    return; // 如果未勾选，终止后续逻辑
  }

  // 验证用户名和密码
  if (formLogin.value.username === "admin" && formLogin.value.password === "admin") {
    // 跳转到另一个页面
    localStorage.setItem('username', formLogin.value.username);
    router.push('/mainPage'); // 替换 '/目标路由' 为你想要跳转的实际路径
  } else {
    
    centerDialogUser.value = true;

  }
}



// Lifecycle hooks
onMounted(() => {
  refreshCode
});
</script>
    


<style  scoped>
.login-bok{
    width: 30%;
    margin: 150px auto;
    border: 1px solid #DCDFE6;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 30px #DCDFE6;
    
}
.row{
    display: flex;
    justify-content: space-between;
}

.right{
    margin-left: 20px;
}
.main{
    width: 100%;
    height: auto;
    /* background-color: aquamarine; */
}
.image{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    overflow: hidden;
    margin-left: 20px;
    align-content: center;

}

img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.Register{
    margin-left:80PX;
}
</style>
