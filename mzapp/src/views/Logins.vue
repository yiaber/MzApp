<template>
  <div>
    <div class="main-form">
      <div class="tab-title">
        <span @click="zhanghao">账号登录</span>
        <span class="register-line"></span>
        <span>验证码登录</span>
      </div>
      <div class="tip-box" :style="{ visibility: closee }">
        <van-icon class="err-ico" name="warning" color="red" />
        <span class="tip-font">账号或者密码不正确!</span>
        <van-icon @click="close" class="close-ico" name="cross" color="red" />
      </div>
      <div class="input-box">
        <span>
          <input type="text" value="+86" readonly />
          <van-icon name="arrow-down" color="#ddd" />
        </span>
        <input type="text" class="phone-cell" placeholder="手机号码" />
      </div>
      <!-- 注册和登录 -->
      <van-button type="info" size="large " style="margin-top: 50px;"
        >登录</van-button
      >
      <div class="register"  @click="register"><span>注册</span></div>
      <input type="text" v-model="phone" >
    </div>
  </div>
</template>

<script>
import { mapState, mapMutations } from 'vuex'
export default {
  data() {
    return {
      closee: "hidden",
      phone:'',
    };
  },
  methods: {
    ...mapMutations(["setPhone"]),
    register() {
      //注册事件
      this.$router.push("/register")
    },
    close() {
      console.log(123);
    },
    zhanghao() {
      this.$router.push("./login");
    },
  },
  computed:{
    ...mapState(["uname"])
  }
};
</script>

<style lang="scss" scoped>
.register {
  color: #515151;
  margin-top: 5vw;
  text-align: center;
}
.input-box {
  border: 1px solid #ddd;
  height: 46px;
  border-radius: 5px;
  line-height: 46px;
  span {
    color: grey;
    margin-left: 10px;
    width: 60px;
    input {
      width: 40px;
      border: 0;
      padding: 0;
    }
  }
  .phone-cell {
    text-indent: 8px;
    padding-left: 10px;
    margin-left: 10px;
    height: 23px;
    padding: 0;
    border: 0;
    border-left: 1px solid #ddd;
  }
}

.main-form {
  width: 20.625rem;
  margin: 5rem auto 0;
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
    color: #7f7f7f;
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
    color: #000;

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
