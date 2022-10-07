<template>
    <div class="contentBox">     
        <div class="content">
            <paragraphsContainer class="pcontainer"/>
            <sidebar class="scontainer"/>
        </div>              
    </div>
</template>
<script>
    import paragraphsContainer from '../components/Post Components/paragraphsContainer.vue';
    import sidebar from '../components/Post Components/sidebar.vue';
    export default {
    name: "postPage",
    components: { 
        sidebar,
        paragraphsContainer,
    },
}
</script>
<style scoped>
    .contentBox{
        display: flex;
        flex-direction: column;
        width:90%;
        margin: auto;
        padding-bottom: 2%;
    }
    .content{
        display: flex;
        flex-direction: row;
        text-align: left;
        /* margin:0% 10% 10% 10%; */
        /* border: 2px solid lawngreen; */
    }
    .content *{
        /* border: 2px solid hotpink; */
    }
    .pcontainer{
        width:75%;
    }
    .scontainer{
        width:25%;
    }
    .content{
        display: flex;
    }
</style>