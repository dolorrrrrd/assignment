<template>
  <div>
    <h1>yo {{postID}}</h1>
  </div>
</template>

<script>
export default {
    name: 'testPage',
    data(){
        return{
            postID:0,
        }
    },
    created(){
        // this.postID = this.$route.params.postID;
        this.postID = this.$route.query.postID;
    }

}
</script>

<style>

</style>