<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref } from 'vue'
const noti = ref([])
const notin = ref(0)

    var pusher = new Pusher('d617bc28d908c6454cbb', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('services');
    channel.bind('notification', function(data) {
      let real = data.message
      if(data.message.length > 21) {
         data.message = "Message too long"
      }
      notin.value = notin.value + 1
      noti.value = [Object.assign({"id": notin.value, "real": real, "command": "alert(" + real + ")"}, data)].concat(noti.value);
    });
</script>

<template>
<div class="txt">Notifications</div>
        <div v-for="(c) in noti">
          <div :onclick="c.command" height="200" width="200" id="box" style="display: table-cell;" ><div class="box"><img :src="c.image" alt="" height="70" width="70"/> <br> <div height="80" width="80" class="txt"> {{ c.message }} </div> </div></div>
          <br>
        </div>
</template>
