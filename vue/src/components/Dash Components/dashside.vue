<template>
  <div class="dashSide">
    <div class ="sidebar">
        <ul>
            <li>Dashboard</li>
            <li><router-link to="/dashPost">Posts</router-link></li>
            <li>Media</li>
            <li>Users</li>
        </ul>
    </div>
    <!-- <router-view/> -->
  </div>
</template>

<script>
export default {
    name: "dashSide"
}
</script>
<style scoped>
    .dashSide{
        background-color: #f6f7f7;
        display: flex;
        width: 10%;
        min-height: calc(100vh - 68px);
        text-align: left;
    }
    ul{
        list-style: none;
    }
    li{
        margin-bottom: 10%;
    }
    .sidebar{
        margin-left: -15%;
        position: sticky;
        top:6%;
        /* background-color: #f6f7f7; */
        height: 10%;
    }
</style>