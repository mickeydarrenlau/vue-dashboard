<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref } from 'vue'
const noti = ref([])

    var pusher = new Pusher('d617bc28d908c6454cbb', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('services');
    channel.bind('notification', function(data) {
      if(len(data.message) > 21) {
         data.message = "Message too long"
      }
      noti.value = [data].concat(noti.value);
    });
</script>

<template>
<div class="txt">Notifications</div>
        <div v-for="(c) in noti">
          <div height="200" width="200" id="box" style="display: table-cell;" ><div class="box"><img :src="c.image" alt="" height="70" width="70"/> <br> <div height="80" width="80" class="txt"> {{ c.message }} </div> </div></div>
          <br>
        </div>
</template>
