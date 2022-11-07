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
const d = await makeRequest(props.url)
alert(d)
const status = ref(d)
</script>
<template>
<span style="color: DarkGreen;" v-if="status == 200">&#183;</span>
<span style="color: DarkRed;" v-else>&#183;</span>

</template>



