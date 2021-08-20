<template>
  <home>
    <template>
      <div>
        <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
          <van-swipe-item v-for="(item, index) in index_swipe" :key="index">
            <img class="index_swipe" :src="urls + item.image" alt="" />
          </van-swipe-item>
        </van-swipe>
         <!-- <van-empty image="search" description="描述文字" /> -->
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
        <van-grid :column-num="2" clickable :gutter="5" class="phone-cell-img">
          <van-grid-item
            v-for="(item, index) in phone.slice(0, 6)"
            :key="index"
          >
            <img :src="urls + item.title_img" alt="" />
            <h4>{{ item.name }} {{ item.color }}</h4>
            <div>{{ item.price_title }}{{ item.title }}</div>
            <p>￥{{ item.price }}</p>
          </van-grid-item>
        </van-grid>
        <!-- 手机配件 -->
        <div v-if="accessories">
          <van-tabs class="h3-cell" color="#7143FF">
            <van-tab>
              <template #title> <h3 style="color: #000">智能配件</h3></template>
            </van-tab>
          </van-tabs>
          <div class="accessories-cell">
            <div>
              <img :src="urls + accessories[9].title_img" alt="" />
            </div>
            <div>
              <h4>{{ accessories[9].name }}</h4>
              <span>{{ accessories[9].title }}</span>
              <p>￥{{ accessories[9].price }}</p>
            </div>
          </div>
          <div class="accessories-cell-r">
            <div>
              <h4>{{ accessories[10].name }}</h4>
              <span>{{ accessories[10].title }}</span>
              <p>￥{{ accessories[10].price }}</p>
            </div>
            <div>
              <img :src="urls + accessories[10].title_img" alt="" />
            </div>
          </div>
          <van-grid
            :column-num="2"
            clickable
            :gutter="5"
            class="phone-cell-img"
          >
            <van-grid-item
              v-for="(item, index) in accessories.slice(0, 6)"
              :key="index"
            >
              <img :src="urls + item.title_img" alt="" />
              <h4>{{ item.name }}</h4>
              <div>{{ item.price_title }}{{ item.title }}</div>
              <p>￥{{ item.price }}</p>
            </van-grid-item>
          </van-grid>
        </div>
        <!--  -->
      </div>
    </template>
  </home>
</template>

<script>
export default {
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
  methods: {
    getData(){
          // 请求首页轮播图接口
    this.axios.get("/index_swipe").then((result) => {
      // console.log(result);
      this.index_swipe = result.data.res;
      // console.log(this.index_swipe);
    });
    }
  },
  mounted() {
    // // 请求导航标签栏接口
    // this.axios.get("/laptop_family").then((result) => {
    //   // console.log(result);
    //   this.laptop = result.data.res;
    //   // console.log(this.laptop);
    // });
    this.getData()
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
      console.log(this.accessories);
    });
  },
  watch: {
    active(newVal, oldVal) {
      console.log(newVal);
      switch (newVal) {
        case 0:
          this.$router.push("/");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
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
