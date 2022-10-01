<template>
    <div :key ="p.index" v-for="p in paragraphs">    
    <p>{{p.text}}</p>
    </div>
</template>
<script>
    export default {
        name: "paragraphsContainer",
        props: {
            paragraphs: Array
        }
    }
</script>
<style scoped>
</style>