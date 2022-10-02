@<template>
    <div>
        <form method="post" action="http://">
            <textarea name="comments" cols="30" rows="5" class="html-text-box">Comments here...</textarea><br><input type="submit" value="Submit" class="html-text-box"><input type="reset" value="Reset" class="html-text-box">
        </form>
    </div>

</template>

<script>
export default {
    name: "commentBox"
}
</script>

<style scoped>
    textarea.html-text-box {
        background-color:#ffffff;
        background-repeat:no-repeat;
        background-attachment:fixed;
        border-width:1;
        border-style:solid;
        border-color:#cccccc;
        font-family:Arial;
        font-size:14pt;color:#000000;
    }
    input.html-text-box {
        background-color:#ffffff;
        font-family:Arial;
        font-size:14pt;
        color:#000000;
        }
</style>