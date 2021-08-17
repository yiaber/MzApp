<template>
  <div class="bg">
    <!-- 头像区域 -->
    <div class="heard-cell">
      <img src="../assets/login/bg-account-6b2c646.jpg" alt="" />
      <van-icon  @click="black" class="icon-left" name="arrow-left" size="6vw" color="#fff" />
      <van-icon class="icon-right" name="comment-o" size="6vw" color="#fff" />
      <div class="btn">
        <img src="../assets/login/login.png" alt="" />
      </div>
      <p @click="login">点击登录</p>
    </div>
    <!-- 订单区域  -->
    <div class="center-cell">
      <van-cell is-link>
        <template #title>
          <span class="span">我的订单</span>
        </template>
        <template #default>
          <span>查看全部订单</span>
        </template>
      </van-cell>
      <van-grid clickable :border="false">
        <van-grid-item icon="paid" text="待付款" />
        <van-grid-item icon="send-gift-o" text="待发货" />
        <van-grid-item icon="logistics" text="待收货" />
        <van-grid-item icon="refund-o" text="退款/售后" />
      </van-grid>
      <van-grid
        class="center-cell-dz"
        clickable
        :border="false"
        :contextmenu="4"
      >
        <van-grid-item>
          <img src="../assets/login/下载 (1).png" alt="" />
          <span>我的收藏</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/login/下载 (3).png" alt="" />
          <span>我的地址</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/login/下载 (2).png" alt="" />
          <span>我的红包</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/login/下载.png" alt="" />
          <span>我的优惠券</span>
        </van-grid-item>
      </van-grid>
      <div class="cell">
          <div>
              <span>M码通道</span>
              <van-icon name="arrow" color="#999" />
          </div>
          <div>
              <span>手机号查询订单</span>
              <van-icon name="arrow" color="#999" />
          </div>
          <div>
              <span>以旧换新</span>
              <van-icon name="arrow" color="#999" />
          </div>
          <div>
              <span>百城速达</span>
              <van-icon name="arrow" color="#999" />
          </div>
          <div>
              <span>联系客服</span>
              <van-icon name="arrow" color="#999" />
          </div>
          <div>
              <span>意见反馈</span>
              <van-icon name="arrow" color="#999" />
          </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    methods: {
        black(){
            this.$router.go(-1);
        },
        login(){
          this.$router.push('./login')
        }
    },
};
</script>

<style lang="scss" scoped>
.cell{  
    margin-top: 2vw;
        background-color: #fff;
    div{
        padding: 5vw;
        display: flex;
        justify-content: space-between;
        border-bottom: 1px solid #f1f3f7;
        span{
            color: #333;
            font-size: 4.2vw;
        }
    }
}
.center-cell-dz {
  margin-top: 2vw;
  img {
    width: 40%;
  }
  span {
    color: #666;
    margin-top: 1vw;
  }
}

.center-cell {
  margin-top: 1vw;
  .span {
    font-size: 4.2vw;
  }
  span {
    font-size: 3vw;
  }
}
.heard-cell {
  position: relative;
  .btn {
    position: absolute;
    left: 50%;
    top: 40%;
    transform: translate(-50%, -50%);
    img {
      width: 20vw;
      border-radius: 1.06944rem;
    }
  }
  p {
    font-size: 5vw;
    color: #fff;
    margin: 0;
    padding: 0;
    position: absolute;
    top: 80%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  .icon-left {
    position: absolute;
    z-index: 10;
    top: 5vw;
    left: 4vw;
  }
  .icon-right {
    position: absolute;
    z-index: 10;
    top: 5vw;
    right: 4vw;
  }
  img {
    width: 100%;
    z-index: -1;
  }
}
.bg {
  background-color: rgb(238, 238, 238);
}
</style>
