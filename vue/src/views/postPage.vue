<template>
    <div class="content">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />                   
        <div class ="contentBox">
            <h1>Lorem Ipsum</h1>
            <p>Author: {{firstName}} {{lastName}}</p>
            <p>{{bodyText1}}</p>
            <center><img id="postPIc" v-bind:src="bodyPic"/></center>
            <p>{{bodyText2}}</p>
            <!-- <paragraphsContainer :paragraphs="paragraphs"/> -->
        </div>
        <div class="sidebar">
            <div class="searchBox">
                <input type="text" class="searchTerm" placeholder="Search?"/>
                <button type="submit" class="searchButton">        
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <h2>Recent Posts</h2>
            <ul>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
                <li><a href="/">Lorem Ipsum Dolor Sit Amet</a></li>
            </ul>
        </div>
    </div>
</template>
<script>
    // import paragraphsContainer from '@/components/paragraphsContainer.vue'
    export default {
    name: "postPage",
    container: {
        // paragraphsContainer
    },
    data() {
        return {
            bodyText1: "default intro",
            bodyText2: "default body",
            bodyPic:"default Pic",
            firstName: "default fname",
            lastName: "default lname",
            paragraphs:[]
        };
    },
    methods: {
        async getUser() {
            const res = await fetch("https://randomuser.me/api");
            const { results } = await res.json();
            // console.log(results);
            this.firstName = results[0].name.first;
            this.lastName = results[0].name.last;
        },
        async getBody() {
            const res = await fetch("https://baconipsum.com/api/?type=meat-and-filler&paras=1");
            const results = await res.json();
            this.bodyText1 = results.toString();

            const res1 = await fetch("https://baconipsum.com/api/?type=meat-and-filler&paras=4");
            const results1 = await res1.json();
            this.bodyText2 = results1.toString();

            this.paragraphs= results;

            const respic = await fetch('https://picsum.photos/850/566');
            this.bodyPic = respic.url;
            console.log(respic);
            
            // const res =  await fetch('http://asdfast.beobit.net/api/?length=3')
            // const  {results}  = await res.json()
            //  this.paragraphs= results.text;
            // this.bodyText=results.text
            // console.log(res);
            // console.log(results);
        }
    },
    created: function () {
        this.getUser(),
        this.getBody()
        // this.paragraphs =[
        //     {
        //         id:1,
        //         text: "yoyo"
        //     },
        //     {
        //         id:2,
        //         text:"boomboom"
        //     }
        // ]
    }
}
</script>
<style scoped>
    .content{
        display: flex;
        flex-direction: row;
        text-align: left;
        margin:0% 10% 10% 10%;
        /* border: 2px solid lawngreen; */
        font-family: "Segoe UI";
    }
    .content *{
        /* border: 2px solid hotpink; */
    }
    .contentBox{
        width: 90%;
        padding: 2%;
    }
    .sidebar{
        width: 30%; 
        padding: 2%;
    }
    .sidebar *{
        padding-top: 5%;
    }
    ul{
        margin:0%;
        padding:0%;
        list-style: none;
    }
    li ,p{
        line-height: 2;
        font-size: 20px;
        padding-top: 15px;
    }
    a{
        text-decoration: none;
        color: black;
    }
    li:hover{
        background-color: rgba(0, 0, 0, 0.1);
    }
    h1{
        font-size: 72px;
        font-weight: 100;
    }
    h2{
        font-size: 50px;
        font-weight: 100;
    }
    .sidebar > ul> li{
        font-size: 23px;
    }

    .searchBox{
        margin-top: 20%;
        width: 100%;
        position: relative;
        display: flex;
    }
    .searchTerm{
        width: 100%
    }
    .searchButton {
        width: 15%;
        height: 30%;
        border: 1px solid black;
        background: black;
        text-align: center;
        color: #fff;
        border-radius: 0 5px 5px 0;
        cursor: pointer;
        font-size: 20px;
    }
</style>