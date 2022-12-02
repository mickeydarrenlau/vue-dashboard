<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="style" href="/src/style.css" />
<script setup>
import { ref, inject } from 'vue'
import uptime from "./uptime_component.vue"
const items = inject('list_items')
const noti = ref([])
// Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('d617bc28d908c6454cbb', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('services');
    channel.bind('notification', function(data) {
      noti.value.push(JSON.stringify(data));
    });
</script>

<template>
	  <div v-for="(item) in items">
	  <div>
      <div v-if="item.url1 && item.name1 && item.image1" id="box" style="display: table-cell;" ><a :href="item.url1"><div class="box"><img :src="item.image1" alt="" height="70" width="70"/><div class="txt">{{ item.name1 }} <br> <uptime :url="item.urls1"></uptime> </div></div></a></div>
       <div v-if="item.url2 && item.name2 && item.image2" id="box" style="display: table-cell;" ><a :href="item.url2"><div class="box"><img :src="item.image2" alt="" height="70" width="70"/><div class="txt">{{ item.name2 }} <br> <uptime :url="item.urls2"></uptime></div></div></a></div>
        <div v-if="item.url3 && item.name3 && item.image3" id="box" style="display: table-cell;" ><a :href="item.url3"><div class="box"><img :src="item.image3" alt="" height="70" width="70"/><div class="txt">{{ item.name3 }} <br> <uptime :url="item.urls3"></uptime></div></div></a></div>
         <div v-if="item.url4 && item.name4 && item.image4" id="box" style="display: table-cell;" ><a :href="item.url4"><div class="box"><img :src="item.image4" alt="" height="70" width="70"/><div class="txt">{{ item.name4 }} <br> <uptime :url="item.urls4"></uptime></div></div></a></div>
          <div v-if="item.url5 && item.name5 && item.image5" id="box" style="display: table-cell;" ><a :href="item.url5"><div class="box"><img :src="item.image5" alt="" height="70" width="70"/><div class="txt">{{ item.name5 }} <br> <uptime :url="item.urls5"></uptime></div></div></a></div>
          </div>
	  </div>
        <div class="txt">Notifications</div>
        <div v-for="(c) in noti">
          <div  id="box" style="display: table-cell;" ><div class="box"><img :src="c.image" alt="" height="70" width="70"/><div class="txt"> {{ c.message }} </div></div></div>
        </div>

</template>
