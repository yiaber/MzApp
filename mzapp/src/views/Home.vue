<template>
  <div>
    <!-- 导航栏 -->
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
    <van-tabs>
      <van-tab title="标签 1">内容 1</van-tab>
      <van-tab title="标签 2">内容 2</van-tab>
      <van-tab title="标签 3">内容 3</van-tab>
      <van-tab title="标签 4">内容 4</van-tab>
    </van-tabs>
  </div>
</template>
<script>
export default {
  data() {
    return {
      laptop: {},
    };
  },
  mounted() {
    this.axios.get("/laptop_family").then((result) => {
      console.log(res);
      this.laptop = result.data.result;
    });
  },
};
</script>

<style scoped lang="scss">
.navbar-img {
  margin-right: 20px;
}
.navbar-imgs {
  margin-right: 20px;
}
</style>
