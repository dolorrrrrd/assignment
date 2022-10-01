<template>
    <div class = 'footer'>
        <footer>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </footer>
    </div> 
</template>

<script>
export default {
    name: "footerBar",
    props: {
        msg: String
    }
}
</script>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Asap&display=swap');
    footer{
        background-color:#232323;
        color:#cdcdcd;
        padding: 5px;
        text-align: center;
        font-family: 'Asap', sans-serif;
        font-size: 25px;
        margin-top: 0%;
    }
</style>