<template>
    <div class="contentBox">     
        <div class="content">
            <paragraphsContainer class="pcontainer" :postContents="postContents"/>
            <sidebar class="scontainer"/>
        </div>              
    </div>
</template>
<script>
import axios from "axios"
import paragraphsContainer from '../components/Post Components/paragraphsContainer.vue';
import sidebar from '../components/Post Components/sidebar.vue';
export default {
    name: "postPage",
    components: { 
        sidebar,
        paragraphsContainer,
    },        
    data() {
            return {
                postContents:[]
            };
        },
    mounted: function(){
        this.getPostContent();
    },
    methods:{
        async getPostContent(){
            const postContent = new FormData();
            postContent.append('postID',this.$route.query.postID);     
            await axios.post('http://repo/assignment/vue/src/php/toDB.php?action=getPostContent',postContent).then(
            res=>{
                if(res){
                    this.postContents = Object.entries(res.data.posts).map((arr) =>({
                        postID:arr[1].pid,
                        postTitle:arr[1].title,
                        postAuthor:arr[1].fname +" "+arr[1].lname,
                        postCateg:arr[1].category,
                        postDate:arr[1].date,
                        content:arr[1].content,
                        postPic:arr[1].picURL
                    })
                    );
                    console.log("Success");
                }else{
                    console.log(res);
                    console.log("failed");
                }
            }).catch(
                error=>{
                    console.log(error);
                });
        }
    } 
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