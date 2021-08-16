<template>
  <div>
    <!-- 商品下面四个小图标 -->
    <div class="pic-cell">
      <van-grid
        :column-num="4"
        :gutter="5"
        :border="false"
        :clickable="true"
        :square="true"
      >
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
    <div class="btns">
      <div class="btn">
        <van-icon class="image" name="phone" size="5vw" color="white"></van-icon
        ><span>400-788-3333</span>
      </div>
      <div class="btn">
        <van-icon class="image" name="chat" size="5vw" color="white"></van-icon
        ><span>在线客服</span>
      </div>
    </div>
    <div class="pic">
      <div class="pic-left">
        <a href="http://www.miitbeian.gov.cn/" target="_blank"
          >粤ICP备13003602号-2</a
        ><a
          href="https://www3.res.meizu.com/static/cn/_partial/footer/images/icp2_fb8db74.jpg"
          target="_blank"
          >合字B2-20170010</a
        ><a
          href="http://www2.res.meizu.com/zh_cn/images/common/com_licence.jpg"
          target="_blank"
          >营业执照</a
        >©2018 Meizu
        <a
          href="http://www2.res.meizu.com/zh_cn/images/common/com_licence.jpg"
          target="_blank"
          >All rights reserved</a
        >
      </div>
      <div class="pic-right">
        <img src="../assets/index/gh.png" alt="" style="width: 20px" />
        <span>简体中文</span>
        <div class="sj"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>
<style scoped lang="scss">
.pic-cell {
  margin: 4vh;
  // padding-top: 3vh;
  // background-color: rgb(245,245,245);
  img {
    width: 100%;
  }
}
.pic {
  height: 5vh;
  // background-color: red;
  display: flex;
  justify-content: space-between;
  padding: 5vw 4vw 0 5vw;
  margin-bottom: 5vh;
  .pic-left {
    color: #999;
    width: 60%;
    font-size: 2.26852vw;
    line-height: 1.6;
    a {
      text-decoration: none;
      color: #999;
    }
  }
  .pic-right {
    width: 35%;
    span {
      min-width: 20vw;
      color: #3b3b4b;
      margin-left: 5px;
    }
    .sj {
      display: inline-block;
      border-width: 6px;
      border-style: solid;
      border-right-color: transparent;
      border-top-color: transparent;
      border-left-color: transparent;
      border-bottom-color: #cfcfcf;
    }
  }
}
.btns {
  margin-top: 5vw;
  display: flex;
  justify-content: space-around;
}
.btn {
  color: white;
  width: 40%;
  height: 10vw;
  background-color: #00b4ff;
  border-radius: 50px;
  text-align: center;
  font-size: 4.25926vw;
  .image {
    line-height: 10vw;
  }
  span {
    display: inline-block;
    height: 10vw;
    line-height: 7vw;
    vertical-align: middle;
  }
}
</style>
