<template>
    <div class="postEditr">
        <QuillEditor :content = "content" theme="snow" toolbar="full" />
    </div>
  
</template>

<script>
    import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
export default {
    name: "postEditor",
    components:{
        QuillEditor
    }
}
</script>

<style>

</style>