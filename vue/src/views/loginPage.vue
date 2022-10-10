<template>
    <div class="login">
        <div class="main">
            <p class="sign">Log in</p>
            <form class="form1" @submit.prevent="onSignIn()" action="login"  method="POST">
                <input class="username " type="text" placeholder="Username" v-model="username">
                <input class="password" type="text" placeholder="Password" v-model="password">
                <Button >Sign in</Button>
                <router-link to="/signUp">Register</router-link>
                <router-link to="/forgotPW">Forgot your password?</router-link>
                <router-view/>
            </form>
        </div>
    </div>
</template>

<script>
/* eslint-disable */
import axios from "axios";
export default {
  name: "loginPage",
  data(){
        return{
            username:'',
            password:'',
        }

    },
    methods:{
        async onSignIn(){
            const data = new FormData();
            data.append('username',this.username);
            data.append('password',this.password);
            const response = await axios.post('http://repo/assignment/vue/src/php/toDB.php?action=login',data).then(
                res=>{
                    if(res.data){
                        console.log(res);
                        console.log("sux");
                        this.$router.push('/dashboard');
                    }else{
                        console.log(res);
                        console.log("ff");
                        alert("Invalid")
                    }
                }
            ).catch(
                error=>{
                    console.log(error);
                }
            );
        }
    }
}
</script>

<style scoped>
    .login *{
        /* border: 1px solid hotpink; */
        color: white;
    }
    .login{
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