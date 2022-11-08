<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref, onMounted } from 'vue'
const props = defineProps(['url'])
async function makeRequest(url) {
  try {
    const response = await fetch(url, {mode: 'no-cors'});

    return response.status;

  } catch (err) {
    return err;
  }
}
const d = makeRequest(props.url)
const status = ref(d)
</script>
<template>
<a style="color: green;" v-if="status == 200">&#183;</a>
<a v-else style="color: red;">&#183;</a>

</template>



