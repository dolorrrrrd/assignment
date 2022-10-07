<template>
  <!-- <headerBox/> -->
  <dashboard/>
  <!-- <footerBar/> -->
</template>
<script>
  // import headerBox from './components/Main Components/headerBox.vue'
  // import footerBar from './components//Main Components/footerBar.vue'
  import dashboard from './views/dashboard.vue'
  export default {
      name: "postPage",
      props: {
          msg: String
      },
      components:{
          // headerBox,
          // footerBar,
          dashboard
      }
  }
</script>
<style>
  body{
    margin:0;
  }
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
