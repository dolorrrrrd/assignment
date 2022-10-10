@<template>
    <div class="signup">
        <div class="main">
            <p class="sign">Sign Up</p>
            <form class="form1" @submit.prevent="onReg()" action="signUp" method ="POST">
                <input class="username" type="text" placeholder="Username" v-model="username"/>
                <input class="fname" type="text" placeholder="First Name" v-model="fname"/>
                <input class="lname" type="text" placeholder="Last Name" v-model="lname"/>
                <select v-model="acctype">
                    <option value="admin">Admin</option>
                    <option value="user">member</option>
                </select>
                <input class="password" type="password" placeholder="Enter Password" v-model="password"/>
                <input class="password" type="password" placeholder="Repeat Password" v-model="cpassword"/>
                <button>Register</button>
                <p class="forgot"><router-link to="/loginPage">Sign-in</router-link></p>
                <router-view/>
            </form>
        </div>
    </div>
</template>

<script>
import axios from "axios"
export default {
    name: "signUp",
    data(){
        return{
            username:null,
            fname:null,
            lname:null,
            acctype:null,
            password:null,
            cpassword:null
        }

    },
    methods:{
        async onReg(){
            if(this.password == this.cpassword){
                const data = new FormData();
                data.append('username',this.username);
                data.append('fname',this.fname);
                data.append('lname',this.lname);
                data.append('password',this.password);
                data.append('acctype',this.acctype);
                await axios.post('http://repo/assignment/vue/src/php/toDB.php?action=signUp',data).then(
                res=>{
                    if(res.data){
                        console.log(res);
                        console.log("sux");
                        this.$router.push('/login');
                    }else{
                        console.log(res);
                        console.log("ff");
                        alert("Username Taken")
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
    select,option{
        background-color: #c3cdcd70;
        cursor: pointer;
        color:black;
    }
</style>