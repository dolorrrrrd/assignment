<template>
        <div class="sidebar">
            <div class="searchBox">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
                <input type="text" class="searchTerm" placeholder="Search?"/>
                <button type="submit" class="searchButton">        
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <h2>Recent Posts OC</h2>
            <articleList :articleList="articleList"/>
        </div>
</template>
<script>
    import articleList from './articleList.vue';
    export default {
    name: "sideBar",
    components: { articleList },    
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
            },
            {
                postID:2,
                postTitle: "Lorem 2",
            },
            {
                postID:3,
                postTitle: "Lorem 3",
            },
            {
                postID:4,
                postTitle: "Lorem 4",
            },
            {
                postID:5,
                postTitle: "Lorem 5",
            },
        ]
    }
}
</script>
<style scoped>
    h2{
        font-size: 50px;
        font-weight: 100;
    }
    .sidebar{
        display: flex;
        flex-direction: column;
        width: 100%; 
        padding: 2%;
    }
    .sidebar *{
        padding: 2%;
    }
    .searchBox{
        margin-top: 20%;
        width: 100%;
        position: relative;
        display: flex;
    }
    .searchTerm{
        width: 100%
    }
    .searchButton {
        width: 20%;
        height: 100%;
        background: black;
        color: #fff;
        cursor: pointer;
        font-size: 20px;
    }
</style>