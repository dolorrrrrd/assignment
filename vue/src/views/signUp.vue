@<template>
    <div class="signup">
        <div class="main">
            <p class="sign">Sign Up</p>
            <form class="form1">
                <input class="un " type="text" placeholder="Username">
                <input class="pass" type="password" placeholder="Enter Password">
                <input class="pass" type="password" placeholder="Repeat Password">
                <button>Register</button>
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
        border: 1px solid hotpink;
    }
    .signup{
        width: 30%;
        margin: 5% auto 5% auto;
        display: flex;
        flex-direction: column;
        background-color: black;
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
        color: white;
    }
    .main{
        padding: 5%;
    }
    button{
        margin: auto;
        width: 50%;
    }
    input{
        background-color: gray;
    }
</style>