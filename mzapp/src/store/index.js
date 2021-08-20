import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    phone:'11111111111'
  },
  mutations: {
    setPhone(state,phone){
      state.phone=phone;
    }
  },
  actions: {
  },
  modules: {
  }
})
