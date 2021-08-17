<template>
  <div class="main-form">
    <!-- 顶部注册字样 -->
    <div class="tab-title">
      <span>注册</span>
    </div>
    <!-- 顶部错误提示 -->
    <div class="tip-box" :style="{ visibility: closee }">
      <van-icon class="err-ico" name="warning" color="red" />
      <span class="tip-font">账号或者密码不正确!</span>
      <van-icon @click="closee" class="close-ico" name="cross" color="red" />
    </div>
    <!-- 手机号码 -->
    <div class="input-box">
      <span>
        <input type="text" value="+86" readonly />
        <van-icon name="arrow-down" color="#ddd" />
      </span>
      <input type="text" class="phone-cell" placeholder="手机号码" />
    </div>
    <!-- 密码 -->
    <div class="pwd">
      <input type="password" placeholder="请输入密码" />
    </div>
    <!-- 确认条款 -->
    <div class="rememberField">
      <van-checkbox
        class="kuang"
        style=" display: inline-block;"
        v-model="checked"
        shape="square"
      >
      </van-checkbox>
      <span>
        注册账号即表示您同意并愿意遵守 Flyme账号服务协议 、 法律声明 和 隐私政策
      </span>
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
};
</script>

<style lang="scss" scoped>
//  主体样式
.main-form {
  width: 20.625rem;
  margin: 5rem auto 0;
  overflow: visible;
  height: auto;
  margin: 10px auto;
  //   顶部注册字样
  .tab-title {
    font-size: 18px;
    /* margin-bottom: 60px; */
    margin-top: 60px;
    text-align: center;
    span {
      color: #00a7ea;
    }
  }
  //   顶部错误提示
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
  //   手机号码
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
  //   密码
  .pwd {
    border: 1px solid #ddd;
    border-radius: 5px;
    height: 46px;
    line-height: 46px;
    margin-top: 40px;
    margin-bottom: 25px;
    input {
      margin-left: 10px;
      border: 0;
      padding: 0;
      text-indent: 8px;
    }
  }
  //   服务条款
  .rememberField {
      .kuang{
          width: 20px;
      }
    span {
      line-height: 25px;
    }
  }
}
</style>
