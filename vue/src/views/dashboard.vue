@<template>
  <div class="dashHead">
    <dashhead/>
    <div class="dashBody">
      <dashside/>
      <dashPostBox/>
    </div>
  </div>
</template>

<script>
  import dashhead from '@/components/Dash Components/dashhead.vue'
  import dashside from '@/components/Dash Components/dashside.vue'
  import dashPostBox from '@/components/Dash Components/dashPostBox.vue'
  export default {
    name: "dashBoard",
    components:{
      dashhead,
      dashside,
      dashPostBox,
    }
}
</script>

<style scoped>
  .dashHead{
    display: flex;
    flex-direction: column;
  }
  .dashBody{
    display: flex;
    flex-wrap: wrap;
  }

</style>