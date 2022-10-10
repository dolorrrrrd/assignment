<template>
  <div class="postsBox">
    <h2>Post Lists</h2>
    <postsList :articleList="articleList"/>
  </div>
</template>

<script>
    import postsList from '@/components/Dash Components/postBoxes/postsList.vue'
export default {
    name: "postsBox",
    components:{
        postsList
    },    
    data(){
        return{
            articleList :[]
        }
    },
    created (){
        this.articleList = [
        {
                postID:1,
                postTitle: "Lorem 1",
                postAuthor: "Auth 1",
                postCateg: "Categ1",
                postDate: "10/8/2022"
            },
            {
                postID:2,
                postTitle: "Lorem 2",
                postAuthor: "Auth 2",
                postCateg: "Categ2",
                postDate: "10/8/2022"
            },
            {
                postID:3,
                postTitle: "Lorem 3",
                postAuthor: "Auth 3",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:4,
                postTitle: "Lorem 4",
                postAuthor: "Auth 4",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:5,
                postTitle: "Lorem 5",
                postAuthor: "Auth 5",
                postCateg: "Categ5",
                postDate: "10/8/2022"
            },            {
                postID:1,
                postTitle: "Lorem 1",
                postAuthor: "Auth 1",
                postCateg: "Categ1",
                postDate: "10/8/2022"
            },
            {
                postID:2,
                postTitle: "Lorem 2",
                postAuthor: "Auth 2",
                postCateg: "Categ2",
                postDate: "10/8/2022"
            },
            {
                postID:3,
                postTitle: "Lorem 3",
                postAuthor: "Auth 3",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:4,
                postTitle: "Lorem 4",
                postAuthor: "Auth 4",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:5,
                postTitle: "Lorem 5",
                postAuthor: "Auth 5",
                postCateg: "Categ5",
                postDate: "10/8/2022"
            },            {
                postID:1,
                postTitle: "Lorem 1",
                postAuthor: "Auth 1",
                postCateg: "Categ1",
                postDate: "10/8/2022"
            },
            {
                postID:2,
                postTitle: "Lorem 2",
                postAuthor: "Auth 2",
                postCateg: "Categ2",
                postDate: "10/8/2022"
            },
            {
                postID:3,
                postTitle: "Lorem 3",
                postAuthor: "Auth 3",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:4,
                postTitle: "Lorem 4",
                postAuthor: "Auth 4",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:5,
                postTitle: "Lorem 5",
                postAuthor: "Auth 5",
                postCateg: "Categ5",
                postDate: "10/8/2022"
            },            {
                postID:1,
                postTitle: "Lorem 1",
                postAuthor: "Auth 1",
                postCateg: "Categ1",
                postDate: "10/8/2022"
            },
            {
                postID:2,
                postTitle: "Lorem 2",
                postAuthor: "Auth 2",
                postCateg: "Categ2",
                postDate: "10/8/2022"
            },
            {
                postID:3,
                postTitle: "Lorem 3",
                postAuthor: "Auth 3",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:4,
                postTitle: "Lorem 4",
                postAuthor: "Auth 4",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:5,
                postTitle: "Lorem 5",
                postAuthor: "Auth 5",
                postCateg: "Categ5",
                postDate: "10/8/2022"
            },            {
                postID:1,
                postTitle: "Lorem 1",
                postAuthor: "Auth 1",
                postCateg: "Categ1",
                postDate: "10/8/2022"
            },
            {
                postID:2,
                postTitle: "Lorem 2",
                postAuthor: "Auth 2",
                postCateg: "Categ2",
                postDate: "10/8/2022"
            },
            {
                postID:3,
                postTitle: "Lorem 3",
                postAuthor: "Auth 3",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:4,
                postTitle: "Lorem 4",
                postAuthor: "Auth 4",
                postCateg: "Categ4",
                postDate: "10/8/2022"
            },
            {
                postID:5,
                postTitle: "Lorem 5",
                postAuthor: "Auth 5",
                postCateg: "Categ5",
                postDate: "10/8/2022"
            },
        ]
    }
}
</script>

<style>
    ul{
        list-style: none;
    }
    .postsBox{
        background-color: white;
    }
</style>