import { createRouter, createWebHistory } from 'vue-router'
// import mainHome from '../views/mainHome.vue'

const routes = [
  {
    path: '/',
    name: 'mainHome',
    // redirect: '/',
    // component: mainHome
    component: () => import(/* webpackChunkName: "about" */ '../views/mainHome.vue')
  },
  {
    path: '/AboutUs',
    name: 'AboutUs',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutUs.vue')
  },
  {
    path: '/postPage',
    name: 'postPage',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/postPage.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
