@<template>
    <div class = "postList">
        <div :key="postTitle.postID" v-for="postTitle in articleList">
            <ul>
                <li>{{postTitle.postTitle + " OC"}}</li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    name: "articleList",
    props:{
        articleList: Array
    }
}
</script>

<style>
    ul{
        margin:0%;
        padding:0%;
        list-style: none;
    }
    a{
        text-decoration: none;
        color: black;
    }
    li:hover{
        background-color: rgba(0, 0, 0, 0.1);
    }
    li{
        line-height: 2;
        font-size: 20px;
        padding-top: 15px;
    }
    ul> li{
        font-size: 23px;
    }
</style>