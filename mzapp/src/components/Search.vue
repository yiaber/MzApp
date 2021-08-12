<template>
  <div>
    <div class="search-cell">
      <van-search
        class="search-cell-right"
        v-model="value"
        placeholder="请输入商品名称"
        shape="round"
        clearable
        show-action
        action
        action-text="搜索"
      >
        <template #left>
          <van-icon name="arrow-left" color="#666" size="25" @click="black"/>
        </template>
      </van-search>
    </div>
    <div class="bg-green-600"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: "",
    };
  },
  methods:{
      black(){
          this.$router.push('/')
      },
  }
};
</script>
<style lang="scss" scoped>
// .search-cell {
//   // position: relative;
//   .search-cell-left {
//     left: 1vw;
//     top: 2vh;
//     // position: absolute;
//   }
//   .search-cell.right {
//     float: right;
//     width: 2vw;
//     //  position: absolute;
//   }
// }
</style>