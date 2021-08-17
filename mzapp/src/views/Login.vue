<template>
  <div>
    <div class="tab-title">
      <span>账号登录</span>
      <span class="register-line"></span>
      <span @click="yanzhengma">验证码登录</span>
    </div>
    <div class="main-form">
      <div class="tip-box" :style="{ visibility: closee }">
        <van-icon class="err-ico" name="warning" color="red" />
        <span class="tip-font">账号或者密码不正确!</span>
        <van-icon @click="closee" class="close-ico" name="cross" color="red" />
      </div>
      <div class="main-form-info">
        <input type="text" placeholder="手机号码/Flyme账号" />
      </div>
      <div class="main-form-info">
        <input type="password" placeholder="密码" />
      </div>
      <div class="rememberField">
        <van-checkbox class="rememberFieldl" v-model="checked" shape="square"
          >记住登录状态</van-checkbox
        >
        <span>忘记密码?</span>
      </div>
      <!-- 注册和登录 -->
      <van-button type="info" size="large ">登录</van-button>
      <div class="register" @click="register"><span>注册</span></div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      closee: "hidden",
      checked: false,
    };
  },
  methods: {
    register() {
      //注册事件
      this.$router.push("/register")
    },
    close() {
      console.log(123);
    },
    yanzhengma() {
      this.$router.push("/logins");
    },
  },
};
</script>

<style lang="scss" scoped>
.register {
  color: #515151;
  margin-top: 5vw;
  text-align: center;
}

.rememberField {
  position: relative;
  width: 100%;
  height: 10vw;
  margin-bottom: 10vw;
  .rememberFieldl {
    position: absolute;
    line-height: 10vw;
  }
  span {
    position: absolute;
    color: #198ded;
    font-size: 14px;
    right: 5vw;
  }
}
.main-form-info {
  border: 1px solid #dadada;
  border-radius: 2px;
  height: 46px;
  line-height: 22px;
  padding: 0 5px;
  margin-bottom: 26px;
  input {
    font-size: 16px;
    border: 0;
    line-height: 46px;
    padding: 0;
    padding-left: 5px;
  }
}
.main-form {
  width: 20.625rem;
  margin: 0 auto;
  overflow: visible;
  height: auto;
}

.tab-title {
  position: relative;
  font-size: 18px;
  margin-top: 35px;
  width: 100%;
  text-align: center;
  span:first-child {
    color: #000;
    position: absolute;
    right: 50%;
    margin-right: 25px;
  }
  .register-line {
    color: #d9d9d9;
    display: inline-block;
    border: 1px solid #dadada;
    border-left: 1px;
    height: 16px;
    line-height: 20px;
    margin-right: 25px;
    margin-left: 25px;
  }
  span:last-child {
    color: #7f7f7f;
    position: absolute;
    left: 50%;
    padding-left: 25px;
  }
}
.tip-box {
  position: relative;
  height: 33px;
  display: table;
  width: 100%;
  margin-bottom: 4px;
  margin-top: 4px;
  border: solid 1px #ffc2b3;
  background: #ffd1ca;
  border-radius: 2px;
  .err-ico {
    display: inline-block;
    position: absolute;
    top: 8px;
    left: 10px;
  }
  .tip-font {
    overflow: visible;
    color: #666;
    font-size: 12px;
    padding-right: 25px;
    padding-left: 35px;
    display: table-cell;
    vertical-align: middle;
  }
  .close-ico {
    display: inline-block;
    position: absolute;
    top: 8px;
    right: 10px;
  }
}
</style>
