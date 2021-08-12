<template >
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
        />
        <!-- <van-image width="30px" height="30px" src="../assets/index/购物车.svg" /> -->
      </template>
    </van-nav-bar>
  </div>
</template>
<script>
export default {
  methods: {
    onClickLeft() {
      this.$router.push("/search");
    },
    home(){
        this.$router.push("/")
    },
  },
};
</script>
<style lang="scss" scoped>
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