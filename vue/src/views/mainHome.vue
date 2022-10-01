<template>
    <div class = "mainHome">
        <div id="overlayer"></div>
        <h1>Lorem Ipsum</h1>
    </div> 
</template>
<script>
    export default {
        name: "postPage",
        props: {
            msg: String
        }
    }
</script>
<style scoped>
    .mainHome{
        display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgba(0, 0, 0, 0.8);
    /* background-image: url("../assets/homebanner.png"); */
    height: 850px;
    animation: myAnim 1s ease 0s 1 normal forwards;

    }
    h1{
        margin-top: 10%;
        color:white
    }
    #overlayer{
        /* background-color: black; */
    }
    @keyframes myAnim {
	0% {
		transform: scaleY(0.4);
		transform-origin: 100% 0%;
	}

	100% {
		transform: scaleY(1);
		transform-origin: 100% 0%;
	}
}
</style>