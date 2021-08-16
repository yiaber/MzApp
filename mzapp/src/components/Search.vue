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
        @change="onSearch()"
      >
        <template #left>
          <van-icon name="arrow-left" color="#666" size="25" @click="black" />
        </template>
      </van-search>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: "",
      arr:[]
    };
  },
  methods: {
    black() {
      this.$router.go(-1);
    },
    onSearch() {
      console.log(this.value);
      this.$router.push(`/serp/${this.value}`);
      var keys = sessionStorage.getItem('key')
      if(keys){
        keys = JSON.parse(keys)
        keys.push(this.value)
      }else{
        keys = [this.value]
      }
  console.log(keys)
      sessionStorage.setItem('key',JSON.stringify(keys))
    },

  },
  mounted () {
    // sessionStorage.setItem('q','qweqwe')
    console.log(sessionStorage.getItem('key'))
    this.arr =JSON.parse(sessionStorage.getItem('key'))
    console.log(this.arr)
  },
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