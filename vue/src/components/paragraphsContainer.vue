<template>
    <div class ="contentBox">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <h1>Lorem Ipsum OC</h1>
        <p>Author: {{firstName}} {{lastName}}</p>
        <p>{{bodyText1}}</p>
        <center><img id="postPIc" v-bind:src="bodyPic"/></center>
        <p>{{bodyText2}}</p>
        <commentBox class="cBox"/>
    </div>
</template>
<script>
    import commentBox from '../components/commentBox.vue';
    export default {
        name: "paragraphsContainer",
        components: {
            commentBox ,
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
    .contentBox{
        font-family: "Segoe UI";
        width: 90%;
        padding: 2%;
    }
    p{
        line-height: 2;
        font-size: 20px;
        padding-top: 15px;
    }
    h1{
        font-size: 72px;
        font-weight: 100;
    }
    #postPIc{
        width: 100%;
        height: auto;
    }
</style>