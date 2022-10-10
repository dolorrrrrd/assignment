<template>
    <div class="dashBox">
        <div class="mainDash">
            <h1>Dashboards</h1>
            <postsBox/>
        </div>
    </div>
</template>

<script>
    import postsBox from '@/components/Dash Components/postBoxes/postsBox.vue'
    export default {
        name:"dashPostBox",
        components:{
            postsBox,
        }
}
</script>

<style scoped>
    .dashBox{
        /* display: flex;
        flex-direction: column;
        min-height: calc(100vh - 68px); */
        background-color: #f6f7f7;
        width: 90%;
        text-align: left;
    }
    .mainDash{
        padding: 3%;
    }
</style>