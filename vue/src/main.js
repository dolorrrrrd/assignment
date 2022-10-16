import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import mitt from 'mitt';
const emitter = mitt();
const app = createApp(App).use(router);
app.config.globalProperties.emitter = emitter;
app.mount('#app');

// import Vue from 'vue'
// const app = Vue.createApp({
//     data() {
//       return {
//         firstName: 'John',
//         lastName: 'Doe',
//         email: 'john@gmail.com',
//         gender: 'male',
//         picture: 'https://randomuser.me/api/portraits/men/10.jpg',
//       }
//     }
//   })

//   app.mount('#app')
  