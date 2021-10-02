<template>
  <div>
    <navbar></navbar>
    <van-tabs
      color="#008cff"
      line-width="30px"
      line-height="2px"
      title-active-color="#008cff"
      title-inactive-color="#333"
      v-model="active"
    >
      <!-- 首页推荐页面 -->
      <van-tab title="推荐" style="margin-top: 10px" v-if="index_swipe">
        <!-- 轮播图 -->
      </van-tab>

      <van-tab v-for="(item, index) in laptop" :key="index" :title="item.fname">
      </van-tab>
    </van-tabs>
    <!-- 顶部导航栏 -->
    <!-- <van-nav-bar class="navbar">
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
      </template>
    </van-nav-bar> -->
    <!-- 导航标签页 -->
    <slot />
    <buttom></buttom>
  </div>
</template>
<script>
import navbar from "../components/Navbar.vue";
import buttom from "../components/Buttom.vue";
export default {
  components: { navbar, buttom },
  data() {
    return {
      active: 0,
      laptop: "", // 商品分类
      index_swipe: "", //首页轮播图
      phone: "", // 所有手机
      accessories: "", // 所有手机配件
      urls: "http://127.0.0.1:3000/",
    };
  },
  methods: {},
  mounted() {
    // 请求导航标签栏接口
    this.axios.get("/laptop_family").then((result) => {
      // console.log(result);
      this.laptop = result.data.res;
      // console.log(this.laptop);
    });
    // 请求首页轮播图接口
    this.axios.get("/index_swipe").then((result) => {
      // console.log(result);
      this.index_swipe = result.data.res;
      // console.log(this.index_swipe);
    });
    //  请求所有手机商品
    this.axios.get("/phone").then((result) => {
      // console.log(result);
      this.phone = result.data.res;
      // console.log(this.phone);
    });
    // 请求所有手机配件信息
    this.axios.get("/accessories").then((result) => {
      // console.log(result);
      this.accessories = result.data.res;
      // console.log(this.accessories);
    });

    switch (this.$route.path) {
      case "/":
        this.active = 0;
        return;
      case "/phone":
        this.active = 1;
        return;
      case "/accessories":
        this.active = 4;
    }
  },
  watch: {
    active(newVal, oldVal) {
      switch (newVal) {
        case 0:
          this.$router.push("/");
          break;
        case 1:
          this.$router.push("/phone");
          break;
        case 4:
          this.$router.push("/accessories");
          return;
      }
    },
  },
};
</script>

<style scoped lang="scss">
.accessories-cell-r {
  display: flex;
  // height: 50vh;

  div:last-child {
    width: 50%;
    img {
      width: 100%;
    }
  }
  div:first-child {
    width: 50%;
    // height: 50%;
    background-color: rgb(85, 195, 195);
    // padding: 3vw;
    position: relative;
    h4 {
      padding: 3vw;
      color: white;
      width: 70%;
      margin: 0;
      margin-bottom: 2vh;
      font-weight: 300;
      font-size: 4.5vw;
      overflow: hidden;
      position: relative;
      text-overflow: -o-ellipsis-lastline;
      overflow: hidden;
      text-overflow: ellipsis;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
    }
    span {
      font-size: 3.33333vw;
      color: hsla(0, 0%, 100%, 0.7);
      position: relative;
      line-height: 1.2;
      padding: 0 3vw;
      position: absolute;
    }
    p {
      position: absolute;
      line-height: 1.2;
      padding: 1.2vw 0;
      margin: 0;
      left: 3.88889vw;
      bottom: 6vw;
      color: hsla(0, 0%, 100%, 0.7);
      font-size: 4.62963vw;
    }
  }
}
.accessories-cell {
  display: flex;
  // height: 50vh;
  div:first-child {
    width: 50%;
    img {
      width: 100%;
    }
  }
  div:last-child {
    width: 50%;
    // height: 50%;
    background-color: rgb(255, 174, 69);
    position: relative;
    h4 {
      padding: 3vw;
      color: white;
      width: 70%;
      margin: 0;
      margin-bottom: 2vh;
      font-weight: 300;
      font-size: 4.5vw;
      overflow: hidden;
      position: relative;
      text-overflow: -o-ellipsis-lastline;
      overflow: hidden;
      text-overflow: ellipsis;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
    }
    span {
      // padding: 3vw;
      font-size: 3.33333vw;
      color: hsla(0, 0%, 100%, 0.7);
      position: relative;
      line-height: 1.2;
      padding: 0 3vw;
      position: absolute;
      display: block;
    }
    p {
      // padding: 3vw;
      position: absolute;
      line-height: 1.2;
      padding: 1.2vw 0;
      margin: 0;
      left: 3.88889vw;
      bottom: 6vw;
      color: hsla(0, 0%, 100%, 0.7);
      font-size: 4.62963vw;
    }
  }
}
.phone-cell-img {
  background-color: rgb(247, 247, 247);
  padding: 10px;
  img {
    width: 100%;
  }
  h4 {
    width: 40vw;
    overflow: hidden; //超出隐藏
    text-overflow: ellipsis; //显示省略号
    white-space: nowrap; //强制不换行
    color: #000;
    font-size: 4vw;
    margin: 1vh 0;
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
  p {
    color: red;
    font-size: 4vw;
    margin: 6px 0;
  }
}
.h3-cell {
  padding-top: 5vh;
  padding-bottom: 2vh;
  h3 {
    font-size: 5vw;
  }
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
