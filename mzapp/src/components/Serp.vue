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
    <!-- 底部标签栏 -->
    <bottom></bottom>

  </div>
</template>
<script>
import navbar from "../components/Navbar.vue";
import bottom from "../components/Buttom.vue"
export default {
  components: { navbar,bottom },
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