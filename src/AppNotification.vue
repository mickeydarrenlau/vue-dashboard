<script setup>
import { ref } from 'vue'
const noti = ref([])
// Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('d617bc28d908c6454cbb', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('services');
    channel.bind('notification', function(data) {
      noti.value.push(data);
    });
</script>

<template>
<div class="txt">Notifications</div>
        <div v-for="(c) in noti">
          <div  id="box" style="display: table-cell;" ><div class="box"><img :src="c.image" alt="" height="70" width="70"/><div class="txt"> {{ c.message }} </div></div></div>
        </div>
</template>
