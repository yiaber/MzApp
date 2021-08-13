<template >
  <div>
    <!-- 顶部搜索框 -->
    <navbar></navbar>
    <!-- 搜索结果显示区域 -->
    <div class="search-serp">
      <p>搜索结果 > {{ value }}</p>
    </div>
    <!-- 搜索结果卡片显示区 -->
    <div class="grid-cell" v-if="data">
      <van-grid :column-num="2" clickable :gutter="3" style="padding: 0">
        <van-grid-item v-for="(item, index) in data" :key="index">
          <img :src="urls + item.title_img" alt="" />
          <h4>{{ item.name }}</h4>
          <div>{{ item.price_title }}{{ item.title }}</div>
          <p>￥{{ item.price }}</p>
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 商品下面四个小图标 -->
    <div class="pic-cell">
      <van-grid :column-num="4" :gutter="5" :border="false" :clickable="true" :square="true">
        <van-grid-item>
          <img
            src="../assets/search/237d883a-d669-4231-b645-d0363ac3f1df.jpg"
            alt=""
          />
        </van-grid-item>
        <van-grid-item>
          <img
            src="../assets/search/44d9807b-1240-4637-aaef-43e1f6742f81.jpg"
            alt=""
          />
        </van-grid-item>
        <van-grid-item>
          <img
            src="../assets/search/518fc8a2-c14d-488c-9ada-b757bbd71c08.jpg"
            alt=""
          />
        </van-grid-item>
        <van-grid-item>
          <img
            src="../assets/search/61250d46-6eb9-4846-99ce-6d65778a84a2.jpg"
            alt=""
          />
        </van-grid-item>
      </van-grid>
    </div>
  </div>
</template>
<script>
import navbar from "../components/Navbar.vue";
export default {
  components: { navbar },
  props: ["value"],
  data() {
    return {
      data: "",
      urls: "http://127.0.0.1:3000/",
    };
  },
  mounted() {
    this.axios
      .get("/search", { params: { fname: this.value } })
      .then((result) => {
        console.log(result);
        this.data = result.data;

        // console.log(this.data);
      });
  },
};
</script>
<style lang="scss" scoped>
.pic-cell{
    margin: 4vh;
    // padding-top: 3vh;
    // background-color: rgb(245,245,245);
    img{
        width: 100%;
    }
}
.search-serp {
  font-weight: 500;
  color: #333;
  width: 100%;
  height: 15vw;
  background-color: rgb(245, 245, 245);
  line-height: 15vw;
  p {
    padding-left: 5vw;
    margin: 0;
    font-size: 4.5vw;
  }
}
.grid-cell {
  background-color: rgb(245, 245, 245);
  width: 100%;
  padding-bottom: 5vh;
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
    text-align: center;
  }
  div {
    overflow: hidden; //超出隐藏
    text-overflow: ellipsis; //显示省略号
    white-space: nowrap; //强制不换行
    width: 100%;
    color: #999;
    font-size: 3.5vw;
  }
  p {
    color: red;
    font-size: 4vw;
    margin: 5px 0;
  }
}
</style>