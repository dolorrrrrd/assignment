<template>
    <div class ="contentBox">
        <div :key="content.postID" v-for="content in postContents">
            <h1>{{content.postTitle}}</h1>
            <p>{{content.postCateg}} / Author: {{content.postAuthor}}</p>
            <img id="postPIc" v-bind:src="content.postPic"/>
            <p>{{content.content}}</p>
        </div>

        <commentBox class="cBox"/>
    </div>
</template>
<script>    
import commentBox from '@/components/Post Components/commentBox.vue';
    export default {
        name: "paragraphsContainer",
        components: {
            commentBox ,
        },props:{
            postContents:Array,
        }
}
</script>
<style scoped>
    .contentBox{
        font-family: "Segoe UI";
        width: 90%;
        padding: 2%;
    }
    p{
        line-height: 2;
        font-size: 20px;
        padding-top: 15px;
    }
    h1{
        font-size: 72px;
        font-weight: 100;
    }
    #postPIc{
        width: 100%;
        height: auto;
    }
</style>