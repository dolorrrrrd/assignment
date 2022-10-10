@<template>
    <div class="forgotPW">
        <div class="main">
            <p class="sign">Forgot PW</p>
            <form class="form1" @submit.prevent="onForgotPW()" action="forgotPW" method="POST">
                <input class="un " type="text" placeholder="Enter Username" v-model="username">
                <input class="pass" type="password" placeholder="Enter New Password" v-model="password">
                <input class="pass" type="password" placeholder="Repeat Password" v-model="cpassword">
                <button>Change Password</button>
                <p class="forgot"><router-link to="/loginPage">Sign-in</router-link></p>
                <router-view/>
            </form>
        </div>
    </div>
</template>

<script>
import axios from "axios"
export default {
    name: "forgotPW",
    data(){
        return{
            username:null,
            password:null,
            cpassword:null
        }

    },
    methods:{
        async onForgotPW(){
            if(this.password == this.cpassword){
                const data = new FormData();
                data.append('username',this.username);
                data.append('password',this.password);
                await axios.post('http://repo/assignment/vue/src/php/toDB.php?action=forgotPW',data).then(
                res=>{
                    if(res.data){
                        console.log(res);
                        console.log("sux");
                        alert("Password Changed Successfully!");
                        this.$router.push('/login');
                    }else{
                        console.log(res);
                        console.log("ff");
                        alert("Username Taken");
                    }
                }).catch(
                    error=>{
                        console.log(error);
                    });
                }else{
                    alert("Passwords Do not match!")
                }
            }
    }
}
</script>

<style>
    .forgotPW *{
        /* border: 1px solid hotpink; */
        color: white;
    }
    .forgotPW{
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