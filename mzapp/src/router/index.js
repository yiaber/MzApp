import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Search from "../components/Search.vue";
import Navbar from "../components/Navbar.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/serp/:value",
    name: "Serp",
    component: () =>
      import(
        /* webpackChunkName:"Serp" */
        "../components/Serp.vue"
      ),
    props: true,
  },
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/search",
    name: "Search",
    component: Search,
  },
  {
    path: "/navbar",
    component: Navbar,
  },
];

const router = new VueRouter({
  mode: "hash",
  base: process.env.BASE_URL,
  routes,
});

export default router;
