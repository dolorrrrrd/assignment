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
  
  <style>
    .dash{
        display: flex;
        background-color: aquamarine;
        justify-content: space-between;
    }
    .dashHeader{
        background-color: hotpink;
        display: flex;
        width: 10%;
        margin-left: 1%;
        justify-content: center;
        align-items: center;
        justify-content: space-around;
    }
    .dashR{
        background-color: hotpink;
        display: flex;
        width: 10%;
        margin-right: 1%;
        justify-content: space-around;
        align-items: center;
    }
    img{
        width: auto;
        max-height: 30px;
    }
  </style>