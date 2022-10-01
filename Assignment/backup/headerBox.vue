<template>
<nav class="menu-container">

  <!-- logo -->
  <a href="#" class="menu-logo">
    <img src="../assets/logo.png" alt="" id = "siteLogo">
  </a>

  <!-- menu items -->
  <div class="menu">
    <ul>
      <li><a href="./mainHome.vue">Home</a></li>
      <li><a href="./postPage.vue">Posts</a></li>
      <li><a href="./AboutUs.vue">About Us</a></li>
    </ul>
    <ul>
      <li><a href="#signup">Sign-up</a></li>    
      <li><a href="#login">Login</a></li>
    </ul>
  </div>
</nav>
</template>
<script>
export default {
    name: "headerBox",
    props: {
        msg: String
    }
}
</script>
<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Asap&display=swap');
    .menu-container {
    display: flex;
    align-items: center;
    background: #232323;
    color: #cdcdcd;
    padding: 20px;
    z-index: 1;
    box-sizing: border-box;
    }
    .menu-logo img {
        margin: 0 20px;
        max-height: 40px;
        max-width: 100px;
    }
    .menu-container a {
    text-decoration: none;
    color: #232323;
    transition: color 0.3s ease;
    }
    .menu-container a:hover {
    color: rgb(65, 184, 131);
    }
    .menu ul {
    list-style: none;
    }
    .menu li {
    padding: 10px 0;
    font-size: 22px;
    }
    /* mobile styles */
    @media only screen and (max-width: 767px) { 
        .menu-container {
            flex-direction: column;
            align-items: flex-end;
        }
        
        .menu-logo {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
        }

        .menu-logo img {
            max-height: 30px;
        }
        .menu {
            position: absolute;
            box-sizing: border-box;
            width: 300px;
            right: -300px;
            top: 0;
            margin: -20px;
            padding: 75px 50px 50px;
            background: #cdcdcd;
            -webkit-font-smoothing: antialiased;
            transform-origin: 0% 0%;
            transform: translateX(0%);
            transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0);
        }
    }
    /* desktop styles */
    @media only screen and (min-width: 768px) { 
        .menu-container a {
            color: #cdcdcd;
        }
        .menu {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }
        .menu ul {
            display: flex;
            padding: 0;
        }
        .menu li {
            padding: 0 20px;
        }
    }
</style>