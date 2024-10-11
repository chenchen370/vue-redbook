<template>
    <el-form :model="form" label-width="auto" style="max-width: 600px" class="register-bok">
      <el-form-item  style="display: flex;">
        <div style="width:250px">
            <el-input v-model="form.name"  placeholder="输入手机号">
                <template #prepend>
                    <el-icon><Cellphone /></el-icon>
            </template>
            </el-input>
            
        </div>
        <div style="margin-left: 0px;">
            
            <el-button>获取验证码</el-button>
        </div>
            
        
        
      </el-form-item>
      
      <el-form-item >
        <el-input v-model="form.password"  placeholder="输入密码">
            <template #prepend>
                <el-icon><User /></el-icon>
            </template>
        </el-input>
      </el-form-item>

      <el-form-item >
        <el-input v-model="form.password"  placeholder="确认密码">
            <template #prepend>
                <el-icon><User /></el-icon>
            </template>
        </el-input>
      </el-form-item>

      <el-form-item >
        <el-input v-model="form.password"  placeholder="昵称">
            <template #prepend>
                <el-icon><User /></el-icon>
            </template>
        </el-input>
      </el-form-item>

      <el-form-item >

        <el-checkbox value="Sponsor">同意<a href="/terms">      用户协议</a></el-checkbox>
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
            或<a href="/">登录已有账号</a>
        </div>

    </el-form-item>


      
      

      <el-form-item>
        <el-button type="primary" @click="onSubmit">Create</el-button>
        <el-button>Cancel</el-button>
      </el-form-item>
    </el-form>
  </template>
  
  <script  setup>
  import { reactive } from 'vue'
  
  // do not use same name with ref
  const form = reactive({
    name: '',
    password:'',
    region: '',
    date1: '',
    date2: '',
    delivery: false,
    type: [],
    resource: '',
    desc: '',
  })
  
  const onSubmit = () => {
    console.log('submit!')
  }
  </script>
  

  <style>
.register-bok{
    width: 30%;
    margin: 150px auto;
    border: 1px solid #DCDFE6;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 30px #DCDFE6;
    
}
img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.Register{
    margin-left:10PX;
}
.image{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    overflow: hidden;
    margin-left: 20px;
    align-content: center;

}
</style>