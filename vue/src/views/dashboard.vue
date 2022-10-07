@<template>
  <div>
    <dashhead/>
    <dashside/>
  </div>
</template>

<script>
  import dashhead from '@/components/Dash Components/dashhead.vue'
  import dashside from '@/components/Dash Components/dashside.vue'
export default {
  name: "dashBoard",
  components:{
    dashhead,
    dashside,
  }
}
</script>

<style>

</style>