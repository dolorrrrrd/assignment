@<template>
    <div class="dash">
      <div class="dashHeader">
        <img src="../../assets/logo.png"/>
        <p>dashboard</p>
      </div>
      <div class="dashR">
        <p>Hi Rey</p>
        <img src="../../assets/loggedin.png"/>
      </div>
    </div>
  </template>
  
  <script>
  export default {
      name:"dashHead"
  }
  </script>
  
  <style scoped>
    .dash{
        display: flex;
        background-color: #f6f7f7;
        justify-content: space-between;
        position: sticky;
        top:0;
    }
    .dashHeader{
        background-color: #f6f7f7;
        display: flex;
        width: 10%;
        align-items: center;
        justify-content: space-around;
    }
    .dashR{
        background-color: #f6f7f7;
        display: flex;
        width: 10%;
        justify-content: space-around;
        align-items: center;
    }
    img{
        width: auto;
        max-height: 30px;
    }
  </style>