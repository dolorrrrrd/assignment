<template>
  <div class="postsBox">
    <h2>Post Lists</h2>
    <postsList :articleList="articleList"/>
  </div>
</template>

<script>
import axios from "axios"
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
    mounted: function(){
        this.getPosts();
    },
    methods:{
        async getPosts(){
            await axios.get('http://repo/assignment/vue/src/php/toDB.php?action=showPosts').then(
            res=>{
                if(res){
                    this.articleList = Object.entries(res.data.posts).map((arr) =>({
                        postID:arr[1].pid,
                        postTitle:arr[1].title,
                        postAuthor:arr[1].fname +" "+arr[1].lname,
                        postCateg:arr[1].category,
                        postDate:arr[1].date
                    })
                    );
                    console.log("success");
                }else{
                    console.log(res);
                    console.log("postbox load Failed");
                }
            }).catch(
                error=>{
                    console.log(error);
                });
        }
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