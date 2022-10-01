<template>
    <div class ="aboutUs">
        <div class = "banner">
          <div id="overlayer"></div>
          <img id ="aboutusbannner" src="../assets/homebanner.png">
          <h1 id="bannerTitle"> Lorem Ipsum</h1>
        </div>
        <div class="contentBody">
          <div id="contentbox">
            <p id ="content">{{bodyText}}</p>
            <!-- <button @click="getBody()">Get Random Content</button> -->
          </div>
          <div id="picturebox">
            <p><img id="personpic" v-bind:src="picture" :alt="`${firstName} ${lastName}`" :class="gender"/></p>
            <h2>{{firstName}} {{lastName}}</h2>
            <p>{{email}}</p>
            <!-- <button @click="getUser()">Get Random User</button> -->
          </div>
        </div>
    </div>
</template>

<script>
export default {
    name:'AboutUs',
    props: {
    msg: String
  }
  ,data(){
    return{
        bodyText: 'default body',
        firstName: 'default fname',
        lastName: 'default lname',
        email: 'default email',
        gender: 'default gender',
        picture: 'default pic',
    }
  },
    methods: {
      async getUser() {
        const res = await fetch('https://randomuser.me/api')
        const { results } = await res.json()
        console.log(results)
        this.firstName = results[0].name.first
        this.lastName = results[0].name.last
        this.email = results[0].email
        this.gender = results[0].gender
        this.picture = results[0].picture.large
      },
      async getBody() {
        const res =  await fetch('https://baconipsum.com/api/?type=meat-and-filler&paras=5')
        const  results  = await res.json()
        this.bodyText=results.toString();
        // console.log(res);

        // const res =  await fetch('http://asdfast.beobit.net/api/')
        // const  results  = await res.json()
        // this.bodyText=results.text
        // console.log(res);

      },
    },
      created: function(){
        this.getUser(),
        this.getBody()
      }
}
</script>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Asap&display=swap');

  h1,p{
    font-family: "Segoe UI";
  }
  p{
    font-size: 20px;
    color: #4B4F58;
    line-height: 1.6;
    word-wrap:break-word;
    /* font-family: "Segoe UI"; */
  }

  .banner{
    display:flex;
    width: 100%;
    height: 400px;
    position: relative;
    margin-bottom: 5%;
    /* border: 2px solid hotpink; */
  }
  .banner *{
    position:absolute;
    height: 400px;
    width: 100%;
    margin:0 auto;
    text-align: center;
  }
  #aboutusbannner{
    object-fit: cover;
    object-position: 50% 30%;
  }
  #overlayer{
    background-color: rgba(0, 0, 0, 0.5);
    top: 0;
    left: 0;
    width: 100%;
    height: 400px;
    z-index: 1;
  }
  .banner >h1{
    z-index: 2;
    left: 50%;
    top: 30%;
    transform: translate(-50%,30%);
    height: auto;
    color: white;
    font-size: 72px;
    font-weight: 700;
    text-shadow: rgb(0 0 0) 2px 2px 2px;
    /* font-family: 'Asap', sans-serif; */
    /* border: 2px solid hotpink; */
  }
  .contentBody{
    text-align: left;
    position: relative;
    display: grid;
    grid-template-columns: 65% 35%;
    width: 90%;
    margin: auto;
    margin-bottom: 10%;
    /* border: 2px solid hotpink; */
  }
  .contentBody *{
    padding: 1%;
    /* border: 2px solid rebeccapurple; */
  }
  button{
    width: 30%;
    /* -webkit-clip-path: polygon(25% 25%, 75% 25%, 100% 50%, 75% 75%, 25% 75%, 0% 50%); */
    /* clip-path: polygon(25% 0, 75% 0, 100% 50%, 75% 100%, 25% 100%, 0% 50%); */
  }
  #personpic{
    width: 70%;
    margin-left: auto;
    margin-right: auto;
    overflow: hidden;
    border-radius: 50%;
    /* -webkit-clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%); */
  /* clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%); */
      /* border: 2px solid rebeccapurple; */
  }
  .female{
    background-color: hotpink;
  }
  .male{
    background-color: navy;
  }


</style>