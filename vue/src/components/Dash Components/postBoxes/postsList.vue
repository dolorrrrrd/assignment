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
                <tr :key="postTitle.postID" v-for="postTitle in articleList">
                    <td><div class="firstCol"> <div class="pdata">{{postTitle.postTitle}}</div> <div class="submenu"><a href="/">Edit</a> <a href="/">View</a> <a href="/">Trash</a></div></div></td>
                    <td><div class="pdata">{{postTitle.postAuthor}}</div> </td>
                    <td><div class="pdata">{{postTitle.postCateg}}</div> </td>
                    <td><div class="pdata">{{postTitle.postDate}}</div> </td>
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
            
        }
    }

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