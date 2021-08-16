<template>
  <div>
    <van-nav-bar class="navbar">
      <template #left>
        <van-icon name="search" color="#aaa" size="25" @click="onClickLeft()" />
      </template>
      <template #title>
        <img
          src="../assets/index/logo.png"
          style="margin-top: 5px"
          width="70px"
          height="45px"
          alt=""
          @click="home"
        />
      </template>
      <template #right>
        <img
          class="navbar-img"
          src="../assets/index/购物车.svg"
          width="18.05rpx"
          height="18.05rpx"
          alt=""
        />
        <img
          class="navbar-imgs"
          src="../assets/index/更多.svg"
          width="15.05rpx"
          height="15.05rpx"
          alt=""
          @click="showPopup"
        />
        <!-- <van-image width="30px" height="30px" src="../assets/index/购物车.svg" /> -->
      </template>
    </van-nav-bar>
    <!-- 弹出更多菜单 -->
    <van-popup v-model="show" position="top" :style="{ height: '100%' }">
      <!-- 顶部 -->
      <div class="navbar-title">
        <div>
          <router-link to="/">魅族官网</router-link>
        </div>
        <van-icon
          @click="close"
          class="close"
          name="cross"
          color="#999"
          size="5vw"
        />
      </div>
      <!-- 个人基本功能 -->
      <van-grid class="grid-cell" clickable :border="false" :column="4">
        <van-grid-item>
          <img src="../assets/index/15569c6b-5e3f-41da-8dbf-edfd557191fb.png" alt="">
          <span>个人中心</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/00963788-63ab-4dfc-8722-b59d4096c437.png" alt="">
          <span>我的订单</span></span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/6c017770-c969-472b-a9b5-47eca996be65.png" alt="">
          <span>我的红包</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/b39b0e5a-f912-4733-a98d-3acdf4a83940.png" alt="">
          <span>我的优惠券</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/0e40e9a3-6ad7-4d24-80ee-c5677ea5c48e.png" alt="">
          <span>我的地址</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/68cb6912-a7a1-482e-b8cf-76960b2dc368.png" alt="">
          <span>我的收藏</span>
        </van-grid-item>
      </van-grid>
      <!-- 官方服务 -->
      <van-grid class="grid-cell center" clickable :border="false" :column="4">
        <van-grid-item>
          <img src="../assets/index/ec8cb46d-5340-428a-b9bc-3893f4749d80.png" alt="">
          <span>产品</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/0ba8483f-464e-4500-879a-66c834b62128.png" alt="">
          <span>Flyme</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/9ef59a5f-aa24-46a7-9443-275347f42773.png" alt="">
          <span>云服务</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/deff1f64-aeff-4b1a-a321-e54626c25d7d.png" alt="">
          <span>专卖店</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/7a170057-4036-4088-bda3-c0cfbfe70c03.png" alt="">
          <span>服务支持</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/2b57d6ff-3f1d-4907-8e6a-8aab99c89b8b.png" alt="">
          <span>社区</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/6d9b6d21-a84f-439b-a995-b86bbe2aba4d.png" alt="">
          <span>App下载</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/16aa51a5-2585-4f3e-b936-93204b021b8b.png" alt="">
          <span>企业服务</span>
        </van-grid-item>
      </van-grid>
      <!-- 热门产品 -->
      <van-grid class="grid-cell bottom" clickable :border="false" :column="4">
        <van-grid-item>
          <img src="../assets/index/ffc920fe-1b84-4533-9707-a09ae22493bb.png" alt="">
          <span>魅族18系列</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/ae710a72-b259-4010-9d8d-4d35685691a6.jpg" alt="">
          <span>魅族17系列</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/bd43b2ba-d2d8-4946-a8a5-38d5aa7e16ac.jpg" alt="">
          <span>以旧换新</span>
        </van-grid-item>
        <van-grid-item>
          <img src="../assets/index/98055a85-393c-4138-8cad-9353b7a6edce.png" alt="">
          <span>M码通道</span>
        </van-grid-item>
      </van-grid>

    </van-popup>
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false, //点击关闭弹出层
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/search");
    },
    home() {
      this.$router.push("/");
    },
    showPopup() {
      this.show = true;
    },
    close() {
      this.show = false;
    },
  },
};
</script>
<style lang="scss" scoped>
.grid-cell{
  font-size: 2.96296vw;
  color: #000;
  img{
    width: 11vw;
    height: 11vw;
  }
}
.center{
  background-color: rgb(250,250,250);
  img{
        width: 7vw;
    height: 7vw;
  }
}
.bottom{
      padding: 7vw 1vw 0;
  img{
    width: 13.05556vw;
    height: 13.05556vw;
  }
}
.navbar-title {
  width: 100%;
  height: 20vw;
  // background-color: red;
  position: relative;
  div {
    line-height: 20vw;
    text-align: center;
    a {
      color: #000;
      font-size: 4.16667vw;
      font-weight: 600;
    }
  }
  .close  {
    line-height: 20vw;
    position: absolute;
    right: 4vh;
    top: 0vw;
  }
}
.navbar-img {
  margin-right: 20px;
}
.navbar-imgs {
  margin-right: 20px;
}
.index_swipe {
  width: 100%;
}
</style>
