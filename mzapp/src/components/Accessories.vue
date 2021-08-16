<template>
  <div>
    <home>
      <template>
        <div>
          <van-image
            style="display:block"
            width="100%"
            :src="require('../assets/index/pj.jpg')"
          />
          <van-grid
            :column-num="2"
            clickable
            :gutter="5"
            class="phone-cell-img"
          >
            <van-grid-item
              v-for="(item, index) in accessories"
              :key="index"
            >
              <img :src="urls + item.title_img" alt="" />
              <h4>{{ item.name }} {{ item.color }}</h4>
              <div>{{ item.price_title }}{{ item.title }}</div>
              <p>￥{{ item.price }}</p>
            </van-grid-item>
          </van-grid>
        </div>
      </template>
    </home>
  </div>
</template>

<script>
export default {
  data() {
    return {
      accessories: "", // 所有手机
      urls: "http://127.0.0.1:3000/",
    };
  },
  mounted() {
    this.axios.get("/accessories").then((result) => {
      this.accessories = result.data.res;
    });
  },
};
</script>

<style lang="scss" scoped>
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
</style>
