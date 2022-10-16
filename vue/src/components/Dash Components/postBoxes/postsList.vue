<template>
      <div class = "postList">
        <div>
            <table class="postsTable" >
                <thead>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Categories</th>
                    <th>Date</th>
                </thead>
                <tr :key="postsList.postID" v-for="postsList in articleList">
                    <td><div class="firstCol"> <div class="pdata">{{postsList.postTitle}}</div> <div class="submenu"><a href="/">Edit</a> <router-link :to="{ name: 'postPage', query: { postID: postsList.postID }}">View</router-link> <a href="/">Trash</a></div></div></td>
                    <td><div class="pdata">{{postsList.postAuthor}}</div> </td>
                    <td><div class="pdata">{{postsList.postCateg}}</div> </td>
                    <td><div class="pdata">{{postsList.postDate}}</div> </td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
export default {
    name: "postsList",
    props:{
        articleList:Array,
    },data(){
        return{
            postID:0,
        }
    },
}
</script>

<style scoped>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #c3c4c7;
}
thead{
    border: 1px solid #c3c4c7;
}

td, th {
  text-align: left;
  padding: 1%;
}

tr:nth-child(even) {
  background-color: #f6f7f7;
}
.firstCol{
    display: flex;
    flex-direction: column;
}
.pdata{
    margin-bottom: 2%;
}
</style>