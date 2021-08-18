import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Search from "../components/Search.vue";
import Navbar from "../components/Navbar.vue";
import Buttom from "../components/Buttom.vue";
import Phone from "../components/Phone.vue";
import Index from "../components/Index.vue";
import Accessories from "../components/Accessories.vue";
import Me from "../components/Me.vue";
import Login from "../views/Login.vue";
import Logins from "../views/Logins.vue";
import Register from "../views/Register.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/register",
    component: Register,
  },
  {
    path: "/logins",
    component: Logins,
  },
  {
    path: "/login",
    component: Login,
  },
  {
    path: "/me",
    component: Me,
  },
  {
    path: "/accessories",
    component: Accessories,
  },
  {
    path: "/phone",
    component: Phone,
  },
  {
    path: "/",
    component: Index,
  },
  {
    path: "/buttom",
    component: Buttom,
  },
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
    path: "/home",
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
const routerRePush = VueRouter.prototype.push;
VueRouter.prototype.push = function(location) {
  return routerRePush.call(this, location).catch((error) => error);
};

export default router;
