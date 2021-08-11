<template>
  <div>
    <!-- 顶部导航栏 -->
    <van-nav-bar class="navbar">
      <template #left>
        <van-icon name="search" color="#aaa" size="25" />
      </template>
      <template #title>
        <img
          src="../assets/index/logo.png"
          style="margin-top: 5px"
          width="70px"
          height="45px"
          alt=""
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
        />
        <!-- <van-image width="30px" height="30px" src="../assets/index/购物车.svg" /> -->
      </template>
    </van-nav-bar>
    <!-- 导航标签页 -->
    <van-tabs
      color="#008cff"
      line-width="30px"
      line-height="2px"
      title-active-color="#008cff"
      title-inactive-color="#333"
    >
      <!-- 首页推荐页面 -->
      <van-tab title="推荐" style="margin-top: 10px" v-if="index_swipe">
        <!-- 轮播图 -->
        <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
          <van-swipe-item v-for="(item, index) in index_swipe" :key="index">
            <img class="index_swipe" :src="urls + item.image" alt="" />
          </van-swipe-item>
        </van-swipe>
        <!-- 轮播图下面三个小图标 -->
        <van-row class="title_imgs" type="flex" justify="space-around">
          <van-col span="7"
            ><img
              src="../assets/index/99f49dfe-25c2-485a-b7b3-8b63d6487b46.png"
              alt=""
            /><span>魅族官方提供</span></van-col
          >
          <van-col span="6"
            ><img
              src="../assets/index/8f1252b1-3fb2-48e2-b992-1f38a9745314.png"
              alt=""
            /><span>满80免运费</span>
          </van-col>
          <van-col span="7"
            ><img
              src="../assets/index/3924a1e1-5b4a-41de-9e79-ee904ec69d90.png"
              alt=""
            /><span>7天无理由退货</span>
          </van-col>
        </van-row>
        <!-- 轮播图下面四个商品信息 -->
        <div class="fore-cell">
          <van-grid
            :clickable="true"
            :border="false"
            :column-num="4"
            class="fore-cell-ll"
          >
            <van-grid-item>
              <img src="../assets/index/11.jpg" alt="" />
              <span>清新暑期</span>
            </van-grid-item>
            <van-grid-item>
              <img src="../assets/index/22.png" />
              <span>魅族 18</span>
            </van-grid-item>
            <van-grid-item>
              <img src="../assets/index/33.png" />
              <span>18 Pro</span>
            </van-grid-item>
            <van-grid-item>
              <img src="../assets/index/44.jpg" />
              <span>以旧换新</span>
            </van-grid-item>
          </van-grid>
        </div>
        <!-- 首屏推荐 -->
        <van-row type="flex" class="index-banner">
          <van-col span="12"
            ><img src="../assets/index/18Pro.jpg" alt=""
          /></van-col>
          <van-col span="12">
            <img src="../assets/index/18.jpg" alt="" />
            <img src="../assets/index/watch.jpg" alt="" />
          </van-col>
        </van-row>
        <!-- 智能手机 -->
        <van-tabs class="h3-cell" color="#008cff">
          <van-tab>
            <template #title> <h3 style="color: #000">智能手机</h3></template>
          </van-tab>
        </van-tabs>
        <van-image
          style="display: block"
          width="100%"
          :src="require('../assets/index/phone.jpg')"
        />
        <van-grid :column-num="2" class="phone-cell-img">
          <van-grid-item
            v-for="(item, index) in phone.slice(0, 6)"
            :key="index"
          >
            <img :src="urls + item.phone_title" alt="" />
            <h4>{{ item.name }} {{ item.color }}</h4>
            <div>{{ item.price_title }}{{ item.title }}</div>
            <p>￥{{ item.price }}</p>
          </van-grid-item>
        </van-grid>

        <!--  -->
      </van-tab>

      <van-tab v-for="(item, index) in laptop" :key="index" :title="item.fname"
        >123132</van-tab
      >
    </van-tabs>
  </div>
</template>
<script>
export default {
  data() {
    return {
      laptop: "",
      index_swipe: "",
      phone: "",
      urls: "http://127.0.0.1:3000/",
    };
  },
  mounted() {
    // 请求导航标签栏接口
    this.axios.get("/laptop_family").then((result) => {
      // console.log(result);
      this.laptop = result.data.res;
      // console.log(this.laptop);
    });
    // 请求首页轮播图接口
    this.axios.get("/index_swipe").then((result) => {
      console.log(result);
      this.index_swipe = result.data.res;
      // console.log(this.index_swipe);
    });
    //  请求所有手机商品
    this.axios.get("/phone").then((result) => {
      console.log(result);
      this.phone = result.data.res;
      console.log(this.phone);
    });
  },
};
</script>

<style scoped lang="scss" >
.phone-cell-img {
  img {
    width: 100%;
  }
  h4{
    color: #000;
    font-size: 4vw;
    margin:5px 0;
  }
  div {
    color: #999999;
    font-size: 3.5vw;
    width: 40%;
    display: inline-block;
    white-space: nowrap;
    width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  p{
    color: red;
    font-size: 4vw;
    margin:6px 0;
  }
}
.h3-cell {
  padding-top: 5vh;
  padding-bottom: 2vh;
}
.index-banner {
  padding-top: 1.5vh;
  background-color: rgb(247, 247, 247);
  img {
    width: 100%;
    display: block;
  }
}
// .fore-cell {
//   padding-bottom: 1.5vh;
// }
.fore-cell-ll {
  img {
    width: 13vw;
  }
  span {
    font-size: 3.5vw;
  }
}
.title_imgs {
  background-color: rgb(247, 247, 247);
  img {
    // height: 3vh;
    width: 3.5vw;
    margin-right: 1vw;
  }
  span {
    font-size: 3.5vw;
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
