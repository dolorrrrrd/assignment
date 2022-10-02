<template>
    <div class = "footer">
        <footer>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </footer>
    </div> 
</template>

<script>
export default {
    name: "footerBar",
}
</script>

<style scoped>
  @import url('https://fonts.googleapis.com/css2?family=Asap&display=swap');
    footer{
        display: flex;
        background-color:#232323;
        color:#cdcdcd;
        padding: 5px;
        font-family: 'Asap', sans-serif;
        font-size: 25px;
    }
    p{
        margin-left: auto;
        margin-right: auto;
    }
</style>