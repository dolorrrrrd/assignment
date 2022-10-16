import { createRouter, createWebHistory } from 'vue-router'
const routes = [
  {
    path: '/',
    name: 'mainHome',
    component: () => import(/* webpackChunkName: "about" */ '../views/mainHome.vue')
  },
  {
    path: '/AboutUs',
    name: 'AboutUs',
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutUs.vue')
  },
  {
    path: '/postPage',
    name: 'postPage',
    component: () => import(/* webpackChunkName: "about" */ '../views/postPage.vue')
  },
  {
    path: '/loginPage',
    name: 'loginPage',
    component: () => import(/* webpackChunkName: "about" */ '../views/loginPage.vue')
  },
  {
    path: '/signUp',
    name: 'signUp',
    component: () => import(/* webpackChunkName: "about" */ '../views/signUp.vue')
  },
  {
    path: '/forgotPW',
    name: 'forgotPW',
    component: () => import(/* webpackChunkName: "about" */ '../views/forgotPW.vue')
  },
  {
    path: '/dashboard',
    name: 'dashboard',
    component: () => import(/* webpackChunkName: "about" */ '../views/dashboard.vue')
  },
  {
    path: '/dashPost',
    name: 'dashPost',
    component: () => import(/* webpackChunkName: "about" */ '../views/dashPost.vue')
  },
  {
    path: '/postEditor',
    name: 'postEditor',
    component: () => import(/* webpackChunkName: "about" */ '../views/postEditor.vue')
  },
  {
    path: '/testPage',
    name: 'testPage',
    component: () => import(/* webpackChunkName: "about" */ '../views/testPage.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
