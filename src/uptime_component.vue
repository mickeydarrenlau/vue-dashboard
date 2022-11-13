<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref } from 'vue'
window.se = undefined
let status = ref(window.se)
const props = defineProps(['url'])
setInterval(function() {
function makeRequest(url) {
  fetch("https://api.codetabs.com/v1/proxy?quest=" + url).then(ss => {
      window.sl = ss.status

  })
  return window.sl
  
}

window.se = makeRequest(props.url)
status.value = window.se
},2000)
</script>
<template>
<span style="color: green; font-size: 15px;" v-if="status == '200'">&#11044;  </span>
<span v-else style="color: red; font-size: 15px;">&#11044;  </span>
<div class="text" style="font-size: 15px; display: inline-block;">{{ status }}</div>
</template>