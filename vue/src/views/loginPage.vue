@<template>
    <div class="login">
        <div class="main">
            <p class="sign">Log in</p>
            <form class="form1">
                <input class="un " type="text" placeholder="Username">
                <input class="pass" type="password" placeholder="Password">
                <Button>Sign in</Button>
                <router-link to="/signUp">Register</router-link>
                <router-link to="/forgotPW">Forgot your password?</router-link>
                <router-view/>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    name: "loginPage",
}

</script>

<style scoped>
    .login *{
        /* border: 1px solid hotpink; */
    }
    .login{
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