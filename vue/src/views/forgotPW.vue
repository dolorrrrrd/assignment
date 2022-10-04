@<template>
    <div class="signup">
        <div class="main">
            <p class="sign">Forgot PW</p>
            <form class="form1">
                <input class="un " type="text" placeholder="Enter Username">
                <input class="pass" type="password" placeholder="Enter New Password">
                <input class="pass" type="password" placeholder="Repeat Password">
                <button>Change Password</button>
                <p class="forgot"><router-link to="/loginPage">Sign-in</router-link></p>
                <router-view/>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    name: "signUp"
}
</script>

<style>
    .signup *{
        /* border: 1px solid hotpink; */
        color: white;
    }
    .signup{
        display: flex;
        height: 81.2vh;
    }
    .main{
        width: 20%;
        border-radius: 20%;
        background-color: #232323;
        padding: 2% 0% 2% 0%;
        margin: auto;
        position: relative;
        /* top: 15%; */
    }
    form{
        display: flex;
        flex-direction: column;
        width: 80%;
        margin: auto;
    }
    form *{
        padding: 2%;
        margin: 2%;
    }
    ::placeholder {
        text-align: center; 
        color: rgb(255, 255, 255);
    }
    button{
        margin: auto;
        width: 50%;
        cursor: pointer;
        background-color: #40b681;
    }
    input{
        background-color: #c3cdcd70;
        cursor: text;
    }
</style>